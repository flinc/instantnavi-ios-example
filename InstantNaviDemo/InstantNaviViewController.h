#import <UIKit/UIKit.h>

@interface InstantNaviViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (readonly) CGFloat lat;
@property (readonly) CGFloat lng;
@property (readonly) NSURL *URL;

@end
