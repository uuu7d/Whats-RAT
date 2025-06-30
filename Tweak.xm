
%hook WAContactCell

- (void)layoutSubviews {
    %orig;

    NSString *displayedNumber = self.phoneNumber;

    if (![displayedNumber hasPrefix:@"+"]) return;

    UIButton *lookupButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [lookupButton setTitle:@"🔍" forState:UIControlStateNormal];
    lookupButton.frame = CGRectMake(self.frame.size.width - 40, 10, 30, 30);
    [lookupButton addTarget:self action:@selector(lookupNumber) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:lookupButton];
}

%new
- (void)lookupNumber {
    NSString *number = self.phoneNumber;
    if (!number) return;

    NSString *urlStr = [NSString stringWithFormat:@"http://localhost:5050/lookup?number=%@", number];
    NSURL *url = [NSURL URLWithString:urlStr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *resp, NSError *error) {
        if (error) return;

        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSString *name = json[@"name"] ?: @"غير معروف";

        dispatch_async(dispatch_get_main_queue(), ^{
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"نتيجة البحث" message:name preferredStyle:UIAlertControllerStyleAlert];
            [alert addAction:[UIAlertAction actionWithTitle:@"موافق" style:UIAlertActionStyleDefault handler:nil]];

            UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
            [vc presentViewController:alert animated:YES completion:nil];
        });
    }] resume];
}

%end
