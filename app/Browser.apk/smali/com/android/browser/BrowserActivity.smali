.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserActivity$UrlData;,
        Lcom/android/browser/BrowserActivity$SetAsWallpaper;,
        Lcom/android/browser/BrowserActivity$Download;,
        Lcom/android/browser/BrowserActivity$Copy;,
        Lcom/android/browser/BrowserActivity$ClearThumbnails;
    }
.end annotation


# static fields
.field protected static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field static final EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static THUMBNAIL_HEIGHT:I

.field private static THUMBNAIL_WIDTH:I

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I

.field private static mInTrace:Z

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

.field mActivityInPause:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBrowserFrameLayout:Landroid/widget/FrameLayout;

.field mCanChord:Z

.field private mConfigChanged:Z

.field private mContentView:Landroid/widget/FrameLayout;

.field private mCurrentMenuState:I

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mDidStopLoad:Z

.field private mErrorConsoleContainer:Landroid/widget/LinearLayout;

.field private mFakeTitleBar:Lcom/android/browser/TitleBar;

.field private mFindDialog:Lcom/android/browser/FindDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mHttpAuthenticationDialog:Landroid/app/AlertDialog;

.field private mIconView:Z

.field private mInLoad:Z

.field private mIsNetworkUp:Z

.field private mLastEnteredUrl:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mMixLockIcon:Landroid/graphics/drawable/Drawable;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOldMenuState:I

.field private mOptionsMenuOpen:Z

.field private mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

.field private mPageInfoDialog:Landroid/app/AlertDialog;

.field private mPageInfoFromShowSSLCertificateOnError:Z

.field private mPageInfoView:Lcom/android/browser/Tab;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorView:Landroid/webkit/WebView;

.field private mSSLCertificateView:Lcom/android/browser/Tab;

.field private mSecLockIcon:Landroid/graphics/drawable/Drawable;

.field private mSelectDialog:Lcom/android/browser/SelectDialog;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mStopToast:Landroid/widget/Toast;

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mTitle:Ljava/lang/String;

.field private mTitleBar:Lcom/android/browser/TitleBar;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private mVideoProgressView:Landroid/view/View;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 2487
    sput v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    .line 2488
    sput v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    .line 3709
    const-string v0, "(?i)((?:http|https|file):\\/\\/|(?:inline|data|about|content|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    .line 3893
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/BrowserActivity;->SYSTEM_CPU_FORMAT:[I

    .line 3951
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 3955
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    .line 3992
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    .line 4019
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    .line 4020
    sget-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4066
    new-instance v0, Lcom/android/browser/BrowserActivity$UrlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

    return-void

    .line 3893
    nop

    :array_0
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 3992
    :array_1
    .array-data 0x4
        0x7bt 0x0t 0xct 0x7ft
        0x7ct 0x0t 0xct 0x7ft
        0x7dt 0x0t 0xct 0x7ft
        0x7et 0x0t 0xct 0x7ft
        0x7ft 0x0t 0xct 0x7ft
        0x80t 0x0t 0xct 0x7ft
        0x81t 0x0t 0xct 0x7ft
        0x82t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2284
    new-instance v0, Lcom/android/browser/BrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$7;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    .line 3870
    iput v1, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 3871
    const v0, 0x7f0c0067

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 3872
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 3886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 3987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 3988
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->updateScreenshot(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/browser/BrowserActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/browser/BrowserActivity;)Landroid/webkit/SslErrorHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/browser/BrowserActivity;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/browser/BrowserActivity;)Landroid/net/http/SslError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/browser/BrowserActivity;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->packageChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/browser/BrowserActivity;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->addPackageNames(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private addPackageNames(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3822
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3823
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 3828
    :goto_0
    return-void

    .line 3827
    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addPackageNames(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 1759
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->attachTabToContentView(Landroid/view/ViewGroup;)V

    .line 1761
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    if-eqz v2, :cond_0

    .line 1762
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 1763
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v2

    if-nez v2, :cond_1

    .line 1764
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 1769
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1774
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1775
    .local v1, view:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1776
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1777
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->showVoiceTitleBar(Ljava/lang/String;)V

    .line 1782
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1783
    return-void

    .line 1766
    .end local v1           #view:Landroid/webkit/WebView;
    .restart local v0       #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_0

    .line 1779
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    .restart local v1       #view:Landroid/webkit/WebView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->revertVoiceTitleBar()V

    goto :goto_1
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2256
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 2259
    :cond_0
    return-void
.end method

.method private closeDialog(Lcom/android/browser/WebDialog;)Z
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1519
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/WebDialog;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1523
    :goto_0
    return v1

    .line 1520
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1521
    .local v0, currentTab:Lcom/android/browser/Tab;
    invoke-virtual {v0, p1}, Lcom/android/browser/Tab;->closeDialog(Lcom/android/browser/WebDialog;)V

    .line 1522
    invoke-virtual {p1}, Lcom/android/browser/WebDialog;->dismiss()V

    .line 1523
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 1973
    :try_start_0
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 1974
    if-eqz v0, :cond_0

    .line 1975
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    :cond_0
    :goto_0
    return-void

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    const-string v1, "browser"

    const-string v2, "Copy failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createAndShowNetworkDialog()V
    .locals 3

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/browser/SemcR2RHandler;->getInstance(Landroid/app/Activity;)Lcom/android/browser/SemcR2RHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/SemcR2RHandler;->isR2RActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3546
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3552
    :cond_0
    return-void
.end method

.method private createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 1211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1212
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-object v0
.end method

.method private createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x0

    .line 2518
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v4

    .line 2519
    .local v4, thumbnail:Landroid/graphics/Picture;
    if-nez v4, :cond_0

    move-object v7, v10

    .line 2553
    :goto_0
    return-object v7

    .line 2522
    :cond_0
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v7

    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2524
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2527
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    .line 2528
    .local v6, thumbnailWidth:I
    invoke-virtual {v4}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    .line 2529
    .local v5, thumbnailHeight:I
    const/high16 v2, 0x3f80

    .line 2530
    .local v2, scaleFactorX:F
    const/high16 v3, 0x3f80

    .line 2531
    .local v3, scaleFactorY:F
    if-lez v6, :cond_1

    .line 2532
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v6

    div-float v2, v7, v8

    .line 2538
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_2

    if-lez v5, :cond_2

    .line 2543
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v3, v7, v8

    .line 2550
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2552
    invoke-virtual {v4, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    move-object v7, v0

    .line 2553
    goto :goto_0

    :cond_1
    move-object v7, v10

    .line 2535
    goto :goto_0

    .line 2547
    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method private dialogIsUp()Z
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0}, Lcom/android/browser/FindDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    invoke-virtual {v0}, Lcom/android/browser/SelectDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 2934
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2936
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 2937
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 2938
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_2

    .line 2939
    :cond_0
    const/4 v5, 0x1

    .line 2943
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    move-object v7, p0

    .line 2957
    :goto_1
    return-object v7

    .line 2937
    .restart local v1       #c:C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2947
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2948
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 2949
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 2950
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2951
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2948
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2953
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2957
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 744
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v1, v6

    move v2, v7

    move-object v3, p0

    .line 746
    :goto_0
    if-ge v1, v0, :cond_0

    .line 747
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 748
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 757
    :cond_0
    const-string v0, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move-object v0, v3

    .line 765
    :goto_1
    return-object v0

    .line 751
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v2, v4

    .line 752
    sub-int v4, v0, v7

    if-ne v1, v4, :cond_3

    if-nez v2, :cond_3

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    :cond_4
    const-string v0, "http:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 761
    :cond_5
    const-string v0, "http:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 762
    :cond_6
    const-string v0, "/"

    const-string v1, "//"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 763
    :cond_7
    const-string v0, ":"

    const-string v1, "://"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method private formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter "certificateDate"

    .prologue
    const-string v2, ""

    .line 3404
    if-nez p1, :cond_0

    .line 3405
    const-string v1, ""

    move-object v1, v2

    .line 3411
    :goto_0
    return-object v1

    .line 3407
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3408
    .local v0, formattedDate:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3409
    const-string v1, ""

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 3411
    goto :goto_0
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 2513
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    .line 2514
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 2497
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    if-nez v0, :cond_0

    .line 2498
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2499
    const/high16 v1, 0x42b4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    .line 2500
    const/high16 v1, 0x42a0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    .line 2502
    :cond_0
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    return v0
.end method

.method private getInstalledPackages()V
    .locals 2

    .prologue
    .line 3831
    new-instance v0, Lcom/android/browser/BrowserActivity$20;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$20;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 3853
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3854
    return-void
.end method

.method private getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 664
    const-string v0, ""

    .line 666
    if-eqz p1, :cond_6

    .line 667
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 668
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 673
    if-eqz v1, :cond_0

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_0
    if-eqz v0, :cond_6

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 678
    const-string v1, "com.android.browser.headers"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 680
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 681
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 682
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 683
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 684
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 685
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_1
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 722
    :goto_2
    new-instance v2, Lcom/android/browser/BrowserActivity$UrlData;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V

    return-object v2

    .line 689
    :cond_2
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 692
    :cond_3
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_6

    .line 694
    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 697
    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 701
    new-instance v2, Lcom/android/browser/BrowserActivity$6;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/browser/BrowserActivity$6;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/browser/BrowserActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 707
    const-string v1, "&source=android-browser-suggest&"

    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 710
    const-string v2, "app_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 711
    if-eqz v2, :cond_5

    .line 712
    const-string v3, "source"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 714
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 715
    const-string v2, "unknown"

    .line 717
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&source=android-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_5
    move-object v2, v5

    goto :goto_3

    :cond_6
    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_7
    move-object v1, v5

    goto/16 :goto_1
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 595
    if-nez p1, :cond_0

    move v3, v4

    .line 611
    :goto_0
    return v3

    .line 597
    :cond_0
    const/4 v2, 0x0

    .line 598
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 601
    goto :goto_0

    .line 603
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 604
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 605
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    .end local v1           #data:Landroid/net/Uri;
    :cond_2
    :goto_1
    const-string v3, "app_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent_extra_data_key"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/BrowserActivity;->handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 606
    :cond_3
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    :cond_4
    const-string v3, "query"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 9
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v8, 0x0

    .line 621
    if-nez p1, :cond_0

    move v6, v8

    .line 660
    :goto_0
    return v6

    .line 625
    :cond_0
    invoke-static {p1}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, url:Ljava/lang/String;
    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v6, v8

    .line 631
    goto :goto_0

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 635
    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v5

    .line 636
    .local v3, newUrl:Ljava/lang/String;
    new-instance v6, Lcom/android/browser/BrowserActivity$5;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/browser/BrowserActivity$5;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v7, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/browser/BrowserActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 644
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getSearchEngineSettingDisabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 647
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "query"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 651
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/ActivityNotFoundException;
    move v6, v8

    .line 652
    goto :goto_0

    .line 655
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v4

    .line 656
    .local v4, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-nez v4, :cond_4

    move v6, v8

    goto :goto_0

    .line 657
    :cond_4
    invoke-interface {v4, p0, v5, p2, p3}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private hideFakeTitleBar()V
    .locals 3

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 918
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 907
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 912
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 914
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 916
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 912
    :cond_1
    const v1, 0x7f0a0003

    goto :goto_1
.end method

.method private inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3352
    if-nez p1, :cond_0

    move-object v0, v2

    .line 3395
    :goto_0
    return-object v0

    .line 3356
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3358
    const v1, 0x7f030010

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3362
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    .line 3363
    if-eqz v2, :cond_1

    .line 3364
    const v0, 0x7f0c0038

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3366
    const v0, 0x7f0c003a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3368
    const v0, 0x7f0c003c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3373
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    .line 3374
    if-eqz v2, :cond_2

    .line 3375
    const v0, 0x7f0c003e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3377
    const v0, 0x7f0c0040

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3379
    const v0, 0x7f0c0042

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3384
    :cond_2
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 3386
    const v0, 0x7f0c0045

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3390
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3392
    const v2, 0x7f0c0047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 3395
    goto/16 :goto_0
.end method

.method private loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 3670
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3671
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3672
    return-void
.end method

.method private loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V
    .locals 2
    .parameter "t"
    .parameter "data"

    .prologue
    .line 3681
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p2, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3682
    invoke-virtual {p2, p1}, Lcom/android/browser/BrowserActivity$UrlData;->loadIn(Lcom/android/browser/Tab;)V

    .line 3683
    return-void
.end method

.method private loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 3654
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3655
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3656
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3657
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3660
    :cond_0
    return-void
.end method

.method private openTab(Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 4
    .parameter "url"

    .prologue
    .line 1857
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1858
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1859
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 1860
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1861
    .local v1, view:Landroid/webkit/WebView;
    invoke-direct {p0, v1, p1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .end local v1           #view:Landroid/webkit/WebView;
    :cond_0
    move-object v2, v0

    .line 1865
    .end local v0           #t:Lcom/android/browser/Tab;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    goto :goto_0
.end method

.method private openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "url"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    .line 1819
    new-instance v0, Lcom/android/browser/BrowserActivity$UrlData;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private packageChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "wasAdded"

    .prologue
    .line 3809
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3810
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 3819
    :goto_0
    return-void

    .line 3814
    :cond_0
    if-eqz p2, :cond_1

    .line 3815
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 3817
    :cond_1
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pauseWebViewTimers()Z
    .locals 4

    .prologue
    .line 1089
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1090
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->inLoad()Z

    move-result v0

    .line 1091
    .local v0, inLoad:Z
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 1092
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1093
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1094
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 1095
    invoke-virtual {v2}, Landroid/webkit/WebView;->pauseTimers()V

    .line 1097
    :cond_0
    const/4 v3, 0x1

    .line 1099
    .end local v2           #w:Landroid/webkit/WebView;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeTabFromContentView(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 1794
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->removeTabFromContentView(Landroid/view/ViewGroup;)V

    .line 1796
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 1797
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz v0, :cond_0

    .line 1798
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1801
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1802
    .local v1, view:Landroid/webkit/WebView;
    if-eqz v1, :cond_1

    .line 1803
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1805
    :cond_1
    return-void
.end method

.method private resetLockIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 3052
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/Tab;->resetLockIcon(Ljava/lang/String;)V

    .line 3053
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 3054
    return-void
.end method

.method private resetTitleAndIcon(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 2011
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2012
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 2013
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2019
    :goto_0
    return-void

    .line 2016
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resetTitleIconAndProgress()V
    .locals 3

    .prologue
    .line 2000
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2001
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 2007
    :goto_0
    return-void

    .line 2004
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 2005
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 2006
    .local v1, progress:I
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method private resumeWebViewTimers()V
    .locals 4

    .prologue
    .line 1076
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1077
    .local v1, tab:Lcom/android/browser/Tab;
    if-nez v1, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    invoke-virtual {v1}, Lcom/android/browser/Tab;->inLoad()Z

    move-result v0

    .line 1079
    .local v0, inLoad:Z
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1080
    :cond_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1081
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1082
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 1083
    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_0
.end method

.method private retainIconsOnStartup()V
    .locals 4

    .prologue
    .line 1105
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    .line 1106
    const-string v1, "icons"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 1107
    const/4 v1, 0x0

    .line 1109
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Landroid/provider/Browser;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    .line 1110
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    const-string v2, "url"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1113
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1114
    invoke-virtual {v0, v3}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 1115
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 1120
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1122
    :cond_2
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    :try_start_1
    const-string v2, "browser"

    const-string v3, "retainIconsOnStartup"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 3802
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3803
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 3804
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    :cond_0
    return-void
.end method

.method private setStatusBarVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v2, 0x400

    .line 3796
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 3797
    .local v0, flag:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    .line 3798
    return-void

    .end local v0           #flag:I
    :cond_0
    move v0, v2

    .line 3796
    goto :goto_0
.end method

.method public static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2417
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2418
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2419
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2420
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2421
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2423
    const v1, 0x7f080061

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2428
    :goto_0
    return-void

    .line 2425
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1318
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1319
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1322
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1323
    .local v0, mainView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 1324
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1327
    .end local v0           #mainView:Landroid/webkit/WebView;
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1328
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1329
    invoke-virtual {v1, p1}, Lcom/android/browser/Tab;->showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;

    move-result-object v2

    return-object v2
.end method

.method private showFakeTitleBar()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 856
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v8

    .line 860
    if-nez v8, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->dialogIsUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 871
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager;

    move-object v7, v0

    .line 876
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 883
    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 884
    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 885
    :goto_1
    if-eqz v2, :cond_3

    move v2, v9

    :goto_2
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 886
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v7, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v2, v9

    .line 884
    goto :goto_1

    .line 885
    :cond_3
    const v2, 0x7f0a0003

    goto :goto_2
.end method

.method private showPageInfo(Lcom/android/browser/Tab;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v4, ""

    .line 3087
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3090
    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3092
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 3097
    if-nez v2, :cond_3

    .line 3098
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 3099
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    .line 3109
    :goto_0
    if-nez v3, :cond_0

    .line 3110
    const-string v3, ""

    move-object v3, v4

    .line 3112
    :cond_0
    if-nez v0, :cond_5

    .line 3113
    const-string v0, ""

    .line 3116
    :goto_1
    const v0, 0x7f0c000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3117
    const v0, 0x7f0c0002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3119
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    .line 3120
    iput-boolean p2, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    .line 3122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080013

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    new-instance v3, Lcom/android/browser/BrowserActivity$10;

    invoke-direct {v3, p0, p2}, Lcom/android/browser/BrowserActivity$10;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$9;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/BrowserActivity$9;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3163
    if-nez p2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3166
    :cond_1
    const v1, 0x7f080019

    new-instance v3, Lcom/android/browser/BrowserActivity$11;

    invoke-direct {v3, p0, p2, v2, p1}, Lcom/android/browser/BrowserActivity$11;-><init>(Lcom/android/browser/BrowserActivity;ZLandroid/webkit/WebView;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3192
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    .line 3193
    return-void

    .line 3100
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v2, v0, :cond_4

    .line 3102
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 3103
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_0

    .line 3105
    :cond_4
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 3106
    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_5
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private showSSLCertificate(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter

    .prologue
    .line 3201
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v1

    .line 3203
    if-nez v1, :cond_0

    .line 3243
    :goto_0
    return-void

    .line 3207
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 3209
    const v0, 0x7f0c0034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3212
    const v3, 0x7f030011

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3214
    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3217
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    .line 3218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f02001e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    new-instance v2, Lcom/android/browser/BrowserActivity$13;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserActivity$13;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/BrowserActivity$12;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "inUri"

    .prologue
    .line 3703
    if-eqz p1, :cond_0

    .line 3704
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3706
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInLoadMenuItems()V
    .locals 3

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1153
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c0086

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1156
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0c006b

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1157
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1158
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c0087

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1
.end method

.method private updateLockIconImage(I)V
    .locals 2
    .parameter "lockIconType"

    .prologue
    .line 3067
    const/4 v0, 0x0

    .line 3068
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3069
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 3073
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 3074
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 3075
    return-void

    .line 3070
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3071
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateLockIconToLatest()V
    .locals 1

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getLockIconType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 3061
    return-void
.end method

.method private updateScreenshot(Landroid/webkit/WebView;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 2437
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2438
    .local v5, bm:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 2480
    :goto_0
    return-void

    .line 2442
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2443
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2444
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 2446
    .local v3, originalUrl:Ljava/lang/String;
    new-instance v0, Lcom/android/browser/BrowserActivity$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity$8;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 3695
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3696
    invoke-virtual {p0, p2, v1}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 3697
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3698
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 3700
    :cond_0
    return-void
.end method

.method private viewDownloads()V
    .locals 2

    .prologue
    .line 3605
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3606
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3607
    return-void
.end method


# virtual methods
.method attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->attachSubWindow(Landroid/view/ViewGroup;)V

    .line 1788
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1789
    return-void
.end method

.method bookmarksOrHistoryPicker(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 3615
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3616
    if-nez v0, :cond_0

    .line 3649
    :goto_0
    return-void

    .line 3619
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3621
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 3622
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 3623
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3627
    if-nez v3, :cond_1

    .line 3628
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 3630
    if-nez v3, :cond_1

    .line 3631
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    .line 3635
    :cond_1
    if-nez v2, :cond_2

    move-object v2, v3

    .line 3638
    :cond_2
    const-string v5, "title"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3639
    const-string v2, "url"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3640
    const-string v2, "thumbnail"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3642
    const-string v2, "disable_new_window"

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v6

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3643
    const-string v2, "touch_icon_url"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3644
    if-eqz p1, :cond_3

    .line 3645
    sget-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    sget-object v2, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3648
    :cond_3
    invoke-virtual {p0, v1, v6}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3642
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method closeCurrentWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1273
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1274
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1277
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 1278
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 1282
    .local v3, parent:Lcom/android/browser/Tab;
    const/4 v2, -0x1

    .line 1283
    .local v2, indexToShow:I
    if-eqz v3, :cond_3

    .line 1284
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v2

    .line 1294
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1296
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1286
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 1288
    .local v1, currentIndex:I
    add-int/lit8 v2, v1, 0x1

    .line 1289
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_2

    .line 1291
    sub-int v2, v1, v5

    goto :goto_1
.end method

.method public closeDialogs()V
    .locals 3

    .prologue
    .line 1530
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->closeDialog(Lcom/android/browser/WebDialog;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->closeDialog(Lcom/android/browser/WebDialog;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1534
    .local v0, currentTab:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1535
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1536
    .local v1, mainView:Landroid/webkit/WebView;
    if-eqz v1, :cond_2

    .line 1537
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1540
    .end local v1           #mainView:Landroid/webkit/WebView;
    :cond_2
    const v2, 0x7f0c0067

    iput v2, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1541
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v2, :cond_0

    .line 1545
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method closeTab(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 2084
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    .line 2085
    .local v0, currentIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    .line 2086
    .local v1, removeIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2087
    if-lt v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 2088
    add-int/lit8 v0, v0, -0x1

    .line 2090
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2091
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 2092
    return-void
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 2251
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    return v0
.end method

.method dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->removeSubWindow(Landroid/view/ViewGroup;)V

    .line 1812
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 1813
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1814
    return-void
.end method

.method editUrl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1217
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v4

    .line 1219
    .local v0, url:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v4

    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1221
    return-void

    .line 1218
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .restart local v0       #url:Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 1219
    goto :goto_1
.end method

.method getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2846
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 2849
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2854
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2855
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    .line 2858
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2095
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2096
    if-nez v0, :cond_0

    .line 2104
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    .line 2154
    :goto_0
    return-void

    .line 2107
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2108
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2109
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 2113
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2114
    if-eqz v1, :cond_2

    .line 2115
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 2117
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2119
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnExit()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2123
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->clearInLoad()V

    .line 2124
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 2125
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_0

    .line 2133
    :cond_3
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 2134
    if-eqz v1, :cond_4

    .line 2135
    const-string v2, "browser"

    const-string v3, "BrowserActivity is already paused while handing goBackOnePageOrQuit."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_4
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 2139
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    .line 2140
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 2141
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 2142
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2151
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method isMenuDown()Z
    .locals 1

    .prologue
    .line 2157
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    return v0
.end method

.method isNetworkUp()Z
    .locals 1

    .prologue
    .line 3539
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 3557
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3597
    :goto_0
    return-void

    .line 3559
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3596
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 3561
    :pswitch_1
    if-ne p2, v4, :cond_2

    if-eqz p3, :cond_2

    .line 3562
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3563
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3564
    if-eqz v1, :cond_3

    const-string v2, "new_window"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3565
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    .line 3578
    :cond_2
    :goto_2
    :pswitch_2
    if-ne p2, v4, :cond_1

    if-eqz p3, :cond_1

    .line 3579
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3580
    const-string v1, "privacy_clear_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3581
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 3567
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 3569
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 3570
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3571
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 3587
    :pswitch_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    .line 3588
    if-eqz p3, :cond_4

    if-eq p2, v4, :cond_5

    :cond_4
    move-object v0, v2

    .line 3590
    :goto_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 3591
    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_1

    .line 3588
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 3559
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1033
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1035
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1037
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1043
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1047
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1048
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1053
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x102017e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1057
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1059
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1061
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 1063
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1064
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1067
    :cond_3
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1165
    iput-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1168
    sparse-switch v0, :sswitch_data_0

    .line 1204
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1206
    :goto_0
    iput-boolean v5, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1207
    return v0

    .line 1171
    :sswitch_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1172
    if-nez v0, :cond_0

    move v0, v5

    .line 1174
    goto :goto_0

    .line 1176
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1177
    if-nez v0, :cond_1

    move v0, v5

    .line 1179
    goto :goto_0

    .line 1181
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    move v0, v6

    .line 1182
    goto :goto_0

    .line 1190
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 1191
    if-nez v1, :cond_2

    move v0, v5

    .line 1193
    goto :goto_0

    .line 1195
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1196
    const-string v3, "webview"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1199
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    move v0, v6

    .line 1200
    goto :goto_0

    .line 1168
    :sswitch_data_0
    .sparse-switch
        0x7f0c005f -> :sswitch_1
        0x7f0c0063 -> :sswitch_1
        0x7f0c0093 -> :sswitch_1
        0x7f0c0094 -> :sswitch_1
        0x7f0c0095 -> :sswitch_1
        0x7f0c0096 -> :sswitch_1
        0x7f0c00a3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 934
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 935
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 938
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "icicle"

    .prologue
    .line 187
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->setDefaultKeyMode(I)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 202
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 411
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080061

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x108005c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v19

    const v20, 0x1020002

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 218
    .local v10, frameLayout:Landroid/widget/FrameLayout;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f030008

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0c0021

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0c0020

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0c001f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v19, Lcom/android/browser/TitleBar;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    invoke-virtual/range {v19 .. v20}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 230
    new-instance v19, Lcom/android/browser/TitleBar;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    .line 233
    new-instance v19, Lcom/android/browser/TabControl;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->retainIconsOnStartup()V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/browser/BrowserSettings;->setTabControl(Lcom/android/browser/TabControl;)V

    .line 240
    const-string v19, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 241
    .local v14, pm:Landroid/os/PowerManager;
    const/16 v19, 0x1

    const-string v20, "Browser"

    move-object v0, v14

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 244
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 246
    .local v6, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 247
    .local v11, info:Landroid/net/NetworkInfo;
    if-eqz v11, :cond_1

    .line 248
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 253
    :cond_1
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    move-object/from16 v19, v0

    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {v19 .. v20}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    new-instance v19, Lcom/android/browser/BrowserActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$1;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    new-instance v9, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v19, "package"

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 277
    new-instance v19, Lcom/android/browser/BrowserActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$2;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 329
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 331
    .local v12, intent:Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 336
    .local v8, extra:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;

    move-result-object v17

    .line 338
    .local v17, urlData:Lcom/android/browser/BrowserActivity$UrlData;
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v19, v0

    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    if-nez v20, :cond_3

    :cond_2
    const-string v20, "android.speech.action.VOICE_SEARCH_RESULTS"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_3
    const/16 v20, 0x1

    :goto_1
    const-string v21, "com.android.browser.application_id"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v16

    .line 345
    .local v16, t:Lcom/android/browser/Tab;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 347
    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v18

    .line 348
    .local v18, webView:Landroid/webkit/WebView;
    if-eqz v8, :cond_4

    .line 349
    const-string v19, "browser.initialZoomLevel"

    const/16 v20, 0x0

    move-object v0, v8

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 350
    .local v15, scale:I
    if-lez v15, :cond_4

    const/16 v19, 0x3e8

    move v0, v15

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 351
    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 356
    .end local v15           #scale:I
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/browser/SemcR2RHandler;->getInstance(Landroid/app/Activity;)Lcom/android/browser/SemcR2RHandler;

    move-result-object v19

    new-instance v20, Lcom/android/browser/BrowserActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserActivity$3;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$UrlData;Lcom/android/browser/Tab;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/browser/SemcR2RHandler;->startR2RIfNeeded(Lcom/android/browser/SemcR2RHandler$R2RResultListener;)Z

    .line 372
    new-instance v5, Lcom/android/browser/BrowserActivity$4;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserActivity$4;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$UrlData;Lcom/android/browser/Tab;)V

    .line 387
    .local v5, cl:Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;
    new-instance v7, Lcom/android/browser/SemcBrowserCustomization;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/SemcBrowserCustomization;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserSettings;Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;)V

    .line 388
    .local v7, cust:Lcom/android/browser/SemcBrowserCustomization;
    invoke-virtual {v7}, Lcom/android/browser/SemcBrowserCustomization;->doCustomization()V

    .line 397
    .end local v4           #action:Ljava/lang/String;
    .end local v5           #cl:Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;
    .end local v7           #cust:Lcom/android/browser/SemcBrowserCustomization;
    .end local v8           #extra:Landroid/os/Bundle;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #t:Lcom/android/browser/Tab;
    .end local v17           #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    .end local v18           #webView:Landroid/webkit/WebView;
    :goto_2
    new-instance v19, Lcom/android/browser/BrowserActivity$ClearThumbnails;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/android/browser/BrowserActivity$ClearThumbnails;-><init>(Lcom/android/browser/BrowserActivity$1;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/android/browser/BrowserActivity$ClearThumbnails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/browser/BrowserSettings;->getJsFlags()Ljava/lang/String;

    move-result-object v13

    .line 401
    .local v13, jsFlags:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_5

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setJsFlags(Ljava/lang/String;)V

    .line 405
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getInstalledPackages()V

    .line 408
    new-instance v19, Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    goto/16 :goto_0

    .line 339
    .end local v13           #jsFlags:Ljava/lang/String;
    .restart local v4       #action:Ljava/lang/String;
    .restart local v8       #extra:Landroid/os/Bundle;
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v17       #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 392
    .end local v4           #action:Ljava/lang/String;
    .end local v8           #extra:Landroid/os/Bundle;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v17           #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "android.intent.action.VIEW"

    .line 1638
    instance-of v0, p2, Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_1

    .line 1752
    :cond_0
    :goto_0
    return-void

    .line 1641
    :cond_1
    check-cast p2, Landroid/webkit/WebView;

    .line 1642
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1643
    if-eqz v0, :cond_0

    .line 1647
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 1648
    if-nez v1, :cond_2

    .line 1649
    const-string v0, "browser"

    const-string v1, "We should not show context menu when nothing is touched"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1653
    :cond_2
    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 1661
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 1662
    const v3, 0x7f0b0003

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1665
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 1666
    const v0, 0x7f0c0088

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    move v3, v6

    :goto_1
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1668
    const v0, 0x7f0c008c

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    move v3, v6

    :goto_2
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1670
    const v0, 0x7f0c008f

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    move v3, v6

    :goto_3
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1672
    const v0, 0x7f0c0097

    if-eq v1, v8, :cond_3

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    :cond_3
    move v3, v6

    :goto_4
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1675
    const v0, 0x7f0c0092

    if-eq v1, v9, :cond_4

    const/16 v3, 0x8

    if-ne v1, v3, :cond_a

    :cond_4
    move v3, v6

    :goto_5
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1680
    packed-switch v1, :pswitch_data_0

    .line 1748
    :pswitch_0
    const-string v0, "browser"

    const-string v1, "We should not get here."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_5
    :goto_6
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    goto :goto_0

    :cond_6
    move v3, v5

    .line 1666
    goto :goto_1

    :cond_7
    move v3, v5

    .line 1668
    goto :goto_2

    :cond_8
    move v3, v5

    .line 1670
    goto :goto_3

    :cond_9
    move v3, v5

    .line 1672
    goto :goto_4

    :cond_a
    move v3, v5

    .line 1675
    goto :goto_5

    .line 1682
    :pswitch_1
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1683
    const v0, 0x7f0c0089

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1687
    const-string v1, "phone"

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1689
    const v1, 0x7f0c008a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1691
    const v0, 0x7f0c008b

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_6

    .line 1696
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1697
    const v0, 0x7f0c008d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1700
    const v0, 0x7f0c008e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1705
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1706
    const v0, 0x7f0c0090

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1710
    const v0, 0x7f0c0091

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 1716
    :pswitch_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x109000e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1719
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1720
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 1722
    const v0, 0x7f0c0093

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1724
    const v0, 0x7f0c0094

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v2}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1726
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1727
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1728
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    const/high16 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1730
    const v3, 0x7f0c0063

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_c

    move v0, v6

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1731
    if-eq v1, v9, :cond_5

    .line 1736
    :pswitch_5
    if-ne v1, v8, :cond_b

    .line 1737
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1739
    :cond_b
    const v0, 0x7f0c0099

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1741
    const v0, 0x7f0c0098

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Download;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Download;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1743
    const v0, 0x7f0c009a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$SetAsWallpaper;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$SetAsWallpaper;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_c
    move v0, v5

    .line 1730
    goto :goto_7

    .line 1680
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1137
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1138
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1139
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    .line 1140
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 1141
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1001
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1003
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1005
    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-nez v1, :cond_1

    .line 1028
    :goto_0
    return-void

    .line 1011
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1014
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1015
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 1016
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1017
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1020
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->destroy()V

    .line 1021
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->close()V

    .line 1023
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1026
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 1027
    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2893
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    const-string v3, "attachment"

    const/16 v5, 0xa

    move-object v0, p3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2898
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2899
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2900
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2902
    if-eqz v1, :cond_2

    .line 2903
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 2906
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2913
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2928
    :goto_0
    return-void

    .line 2915
    :catch_0
    move-exception v0

    .line 2917
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2927
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/android/browser/BrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2972
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2976
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 2977
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2982
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2983
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2984
    const v1, 0x7f0800d2

    .line 2990
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3042
    :goto_1
    return-void

    .line 2986
    :cond_0
    const v1, 0x7f0800d1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2987
    const v1, 0x7f0800d0

    goto :goto_0

    .line 3003
    :cond_1
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 3004
    iget-object v2, v1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3014
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3016
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3017
    const-string v4, "uri"

    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    const-string v4, "cookiedata"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    const-string v2, "useragent"

    invoke-virtual {v3, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    const-string v2, "notificationpackage"

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3022
    const-string v2, "notificationclass"

    const-class v4, Lcom/android/browser/OpenDownloadReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    const-string v2, "visibility"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3026
    const-string v2, "mimetype"

    invoke-virtual {v3, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    const-string v2, "hint"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    const-string v0, "description"

    iget-object v1, v1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_2

    .line 3030
    const-string v0, "total_bytes"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3032
    :cond_2
    if-nez p4, :cond_3

    .line 3035
    new-instance v0, Lcom/android/browser/FetchUrlMimeType;

    invoke-direct {v0, p0}, Lcom/android/browser/FetchUrlMimeType;-><init>(Lcom/android/browser/BrowserActivity;)V

    new-array v1, v7, [Landroid/content/ContentValues;

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/browser/FetchUrlMimeType;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3040
    :goto_2
    const v0, 0x7f0800da

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3005
    :catch_0
    move-exception v0

    .line 3008
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception trying to parse url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3037
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2827
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2842
    :goto_0
    return-void

    .line 2830
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2832
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    .line 2835
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 2836
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 2837
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2838
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2840
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->setStatusBarVisibility(Z)V

    .line 2841
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2164
    const/16 v0, 0x52

    if-ne v0, p1, :cond_0

    .line 2165
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 2166
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2195
    :goto_0
    return v0

    .line 2171
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 2173
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2195
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2178
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2179
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->pageUp(Z)Z

    :goto_1
    move v0, v1

    .line 2183
    goto :goto_0

    .line 2181
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto :goto_1

    .line 2185
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2186
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    .line 2187
    goto :goto_0

    .line 2188
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2190
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    move v0, v1

    .line 2191
    goto :goto_0

    .line 2173
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 2200
    sparse-switch p1, :sswitch_data_0

    .line 2229
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 2202
    :sswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    goto :goto_0

    .line 2205
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2208
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_2
    move v1, v2

    .line 2225
    goto :goto_1

    .line 2210
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v1, :cond_2

    .line 2212
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    goto :goto_2

    .line 2214
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2215
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_4

    .line 2216
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2217
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    .line 2219
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_2

    .line 2222
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->goBackOnePageOrQuit()V

    goto :goto_2

    .line 2200
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1071
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1072
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 1073
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 824
    if-nez p1, :cond_0

    .line 825
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_3

    .line 826
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    if-eqz v0, :cond_1

    .line 830
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 852
    :cond_0
    :goto_0
    return v1

    .line 832
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-eqz v0, :cond_2

    .line 835
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 836
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0

    .line 840
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 841
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0

    .line 846
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 847
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    .line 848
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 849
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0
.end method

.method public onNetworkToggle(Z)V
    .locals 2
    .parameter "up"

    .prologue
    .line 3518
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-ne p1, v1, :cond_1

    .line 3536
    :cond_0
    :goto_0
    return-void

    .line 3520
    :cond_1
    if-eqz p1, :cond_3

    .line 3521
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 3522
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 3523
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 3524
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3532
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3533
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 3534
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_0

    .line 3527
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 3528
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v1, :cond_2

    .line 3529
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 434
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    .line 437
    .local v4, current:Lcom/android/browser/Tab;
    if-nez v4, :cond_2

    .line 439
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    .line 440
    if-nez v4, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v4}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 445
    invoke-direct {p0, v4}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 446
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 448
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 450
    .local v5, flags:I
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/high16 v11, 0x10

    and-int/2addr v11, v5

    if-nez v11, :cond_0

    .line 456
    const-string v11, "search"

    invoke-virtual {p0, v11}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 458
    const-string v11, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 460
    .local v1, activateVoiceSearch:Z
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "android.intent.action.SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz v1, :cond_0

    .line 465
    :cond_3
    invoke-virtual {v4}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 466
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v9

    .line 467
    .local v9, title:Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v11, "query"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 473
    :cond_4
    const-string v11, "android.intent.action.SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v4}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 475
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v7, logIntent:Landroid/content/Intent;
    const-string v11, "extra_event"

    const/4 v12, 0x3

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    const-string v11, "value"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 490
    .end local v7           #logIntent:Landroid/content/Intent;
    .end local v9           #title:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 494
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;

    move-result-object v10

    .line 495
    .local v10, urlData:Lcom/android/browser/BrowserActivity$UrlData;
    invoke-virtual {v10}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 496
    new-instance v10, Lcom/android/browser/BrowserActivity$UrlData;

    .end local v10           #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v11}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    .line 499
    .restart local v10       #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    :cond_6
    const-string v11, "com.android.browser.application_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, appId:Ljava/lang/String;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    :cond_7
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const/high16 v11, 0x40

    and-int/2addr v11, v5

    if-eqz v11, :cond_b

    .line 507
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v2}, Lcom/android/browser/TabControl;->getTabFromId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v3

    .line 508
    .local v3, appTab:Lcom/android/browser/Tab;
    if-eqz v3, :cond_9

    .line 509
    const-string v11, "browser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reusing tab for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 514
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 518
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v3, v10}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)Z

    move-result v8

    .line 521
    .local v8, needsLoad:Z
    if-eq v4, v3, :cond_8

    .line 522
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 523
    if-eqz v8, :cond_0

    .line 524
    invoke-direct {p0, v3, v10}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 529
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 530
    if-eqz v8, :cond_0

    .line 531
    invoke-direct {p0, v3, v10}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 538
    .end local v8           #needsLoad:Z
    :cond_9
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/browser/TabControl;->findUnusedTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v3

    .line 539
    if-eqz v3, :cond_a

    .line 540
    if-eq v4, v3, :cond_0

    .line 541
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    goto/16 :goto_0

    .line 550
    :cond_a
    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11, v2}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 554
    .end local v3           #appTab:Lcom/android/browser/Tab;
    :cond_b
    invoke-virtual {v10}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_14

    iget-object v11, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v12, "about:debug"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 556
    const-string v11, "about:debug.dom"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 557
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 558
    :cond_c
    const-string v11, "about:debug.dom.file"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 559
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 560
    :cond_d
    const-string v11, "about:debug.render"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 561
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 562
    :cond_e
    const-string v11, "about:debug.render.file"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 563
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 564
    :cond_f
    const-string v11, "about:debug.display"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 565
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto/16 :goto_0

    .line 566
    :cond_10
    iget-object v11, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v12, "about:debug.drag"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 567
    iget-object v11, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    const/16 v12, 0x30

    sub-int v6, v11, v12

    .line 568
    .local v6, index:I
    if-lez v6, :cond_11

    const/16 v11, 0x9

    if-le v6, v11, :cond_12

    .line 569
    :cond_11
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->setDragTracker(Landroid/webkit/WebView$DragTracker;)V

    goto/16 :goto_0

    .line 571
    :cond_12
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    new-instance v12, Lcom/android/browser/MeshTracker;

    invoke-direct {v12, v6}, Lcom/android/browser/MeshTracker;-><init>(I)V

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->setDragTracker(Landroid/webkit/WebView$DragTracker;)V

    goto/16 :goto_0

    .line 574
    .end local v6           #index:I
    :cond_13
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v11}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_0

    .line 579
    :cond_14
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 583
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, v4, v10}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1334
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    if-nez v0, :cond_0

    move v0, v4

    .line 1510
    :goto_0
    return v0

    .line 1339
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v4

    .line 1340
    goto :goto_0

    .line 1342
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v0, :cond_2

    .line 1347
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 1349
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1504
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 1505
    goto :goto_0

    .line 1352
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 1509
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    move v0, v5

    .line 1510
    goto :goto_0

    .line 1356
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->editUrl()V

    goto :goto_1

    .line 1360
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto :goto_1

    .line 1364
    :pswitch_4
    new-instance v0, Lcom/android/browser/ActiveTabsPage;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/ActiveTabsPage;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 1365
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1366
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1367
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    sget-object v2, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->requestFocus()Z

    .line 1369
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    goto :goto_1

    .line 1373
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1375
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 1376
    const-string v2, "url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const-string v2, "title"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    const-string v2, "touch_icon_url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1379
    const-string v2, "thumbnail"

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1380
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1384
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_4

    .line 1385
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto :goto_1

    .line 1387
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 1392
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 1396
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto/16 :goto_1

    .line 1401
    :pswitch_9
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1402
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto/16 :goto_1

    .line 1405
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeCurrentWindow()V

    goto/16 :goto_1

    .line 1409
    :pswitch_a
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1410
    if-eqz v0, :cond_3

    .line 1411
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1412
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1417
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1419
    const-string v1, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1425
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->showFindDialog()V

    goto/16 :goto_1

    .line 1430
    :pswitch_d
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1431
    if-eqz v0, :cond_3

    .line 1432
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->setUpSelect()V

    goto/16 :goto_1

    .line 1440
    :pswitch_e
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    goto/16 :goto_1

    .line 1444
    :pswitch_f
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_1

    .line 1449
    :pswitch_10
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1450
    if-nez v0, :cond_6

    .line 1451
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    move v0, v4

    .line 1452
    goto/16 :goto_0

    .line 1454
    :cond_6
    invoke-virtual {v0}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 1455
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 1461
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_1

    .line 1465
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpV8Counters()V

    goto/16 :goto_1

    .line 1469
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 1473
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 1477
    :pswitch_15
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->viewDownloads()V

    goto/16 :goto_1

    .line 1489
    :pswitch_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    move v1, v4

    .line 1490
    :goto_2
    sget-object v2, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 1491
    sget-object v2, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_7

    .line 1492
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 1493
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    if-eq v0, v2, :cond_3

    .line 1495
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    goto/16 :goto_1

    .line 1490
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1349
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0068
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_15
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_a
        :pswitch_f
        :pswitch_13
        :pswitch_14
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_7
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    .line 893
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_1

    .line 894
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-nez v0, :cond_0

    .line 899
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 2618
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 2620
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 2623
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2624
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2626
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2677
    :cond_0
    sget-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    if-eqz v0, :cond_1

    .line 2678
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    .line 2679
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 2681
    :cond_1
    return-void
.end method

.method onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2575
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebViewTimers()V

    .line 2577
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserActivity;->resetLockIcon(Ljava/lang/String;)V

    .line 2578
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    invoke-virtual {p0, p3}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2582
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    .line 2584
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V

    .line 2585
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    .line 2586
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2589
    :try_start_0
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, p2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 2590
    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2594
    :goto_0
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2596
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    .line 2597
    const/high16 v1, 0x140

    invoke-static {v0, v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 2614
    :cond_2
    return-void

    .line 2591
    :catch_0
    move-exception v0

    .line 2592
    const-string v0, "browser"

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 962
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 964
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_1

    .line 965
    const-string v0, "browser"

    const-string v1, "BrowserActivity is already paused."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->pauseCurrentTab()V

    .line 970
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 971
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    move-result v0

    if-nez v0, :cond_2

    .line 972
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 973
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_3

    .line 982
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 985
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 988
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 989
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 991
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f0c0076

    const v2, 0x7f0c0067

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1572
    iput-boolean v5, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1576
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1577
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 1586
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    if-eq v0, v1, :cond_0

    .line 1587
    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1588
    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1589
    invoke-interface {p1, v3, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1591
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1595
    if-eqz v0, :cond_4

    .line 1596
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    .line 1597
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    .line 1598
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v2

    move v2, v1

    move v1, v6

    .line 1600
    :goto_0
    const v3, 0x7f0c0083

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1601
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1603
    const v2, 0x7f0c0077

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1604
    if-nez v0, :cond_2

    move v0, v5

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1606
    const v0, 0x7f0c006c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1609
    const v0, 0x7f0c0068

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1613
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1614
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1617
    const v1, 0x7f0c0071

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_3

    move v0, v5

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1619
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isNavDump()Z

    move-result v0

    .line 1620
    const v1, 0x7f0c0074

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1621
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1622
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1624
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    .line 1625
    const v1, 0x7f0c0075

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1626
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1627
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1631
    :cond_1
    :goto_3
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 1632
    return v5

    .line 1579
    :pswitch_0
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    if-eq v0, v1, :cond_1

    .line 1580
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1581
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1582
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_3

    :cond_2
    move v0, v4

    .line 1604
    goto :goto_1

    :cond_3
    move v0, v4

    .line 1617
    goto :goto_2

    :cond_4
    move v0, v4

    move v1, v4

    move v2, v4

    goto/16 :goto_0

    .line 1577
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p2}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 2767
    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    .line 2775
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_1

    .line 2776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    .line 2777
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 2779
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-nez v0, :cond_1

    .line 2780
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 2801
    :cond_1
    :goto_0
    return-void

    .line 2784
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_3

    .line 2788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    .line 2789
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 2796
    :cond_3
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-eqz v0, :cond_1

    .line 2798
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 770
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 775
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v0, :cond_0

    .line 776
    const-string v0, "browser"

    const-string v1, "BrowserActivity is already resumed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->resumeCurrentTab()V

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 782
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebViewTimers()V

    .line 784
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 791
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 958
    return-void
.end method

.method onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .parameter "view"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 2805
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2806
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 2824
    :goto_0
    return-void

    .line 2811
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2812
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    .line 2813
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 2816
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 2817
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 2819
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2821
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->setStatusBarVisibility(Z)V

    .line 2822
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2823
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method

.method openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 2874
    :goto_0
    return-void

    .line 2868
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 2869
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2870
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2871
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2872
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .locals 5
    .parameter "urlData"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    .line 1827
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1828
    .local v0, currentTab:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1829
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v4, p1, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v1

    .line 1831
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1834
    .local v2, webview:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 1835
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1839
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 1840
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 1841
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1842
    invoke-direct {p0, v1, p1}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    :cond_1
    move-object v3, v1

    .line 1852
    .end local v1           #tab:Lcom/android/browser/Tab;
    .end local v2           #webview:Landroid/webkit/WebView;
    :goto_0
    return-object v3

    .line 1847
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1848
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1850
    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    :cond_3
    move-object v3, v0

    .line 1852
    goto :goto_0
.end method

.method openTabToHomePage()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public postMessage(IIILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2266
    return-void
.end method

.method removeActiveTabPage(Z)V
    .locals 2
    .parameter "needToAttach"

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 1310
    const v0, 0x7f0c0067

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1311
    if-eqz p1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1315
    return-void
.end method

.method removeMessages(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "object"

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2271
    return-void
.end method

.method resetTitleAndRevertLockIcon()V
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->revertLockIcon()V

    .line 1992
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 1993
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 1994
    return-void
.end method

.method revertVoiceTitleBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 732
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 733
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 735
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2076
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2077
    return-void
.end method

.method public setFindDialogText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0, p1}, Lcom/android/browser/FindDialog;->setText(Ljava/lang/String;)V

    .line 1558
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 3507
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 3508
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 3509
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    :cond_0
    return-void
.end method

.method setShouldShowErrorConsole(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    .line 3759
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    if-ne p1, v2, :cond_1

    .line 3789
    :cond_0
    :goto_0
    return-void

    .line 3763
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 3764
    .local v1, t:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 3769
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    .line 3771
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 3773
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz p1, :cond_3

    .line 3775
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v2

    if-lez v2, :cond_2

    .line 3776
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 3782
    :goto_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3778
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 3786
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "title"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 2028
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    .line 2031
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    :goto_0
    return-void

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 2033
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "wtai://wp/mc;"

    const-string v7, "android.intent.category.BROWSABLE"

    const-string v6, "android.intent.action.VIEW"

    .line 2684
    const-string v0, "wtai://wp/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2687
    const-string v0, "wtai://wp/mc;"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wtai://wp/mc;"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2691
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 2757
    :goto_0
    return v0

    .line 2696
    :cond_0
    const-string v0, "wtai://wp/sd;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 2698
    goto :goto_0

    .line 2703
    :cond_1
    const-string v0, "wtai://wp/ap;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 2705
    goto :goto_0

    .line 2711
    :cond_2
    const-string v0, "about:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    .line 2712
    goto :goto_0

    .line 2718
    :cond_3
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2726
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_5

    .line 2727
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 2728
    if-eqz v0, :cond_4

    .line 2729
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://search?q=pname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2731
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2732
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 2733
    goto :goto_0

    .line 2719
    :catch_0
    move-exception v0

    .line 2720
    const-string v1, "Browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2721
    goto/16 :goto_0

    :cond_4
    move v0, v4

    .line 2735
    goto/16 :goto_0

    .line 2741
    :cond_5
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2742
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2744
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    .line 2745
    goto/16 :goto_0

    .line 2747
    :catch_1
    move-exception v0

    .line 2752
    :cond_6
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v0, :cond_7

    .line 2753
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    .line 2754
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    move v0, v5

    .line 2755
    goto/16 :goto_0

    :cond_7
    move v0, v4

    .line 2757
    goto/16 :goto_0
.end method

.method shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 3792
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    return v0
.end method

.method public showFindDialog()V
    .locals 2

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-nez v0, :cond_0

    .line 1551
    new-instance v0, Lcom/android/browser/FindDialog;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 1554
    return-void
.end method

.method showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3420
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3421
    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3423
    if-eqz p5, :cond_0

    .line 3424
    const v0, 0x7f0c0030

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3426
    :cond_0
    if-eqz p6, :cond_1

    .line 3427
    const v0, 0x7f0c0032

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    invoke-virtual {p5, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3431
    :cond_1
    if-nez p4, :cond_3

    .line 3432
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s1"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s2"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3436
    :goto_0
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 3437
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f08000e

    new-instance v0, Lcom/android/browser/BrowserActivity$19;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity$19;-><init>(Lcom/android/browser/BrowserActivity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080010

    new-instance v3, Lcom/android/browser/BrowserActivity$18;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/BrowserActivity$18;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/BrowserActivity$17;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3475
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3477
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3478
    if-eqz p7, :cond_2

    .line 3479
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3483
    :goto_1
    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    .line 3484
    return-void

    .line 3481
    :cond_2
    const v1, 0x7f0c0030

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    move-object v0, p4

    goto :goto_0
.end method

.method showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0c0049

    const v5, 0x7f030012

    .line 3255
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v2

    .line 3257
    if-nez v2, :cond_0

    .line 3342
    :goto_0
    return-void

    .line 3261
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 3263
    const v0, 0x7f0c0034

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3266
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3267
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3269
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f08001a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3273
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3274
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3276
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f08001b

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3280
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3281
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3283
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f08001c

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3287
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3288
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3290
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3294
    :cond_4
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 3295
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    .line 3296
    iput-object p3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 3297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    new-instance v2, Lcom/android/browser/BrowserActivity$16;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$16;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080014

    new-instance v2, Lcom/android/browser/BrowserActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserActivity$15;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$14;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method showTitleBarContextMenu()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 930
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method showVoiceSearchResults(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    .line 419
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 421
    .local v3, client:Landroid/content/ContentProviderClient;
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v4

    .line 422
    .local v4, prov:Landroid/content/ContentProvider;
    move-object v0, v4

    check-cast v0, Lcom/android/browser/BrowserProvider;

    move-object v1, v0

    .line 423
    .local v1, bp:Lcom/android/browser/BrowserProvider;
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/browser/BrowserProvider;->setQueryResults(Ljava/util/ArrayList;)V

    .line 424
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 426
    const-string v5, "browser-key"

    invoke-direct {p0, v5}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 428
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "android.search.CONTEXT_IS_VOICE"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    invoke-virtual {p0, p1, v7, v2, v7}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 430
    return-void
.end method

.method showVoiceTitleBar(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    .line 725
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 726
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 3729
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3730
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v1, v4

    .line 3732
    :goto_0
    sget-object v2, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3733
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3735
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 3736
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 3737
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3740
    :cond_0
    if-eqz v1, :cond_1

    .line 3741
    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3755
    :cond_1
    :goto_1
    return-object v0

    .line 3730
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 3745
    :cond_3
    if-nez v1, :cond_4

    .line 3746
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3747
    invoke-static {v0}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3754
    :cond_4
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 3755
    const-string v1, "http://www.google.com/m?q=%s"

    const-string v2, "%s"

    invoke-static {v0, v1, v2}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1229
    if-nez p3, :cond_1

    .line 1230
    const-string v0, "browser-type"

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1233
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1235
    const-string v1, "android.search.DISABLE_VOICE_SEARCH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1238
    :cond_0
    invoke-super {p0, p1, p2, v0, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1239
    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method stopLoading()V
    .locals 3

    .prologue
    .line 2233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    .line 2234
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 2235
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2236
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2241
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2244
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 2245
    const v0, 0x7f080028

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 2247
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2248
    return-void
.end method

.method switchToTab(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 1251
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 1252
    .local v1, tab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1253
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    .line 1254
    :cond_0
    const/4 v2, 0x0

    .line 1265
    :goto_0
    return v2

    .line 1256
    :cond_1
    if-eqz v0, :cond_2

    .line 1259
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1261
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 1262
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 1263
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 1264
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 1265
    const/4 v2, 0x1

    goto :goto_0
.end method
