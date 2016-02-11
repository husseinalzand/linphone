/* UIHistoryCell.h
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

#import <UIKit/UIKit.h>

#import "UITransparentTVCell.h"
#include "linphone/linphonecore.h"

@interface UIHistoryCell : UITransparentTVCell {
    @private
    NSDateFormatter *dateFormatter;
}


@property (nonatomic, assign) LinphoneCallLog *callLog;

@property (strong, nonatomic) IBOutlet UILabel *callTime;
@property (nonatomic, strong) IBOutlet UIImageView* imageView;
@property (nonatomic, strong) IBOutlet UILabel*     addressLabel;
@property (nonatomic, strong) IBOutlet UIButton*    detailsButton;
@property (nonatomic, strong) IBOutlet UIButton*    deleteButton;

- (id)initWithIdentifier:(NSString*)identifier;

- (IBAction)onDetails:(id) event;
- (IBAction)onDelete:(id) event;

@end
