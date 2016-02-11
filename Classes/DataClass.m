//
//  DataClass.m
//  linphone
//
//  Created by hussein alzand virtual on 27/01/16.
//
//

#import <Foundation/Foundation.h>
#import "DataClass.h"

@implementation DataClass : NSObject 
@synthesize str;
@synthesize allowOpenDoor;

static DataClass *instance = nil;

+(DataClass *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [DataClass new];
        }
    }
    return instance;
}
@end
