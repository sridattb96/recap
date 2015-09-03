// Generated by Apple Swift version 2.0 (swiftlang-700.0.52.2 clang-700.0.65)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if defined(__has_include) && __has_include(<uchar.h>)
# include <uchar.h>
#elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
#endif

typedef struct _NSZone NSZone;

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted) 
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
#endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import ObjectiveC;
@import Foundation;
@import CoreGraphics;
@import FBSDKLoginKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIView;
@class UILabel;
@class Colors;
@class UITapGestureRecognizer;
@class UITextField;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC6Recap223AddCourseViewController")
@interface AddCourseViewController : UIViewController
@property (nonatomic, copy) NSString * __nonnull serverApiRoot;
@property (nonatomic, weak) IBOutlet UITextField * __nullable courseCRN;
@property (nonatomic, weak) IBOutlet UITextField * __nullable courseName;
@property (nonatomic, weak) IBOutlet UITextField * __nullable courseProfessor;
@property (nonatomic, weak) IBOutlet UIView * __null_unspecified scienceView;
@property (nonatomic, weak) IBOutlet UIView * __null_unspecified engView;
@property (nonatomic, weak) IBOutlet UIView * __null_unspecified artView;
@property (nonatomic, weak) IBOutlet UIView * __null_unspecified humView;
@property (nonatomic, weak) IBOutlet UIView * __null_unspecified sportsView;
@property (nonatomic, weak) IBOutlet UIView * __null_unspecified businessView;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified scienceText;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified engText;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified artText;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified humText;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified sportsText;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified businessText;
@property (nonatomic, copy) NSArray<UIView *> * __nonnull categoryViewArr;
@property (nonatomic, copy) NSArray<UILabel *> * __nonnull categoryTextArr;
@property (nonatomic, readonly) Colors * __nonnull color;
- (IBAction)cancelButton:(id __nonnull)sender;
- (IBAction)doneButton:(id __nonnull)sender;
- (void)viewDidLoad;
- (void)chooseCategory:(UITapGestureRecognizer * __nonnull)sender;
- (void)DismissKeyboard;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIWindow;
@class UIApplication;
@class NSObject;
@class NSURL;

SWIFT_CLASS("_TtC6Recap211AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic) UIWindow * __nullable window;
- (BOOL)application:(UIApplication * __nonnull)application didFinishLaunchingWithOptions:(NSDictionary * __nullable)launchOptions;
- (BOOL)application:(UIApplication * __nonnull)application openURL:(NSURL * __nonnull)url sourceApplication:(NSString * __nullable)sourceApplication annotation:(id __nullable)annotation;
- (void)applicationWillResignActive:(UIApplication * __nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * __nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * __nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * __nonnull)application;
- (void)applicationWillTerminate:(UIApplication * __nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIColor;

SWIFT_CLASS("_TtC6Recap26Colors")
@interface Colors : NSObject
@property (nonatomic) UIColor * __nullable mainColor;
- (UIColor * __nonnull)getMainColor;
- (UIColor * __nonnull)UIColorFromRGB:(NSUInteger)rgbValue;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC6Recap26Course")
@interface Course : NSObject <NSCoding>
@property (nonatomic, copy) NSString * __nullable CRN;
@property (nonatomic, copy) NSString * __nullable Name;
@property (nonatomic, copy) NSString * __nullable Professor;
@property (nonatomic, copy) NSString * __nullable Category;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)encodeWithCoder:(NSCoder * __nonnull)aCoder;
@end

@class UIImageView;
@class UIButton;

SWIFT_CLASS("_TtC6Recap226CourseDetailViewController")
@interface CourseDetailViewController : UIViewController
@property (nonatomic, weak) IBOutlet UILabel * __nullable courseName;
@property (nonatomic, weak) IBOutlet UILabel * __nullable professorName;
@property (nonatomic, weak) IBOutlet UIImageView * __nullable courseIcon;
@property (nonatomic, weak) IBOutlet UIButton * __null_unspecified missedButton;
@property (nonatomic, copy) NSString * __nullable courseNameText;
@property (nonatomic, copy) NSString * __nullable professorNameText;
@property (nonatomic, copy) NSString * __nullable CRNText;
@property (nonatomic, readonly) Colors * __nonnull color;
- (IBAction)missedClass:(id __nonnull)sender;
- (void)viewDidLoad;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC6Recap219CourseTableViewCell")
@interface CourseTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified courseName;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified professorName;
@property (nonatomic, weak) IBOutlet UIImageView * __null_unspecified courseIcon;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * __nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UISearchDisplayController;
@class UITableView;
@class NSIndexPath;
@class UISearchBar;

SWIFT_CLASS("_TtC6Recap220SchoolViewController")
@interface SchoolViewController : UITableViewController <UIBarPositioningDelegate, UISearchDisplayDelegate, UISearchBarDelegate>
@property (nonatomic, weak) IBOutlet UISearchBar * __nullable searchBar;
- (void)viewDidLoad;
- (void)filterContentForSearchText:(NSString * __nonnull)searchText;
- (BOOL)searchDisplayController:(UISearchDisplayController * __nonnull)controller shouldReloadTableForSearchString:(NSString * __nullable)searchString;
- (BOOL)searchDisplayController:(UISearchDisplayController * __nonnull)controller shouldReloadTableForSearchScope:(NSInteger)searchOption;
- (NSInteger)tableView:(UITableView * __nonnull)tableView numberOfRowsInSection:(NSInteger)section;
- (void)tableView:(UITableView * __nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (UITableViewCell * __nonnull)tableView:(UITableView * __nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC6Recap222SettingsViewController")
@interface SettingsViewController : UITableViewController
@property (nonatomic, readonly) Colors * __nonnull color;
- (IBAction)doneButton:(id __nonnull)sender;
- (void)viewDidLoad;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSMutableArray;

SWIFT_CLASS("_TtC6Recap218UserViewController")
@interface UserViewController : UIViewController <UIScrollViewDelegate, UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified userName;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified userCollege;
@property (nonatomic, weak) IBOutlet UIImageView * __null_unspecified userPicture;
@property (nonatomic, weak) IBOutlet UITableView * __null_unspecified tableView;
@property (nonatomic, copy) NSString * __nullable userNameText;
@property (nonatomic, copy) NSString * __nullable userCollegeText;
@property (nonatomic) NSMutableArray * __nonnull myCourses;
@property (nonatomic, readonly) Colors * __nonnull color;
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (NSInteger)tableView:(UITableView * __nonnull)tableView numberOfRowsInSection:(NSInteger)section;
- (CGFloat)tableView:(UITableView * __nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (void)tableView:(UITableView * __nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (UITableViewCell * __nonnull)tableView:(UITableView * __nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (BOOL)tableView:(UITableView * __nonnull)tableView canEditRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (void)tableView:(UITableView * __nonnull)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class FBSDKLoginButton;
@class FBSDKLoginManagerLoginResult;
@class NSError;

SWIFT_CLASS("_TtC6Recap214ViewController")
@interface ViewController : UIViewController <FBSDKLoginButtonDelegate>
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (void)loginButton:(FBSDKLoginButton * __null_unspecified)loginButton didCompleteWithResult:(FBSDKLoginManagerLoginResult * __null_unspecified)result error:(NSError * __null_unspecified)error;
- (void)loginButtonDidLogOut:(FBSDKLoginButton * __null_unspecified)loginButton;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC6Recap221WelcomeViewController")
@interface WelcomeViewController : UIViewController
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified welcomeMsg;
@property (nonatomic, weak) IBOutlet UILabel * __null_unspecified selectedCollege;
@property (nonatomic, copy) NSString * __nonnull serverApiRoot;
- (IBAction)submitButton:(id __nonnull)sender;
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (void)didReceiveMemoryWarning;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop
