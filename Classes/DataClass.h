//
//  DataClass.h
//  linphone
//
//  Created by hussein alzand virtual on 27/01/16.
//
//

@interface DataClass : NSObject {
    
    NSMutableString *str;
    bool allowOpenDoor;
}

@property(nonatomic,retain)NSString *str;
@property(nonatomic)bool allowOpenDoor;
+(DataClass*)getInstance;
@end