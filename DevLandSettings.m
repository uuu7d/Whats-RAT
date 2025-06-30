#import "DevLandSettings.h"

@implementation DevLandSettings

+ (instancetype)shared {
    static DevLandSettings *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

- (instancetype)init {
    if (self = [super init]) {
        _fakeLocationEnabled = YES;
        _customLocation = CLLocationCoordinate2DMake(24.7136, 46.6753);
        _chatsHidden = NO;
        _currentFont = @"ArialArabic-Bold";
    }
    return self;
}

@end
