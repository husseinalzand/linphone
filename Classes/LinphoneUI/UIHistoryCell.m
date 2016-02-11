/* UIHistoryCell.m
 *
 * Copyright (C) 2012  Belledonne Comunications, Grenoble, France
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Library General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */

#import "UIHistoryCell.h"
#import "LinphoneManager.h"
#import "PhoneMainView.h"
#import "Utils.h"

@implementation UIHistoryCell

@synthesize callLog;
@synthesize addressLabel;
@synthesize imageView;
@synthesize deleteButton;
@synthesize detailsButton;
@synthesize callTime;

#pragma mark - Lifecycle Functions


- (id)initWithIdentifier:(NSString *)identifier {
	if ((self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier]) != nil) {
		NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"UIHistoryCell" owner:self options:nil];

		if ([arrayOfViews count] >= 1) {
			[self.contentView addSubview:[arrayOfViews objectAtIndex:0]];
		}

		self->callLog = NULL;
	}
    dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSLocale *locale = [NSLocale currentLocale];
    [dateFormatter setLocale:locale];
	return self;
}

#pragma mark - Action Functions

- (void)setCallLog:(LinphoneCallLog *)acallLog {
	callLog = acallLog;
	[self update];
}

#pragma mark - Action Functions

- (IBAction)onDetails:(id)event {
	if (callLog != NULL && linphone_call_log_get_call_id(callLog) != NULL) {
		// Go to History details view
		HistoryDetailsViewController *controller = DYNAMIC_CAST(
			[[PhoneMainView instance] changeCurrentView:[HistoryDetailsViewController compositeViewDescription]
												   push:TRUE],
			HistoryDetailsViewController);
		if (controller != nil) {
			[controller setCallLogId:[NSString stringWithUTF8String:linphone_call_log_get_call_id(callLog)]];
		}
	}
}

- (IBAction)onDelete:(id)event {
	if (callLog != NULL) {
		UIView *view = [self superview];
		// Find TableViewCell
		while (view != nil && ![view isKindOfClass:[UITableView class]])
			view = [view superview];
		if (view != nil) {
			UITableView *tableView = (UITableView *)view;
			NSIndexPath *indexPath = [tableView indexPathForCell:self];
			[[tableView dataSource] tableView:tableView
						   commitEditingStyle:UITableViewCellEditingStyleDelete
							forRowAtIndexPath:indexPath];
		}
	}
}

#pragma mark -

- (NSString *)accessibilityValue {
	// TODO: localize?
	BOOL incoming = linphone_call_log_get_dir(callLog) == LinphoneCallIncoming;
	BOOL missed = linphone_call_log_get_status(callLog) == LinphoneCallMissed;

	NSString *call_type = @"Outgoing";
	if (incoming) {
		call_type = missed ? @"Missed" : @"Incoming";
	}

	return [NSString stringWithFormat:@"%@ from %@", call_type, addressLabel.text];
}

- (void)update {
	if (callLog == NULL) {
		LOGW(@"Cannot update history cell: null callLog");
		return;
	}

	// Set up the cell...
	LinphoneAddress *addr;
	UIImage *image;
	if (linphone_call_log_get_dir(callLog) == LinphoneCallIncoming) {
		if (linphone_call_log_get_status(callLog) != LinphoneCallMissed) {
			image = [UIImage imageNamed:@"ic_call_incoming_holo_dark.png"];
		} else {
			image = [UIImage imageNamed:@"ic_call_missed_holo_dark.png"];
		}
		addr = linphone_call_log_get_from(callLog);
	} else {
		image = [UIImage imageNamed:@"ic_call_outgoing_holo_dark.png"];
		addr = linphone_call_log_get_to(callLog);
	}

	NSString *address = nil;
	if (addr != NULL) {
		BOOL useLinphoneAddress = true;
		// contact name
		char *lAddress = linphone_address_as_string_uri_only(addr);
		if (lAddress) {
			NSString *normalizedSipAddress = [FastAddressBook normalizeSipURI:[NSString stringWithUTF8String:lAddress]];
			ABRecordRef contact = [[[LinphoneManager instance] fastAddressBook] getContact:normalizedSipAddress];
			if (contact) {
				address = [FastAddressBook getContactDisplayName:contact];
				useLinphoneAddress = false;
			}
			ms_free(lAddress);
		}
		if (useLinphoneAddress) {
			const char *lDisplayName = linphone_address_get_display_name(addr);
			const char *lUserName = linphone_address_get_username(addr);
			if (lDisplayName)
				address = [NSString stringWithUTF8String:lDisplayName];
			else if (lUserName)
				address = [NSString stringWithUTF8String:lUserName];
		}
	}
	if (address == nil) {
		address = NSLocalizedString(@"Unknown", nil);
	}

	[addressLabel setText:address];
	[imageView setImage:image];
    NSDate *startData = [NSDate dateWithTimeIntervalSince1970:linphone_call_log_get_start_date(callLog)];
    [callTime setText:[dateFormatter stringFromDate:startData]];
}

- (void)setEditing:(BOOL)editing {
	[self setEditing:editing animated:FALSE];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
	if (animated) {
		[UIView beginAnimations:nil context:nil];
		[UIView setAnimationDuration:0.3];
	}
	if (editing) {
		[deleteButton setAlpha:1.0f];
		[detailsButton setAlpha:0.0f];
	} else {
		[detailsButton setAlpha:1.0f];
		[deleteButton setAlpha:0.0f];
	}
	if (animated) {
		[UIView commitAnimations];
	}
}

@end