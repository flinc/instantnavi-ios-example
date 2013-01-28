#import "InstantNaviViewController.h"

@interface InstantNaviViewController ()

@end

@implementation InstantNaviViewController

- (CGFloat)lat
{
    return 49.901743;
}

- (CGFloat)lng
{
    return 8.857043;
}

- (NSURL *)URL
{
    return [NSURL URLWithString:[NSString stringWithFormat:@"http://instantnavi.com/to/mynavi?destination[lat]=%f&destination[lng]=%f", self.lat, self.lng]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)loadInstantNavi {
    NSURLRequest *request = [NSURLRequest requestWithURL:self.URL];
    [self.webView loadRequest:request];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadInstantNavi];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
