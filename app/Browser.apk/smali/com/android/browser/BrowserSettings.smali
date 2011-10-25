.class Lcom/android/browser/BrowserSettings;
.super Ljava/util/Observable;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSettings$Observer;
    }
.end annotation


# static fields
.field private static defaultFixedFontSize:I

.field private static defaultFontSize:I

.field private static minimumFontSize:I

.field private static minimumLogicalFontSize:I

.field private static pageCacheCapacity:I

.field private static sSingleton:Lcom/android/browser/BrowserSettings;

.field private static textSize:Landroid/webkit/WebSettings$TextSize;

.field private static zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;


# instance fields
.field private appCacheEnabled:Z

.field private appCacheMaxSize:J

.field private appCachePath:Ljava/lang/String;

.field private autoFitPage:Z

.field private databaseEnabled:Z

.field private databasePath:Ljava/lang/String;

.field private defaultTextEncodingName:Ljava/lang/String;

.field private domStorageEnabled:Z

.field private geolocationDatabasePath:Ljava/lang/String;

.field private geolocationEnabled:Z

.field private homeUrl:Ljava/lang/String;

.field private javaScriptCanOpenWindowsAutomatically:Z

.field private javaScriptEnabled:Z

.field private jsFlags:Ljava/lang/String;

.field private landscapeOnly:Z

.field public layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private lightTouch:Z

.field private loadsImagesAutomatically:Z

.field private loadsPageInOverviewMode:Z

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mUserAgentString:Ljava/lang/String;

.field private mWebSettingsToObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/webkit/WebSettings;",
            "Lcom/android/browser/BrowserSettings$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private navDump:Z

.field private openInBackground:Z

.field private pluginState:Landroid/webkit/WebSettings$PluginState;

.field private rememberPasswords:Z

.field private saveFormData:Z

.field private searchEngine:Lcom/android/browser/search/SearchEngine;

.field private searchEngineSettingDisabled:Z

.field private showConsole:Z

.field private showDebugSettings:Z

.field private showSecurityWarnings:Z

.field private tracing:Z

.field private useWideViewPort:Z

.field private userAgent:I

.field private webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

.field private workersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 130
    sput v0, Lcom/android/browser/BrowserSettings;->minimumFontSize:I

    .line 131
    sput v0, Lcom/android/browser/BrowserSettings;->minimumLogicalFontSize:I

    .line 132
    const/16 v0, 0x10

    sput v0, Lcom/android/browser/BrowserSettings;->defaultFontSize:I

    .line 133
    const/16 v0, 0xd

    sput v0, Lcom/android/browser/BrowserSettings;->defaultFixedFontSize:I

    .line 134
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    sput-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 136
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    sput-object v0, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, ""

    .line 678
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 91
    const-string v0, ""

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 93
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->searchEngineSettingDisabled:Z

    .line 105
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 111
    const-string v0, ""

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    .line 116
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 118
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 119
    iput v2, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mUserAgentString:Ljava/lang/String;

    .line 121
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    .line 679
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->reset()V

    .line 680
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mUserAgentString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/browser/BrowserSettings;->defaultFontSize:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/browser/BrowserSettings;->defaultFixedFontSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method static synthetic access$1300()Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/browser/BrowserSettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->databasePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/browser/BrowserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->updateTabControlSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$PluginState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/browser/BrowserSettings;->minimumFontSize:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/browser/BrowserSettings;->minimumLogicalFontSize:I

    return v0
.end method

.method private getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "{CID}"

    .line 669
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, url:Ljava/lang/String;
    const-string v1, "{CID}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 671
    const-string v1, "{CID}"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_0
    return-object v0
.end method

.method static getInstance()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0}, Lcom/android/browser/BrowserSettings;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    .line 559
    :cond_0
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method private maybeDisableWebsiteSettings(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 624
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v1, v0

    .line 625
    .local v1, activity:Landroid/preference/PreferenceActivity;
    const-string v3, "website_settings"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 627
    .local v2, screen:Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 628
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v3

    new-instance v4, Lcom/android/browser/BrowserSettings$1;

    invoke-direct {v4, p0, v2}, Lcom/android/browser/BrowserSettings$1;-><init>(Lcom/android/browser/BrowserSettings;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 636
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v3

    new-instance v4, Lcom/android/browser/BrowserSettings$2;

    invoke-direct {v4, p0, v2}, Lcom/android/browser/BrowserSettings$2;-><init>(Lcom/android/browser/BrowserSettings;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v3, v4}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 643
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 687
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 688
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 689
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    .line 690
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 691
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 692
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 693
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 694
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 695
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 696
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    .line 697
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 698
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 700
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    .line 701
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    .line 702
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    .line 703
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    .line 704
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    .line 705
    return-void
.end method

.method private updateTabControlSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->setShouldShowErrorConsole(Z)V

    .line 618
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->setRequestedOrientation(I)V

    .line 621
    return-void

    :cond_0
    move v1, v2

    .line 616
    goto :goto_0

    .line 618
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;
    .locals 3
    .parameter "s"

    .prologue
    .line 529
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserSettings$Observer;

    .line 530
    .local v1, old:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v1, :cond_0

    .line 531
    invoke-super {p0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 533
    :cond_0
    new-instance v0, Lcom/android/browser/BrowserSettings$Observer;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserSettings$Observer;-><init>(Landroid/webkit/WebSettings;)V

    .line 534
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 536
    return-object v0
.end method

.method clearCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 579
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 580
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 582
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 583
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 586
    .end local v0           #current:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method clearCookies(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 589
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 590
    return-void
.end method

.method clearDatabases(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 646
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 647
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->maybeDisableWebsiteSettings(Landroid/content/Context;)V

    .line 648
    return-void
.end method

.method clearFormData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 599
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 600
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 602
    .local v0, currentTopView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 606
    .end local v0           #currentTopView:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method clearHistory(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 594
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 595
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 596
    return-void
.end method

.method clearLocationAccess(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 651
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 652
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->maybeDisableWebsiteSettings(Landroid/content/Context;)V

    .line 653
    return-void
.end method

.method clearPasswords(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 609
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 610
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 611
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 612
    return-void
.end method

.method public deleteObserver(Landroid/webkit/WebSettings;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 544
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserSettings$Observer;

    .line 545
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-super {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 549
    :cond_0
    return-void
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJsFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchEngine()Lcom/android/browser/search/SearchEngine;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    return-object v0
.end method

.method public getSearchEngineSettingDisabled()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->searchEngineSettingDisabled:Z

    return v0
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method public isNavDump()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method public isTracing()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    return v0
.end method

.method public loadFromDb(Landroid/content/Context;)V
    .locals 12
    .parameter "ctx"

    .prologue
    const/4 v10, 0x0

    const-string v11, ""

    .line 278
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 281
    .local v9, p:Landroid/content/SharedPreferences;
    const-string v2, "appcache"

    invoke-virtual {p1, v2, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    .line 283
    new-instance v2, Lcom/android/browser/WebStorageSizeManager;

    new-instance v3, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/android/browser/WebStorageSizeManager;-><init>(Landroid/content/Context;Lcom/android/browser/WebStorageSizeManager$DiskInfo;Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;)V

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    .line 287
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    invoke-virtual {v2}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 289
    const-string v2, "databases"

    invoke-virtual {p1, v2, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->databasePath:Ljava/lang/String;

    .line 291
    const-string v2, "geolocation"

    invoke-virtual {p1, v2, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    .line 293
    const-string v2, "homepage"

    const-string v3, ""

    invoke-interface {v9, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v11, :cond_0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 303
    .local v6, am:Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_3

    .line 304
    const/4 v2, 0x5

    sput v2, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    .line 312
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "content://com.sonyericsson.provider.useragent"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 314
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 316
    .local v7, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 317
    if-eqz v7, :cond_1

    .line 318
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->mUserAgentString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_1
    if-eqz v7, :cond_2

    .line 326
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v9}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 335
    return-void

    .line 306
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x1

    sput v2, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    goto :goto_0

    .line 322
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 323
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BrowserSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No permissions to read UserAgentProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    if-eqz v7, :cond_2

    .line 326
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 325
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_4

    .line 326
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public openInBackground()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    return v0
.end method

.method resetDefaultPreferences(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->reset()V

    .line 657
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    .local v0, p:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 660
    const v1, 0x7f050002

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 663
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    invoke-virtual {v1}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 666
    return-void
.end method

.method public setHomePage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 468
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 470
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "homepage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    iput-object p2, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 473
    return-void
.end method

.method setSearchEngineSettingDisabled(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "disabled"

    .prologue
    .line 476
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 478
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "search-engine-disabled"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    iput-boolean p2, p0, Lcom/android/browser/BrowserSettings;->searchEngineSettingDisabled:Z

    .line 481
    return-void
.end method

.method setTabControl(Lcom/android/browser/TabControl;)V
    .locals 0
    .parameter "tabControl"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    .line 567
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->updateTabControlSettings()V

    .line 568
    return-void
.end method

.method public showDebugSettings()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    return v0
.end method

.method public showSecurityWarnings()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    return v0
.end method

.method syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 11
    .parameter "ctx"
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 339
    const-string v6, "homepage"

    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 341
    const-string v6, "search-engine-disabled"

    invoke-interface {p2, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->searchEngineSettingDisabled:Z

    .line 342
    const-string v6, "search_engine"

    const-string v7, "google"

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, searchEngineName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v6}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 345
    :cond_0
    iget-object v6, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v6, :cond_2

    .line 346
    iget-object v6, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v6}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 350
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 351
    iget-object v6, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1           #i:I
    :cond_1
    iget-object v6, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v6}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 356
    :cond_2
    invoke-static {p1, v4}, Lcom/android/browser/search/SearchEngines;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    .line 358
    :cond_3
    const-string v6, "BrowserSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected search engine: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v6, "load_images"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 362
    const-string v6, "enable_javascript"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 364
    const-string v6, "plugin_state"

    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v7}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    .line 366
    const-string v6, "block_popup_windows"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    if-nez v7, :cond_6

    move v7, v10

    :goto_1
    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v10

    :goto_2
    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 369
    const-string v6, "show_security_warnings"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 371
    const-string v6, "remember_passwords"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 373
    const-string v6, "save_formdata"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 375
    const-string v6, "accept_cookies"

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v7

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 377
    .local v0, accept_cookies:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 378
    const-string v6, "open_in_background"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 379
    const-string v6, "text_size"

    sget-object v7, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v7}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v6

    sput-object v6, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 381
    const-string v6, "default_zoom"

    sget-object v7, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v7}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v6

    sput-object v6, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    .line 383
    const-string v6, "autofit_pages"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 384
    const-string v6, "load_page"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 386
    const-string v6, "landscape_only"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 388
    .local v2, landscapeOnlyTemp:Z
    iget-boolean v6, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    if-eq v2, v6, :cond_4

    .line 389
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    .line 391
    :cond_4
    iput-boolean v10, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 392
    iget-boolean v6, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    if-eqz v6, :cond_8

    .line 393
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 397
    :goto_3
    const-string v6, "default_text_encoding"

    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 401
    const-string v6, "debug_menu"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 404
    iget-boolean v6, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-eqz v6, :cond_5

    .line 405
    const-string v6, "small_screen"

    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_9

    move v7, v10

    :goto_4
    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 408
    .local v5, small_screen:Z
    if-eqz v5, :cond_a

    .line 409
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 420
    :goto_5
    const-string v6, "wide_viewport"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 421
    const-string v6, "enable_tracing"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 422
    const-string v6, "enable_light_touch"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 423
    const-string v6, "enable_nav_dump"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 424
    const-string v6, "user_agent"

    const-string v7, "0"

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 428
    .end local v5           #small_screen:Z
    :cond_5
    const-string v6, "js_engine_flags"

    const-string v7, ""

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    .line 435
    const-string v6, "javascript_console"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    .line 438
    const-string v6, "enable_appcache"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    .line 439
    const-string v6, "enable_database"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    .line 440
    const-string v6, "enable_domstorage"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    .line 441
    const-string v6, "enable_geolocation"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    .line 442
    const-string v6, "enable_workers"

    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    .line 444
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 445
    return-void

    .end local v0           #accept_cookies:Z
    .end local v2           #landscapeOnlyTemp:Z
    :cond_6
    move v7, v9

    .line 366
    goto/16 :goto_1

    :cond_7
    move v6, v9

    goto/16 :goto_2

    .line 395
    .restart local v0       #accept_cookies:Z
    .restart local v2       #landscapeOnlyTemp:Z
    :cond_8
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_3

    :cond_9
    move v7, v9

    .line 405
    goto/16 :goto_4

    .line 411
    .restart local v5       #small_screen:Z
    :cond_a
    const-string v6, "normal_layout"

    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_b

    move v7, v10

    :goto_6
    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 413
    .local v3, normal_layout:Z
    if-eqz v3, :cond_c

    .line 414
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_5

    .end local v3           #normal_layout:Z
    :cond_b
    move v7, v9

    .line 411
    goto :goto_6

    .line 416
    .restart local v3       #normal_layout:Z
    :cond_c
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v6, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_5
.end method

.method public toggleDebugSettings()V
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 517
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 518
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 519
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update()V
    .locals 0

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->setChanged()V

    .line 575
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->notifyObservers()V

    .line 576
    return-void
.end method
