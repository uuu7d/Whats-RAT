#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface DevLandSettings : NSObject
+ (instancetype)shared;
@property (assign, nonatomic) BOOL fakeLocationEnabled;
@property (assign, nonatomic) CLLocationCoordinate2D customLocation;
@property (assign, nonatomic) BOOL chatsHidden;
@property (strong, nonatomic) NSString *currentFont;
@end
