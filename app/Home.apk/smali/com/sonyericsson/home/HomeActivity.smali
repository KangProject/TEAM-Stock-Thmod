.class public Lcom/sonyericsson/home/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;,
        Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;,
        Lcom/sonyericsson/home/HomeActivity$SortDialog;,
        Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;,
        Lcom/sonyericsson/home/HomeActivity$AddDialog;,
        Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    }
.end annotation


# static fields
.field public static final ACTION_SET_RUNTIME_THEME:Ljava/lang/String; = "com.sonyericsson.theme.intent.action.SET_RUNTIME_THEME"

.field public static final APPWIDGET_HOST_ID:I = 0xa3d9739

.field private static final DIALOG_ADD:I = 0x1

.field private static final DIALOG_ADD_TO_STAGE:I = 0x3

.field private static final DIALOG_APPTRAY_SORT:I = 0x2

.field private static final DIALOG_PICK_ACTIVITY:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final INFO_TAG:I = 0x0

.field private static final INSTANCE_STATE_DESKTOP_PANE:Ljava/lang/String; = "desktop_pane"

.field private static final LAYER_APPTRAY:I = 0x3

.field private static final LAYER_CORNERS:I = 0x4

.field private static final LAYER_DESKTOP:I = 0x0

.field private static final LAYER_FOLDER:I = 0x2

.field private static final LAYER_STAGE:I = 0x1

.field private static final MENU_GROUP_ALL:I = 0x0

.field private static final MENU_GROUP_DESKTOP_ONLY:I = 0x1

.field private static final MENU_ITEM_ID_ADD:I = 0x0

.field private static final MENU_ITEM_ID_SETTINGS:I = 0x2

.field private static final MENU_ITEM_ID_THEME:I = 0x3

.field private static final MENU_ITEM_ID_WALLPAPER:I = 0x1

.field private static final NORMAL_VIBRATE_DURATION:I = 0x32

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x2

.field private static final REQUEST_PICK_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_WALLPAPER:I = 0x4

.field private static final REQUEST_WIDGET_CONFIGURE:I = 0x3

.field private static final REQUEST_WIDGET_PICK:I = 0x0

.field private static final STK_PACKAGE:Ljava/lang/String; = "com.android.stk"


# instance fields
.field private mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

.field protected mAddTo:I

.field private mAddingFolder:Z

.field private final mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

.field private mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

.field private mAppTrayButton:Landroid/view/View;

.field private mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

.field private mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

.field private mButtonExitOverview:Landroid/view/View;

.field private mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mCurrentMcc:I

.field private mCurrentMnc:I

.field private mCurrentSorting:I

.field private mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field private mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

.field private mDismissCurrentDialogOnResume:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

.field private mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

.field private mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

.field private mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

.field private mHomeButton:Landroid/view/View;

.field private mHomeButtonPressed:Z

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mLandscapeModeEnabled:Z

.field private mLastOpenFolderLayer:I

.field private mLastOpenFolderLocation:Ljava/lang/Object;

.field private mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

.field private mOnCreateStartTime:J

.field private mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field protected mOrientationLandscape:Z

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field protected mSavedFolderIconIndex:I

.field protected mSavedFolderText:Ljava/lang/String;

.field private mScreenEventFilter:Landroid/content/IntentFilter;

.field private mScreenEventReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartSliderEnabled:Z

.field private mStageBreadth:I

.field private mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

.field private mStageLocation:I

.field private mStageView:Landroid/view/View;

.field private mStartupMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

.field private mStealFocusNextModeChange:Z

.field protected mSwitchButtonHideAnim:Landroid/view/animation/Animation;

.field private mSwitchButtonShowAnim:Landroid/view/animation/Animation;

.field private mThemeOptionEnabled:Z

.field private mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

.field private mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

.field private mWaitingForTrashcanClose:Z

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

.field private mWillRetainNonConfigurationInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/HomeActivity;->INFO_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2456
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$17;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$17;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .line 2474
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$18;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$18;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    .line 2711
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideDesktopAndOpenApptay(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideAppTrayButton(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->showAppTrayButton(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/grid/GridLocation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/grid/GridLocation;)Lcom/sonyericsson/grid/GridLocation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sonyericsson/home/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/GlobalCustomizationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/home/HomeActivity;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissCurrentDialogOnResume:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/HomeActivity;ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/HomeActivity;->resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->bounceAppTrayButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentSorting:I

    return v0
.end method

.method static synthetic access$3002(Lcom/sonyericsson/home/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentSorting:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/view/BackgroundFadeSrcXferView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/networkname/NetworkNameManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/sonyericsson/home/HomeActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageBreadth:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->showHomeButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickShortcut()V

    return-void
.end method

.method static synthetic access$4900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/WidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/transfer/TransferView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickWallpaper()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickTheme()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$5800()I
    .locals 1

    .prologue
    .line 132
    sget v0, Lcom/sonyericsson/home/HomeActivity;->INFO_TAG:I

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->removeInfo(Lcom/sonyericsson/home/data/Info;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    return-object v0
.end method

.method private bounceAppTrayButton()V
    .locals 3

    .prologue
    .line 936
    invoke-static {}, Lcom/sonyericsson/animation/JumpRenderer;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 937
    .local v0, jump:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 938
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 939
    return-void
.end method

.method private closeApptrayAndShowDesktop(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->close(Z)V

    .line 895
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideHomeButton(Z)V

    .line 896
    return-void
.end method

.method private createActivityFlow()V
    .locals 2

    .prologue
    .line 1027
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$8;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow;-><init>(Lcom/sonyericsson/home/HomeActivityFlow$Presenter;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    .line 1282
    return-void
.end method

.method private createAppTray(Ljava/lang/Object;)V
    .locals 10
    .parameter "model"

    .prologue
    .line 1286
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v9, v0

    .line 1288
    .local v9, modelSupplied:Z
    :goto_0
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0030

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    const v3, 0x7f0e0003

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/view/ViewGroup;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    .line 1293
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$9;

    invoke-direct {v1, p0, v9}, Lcom/sonyericsson/home/HomeActivity$9;-><init>(Lcom/sonyericsson/home/HomeActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V

    .line 1382
    if-eqz p1, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setRetainedModel(Ljava/lang/Object;)V

    .line 1387
    :goto_1
    return-void

    .line 1286
    .end local v9           #modelSupplied:Z
    :cond_0
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 1385
    .restart local v9       #modelSupplied:Z
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->loadStoredModel()V

    goto :goto_1
.end method

.method private createBadgeBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1798
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeApplication;->getBadgeManager()Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 1799
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$16;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$16;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/badge/BadgeManager;->setBadgeManagerListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 1814
    return-void
.end method

.method private createCornerButtons()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 1744
    const v0, 0x7f0e0009

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 1745
    .local v6, cornerButtonsStub:Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    .line 1746
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/ViewStub;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    .line 1755
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1756
    .local v7, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v8, v8, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1757
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v8, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1759
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v9, v8, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1760
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1762
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v8, v9, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1763
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1765
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v9, v9, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1766
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v9, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1768
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$15;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$15;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerButtonsListener(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;)V

    .line 1795
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private createDesktop()V
    .locals 9

    .prologue
    .line 1390
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1391
    .local v8, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1393
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeApplication;->getDesktopController()Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    .line 1394
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1395
    .local v1, desktopMasterView:Landroid/view/View;
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    iget v7, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->bind(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;F)V

    .line 1398
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    .line 1399
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$10;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/HomeActivity$10;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1407
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$11;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/HomeActivity$11;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V

    .line 1568
    return-void
.end method

.method private createFolderLayer()V
    .locals 8

    .prologue
    .line 1571
    new-instance v7, Lcom/sonyericsson/home/HomeActivity$12;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/HomeActivity$12;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1618
    .local v7, folderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e001a

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/folder/FolderController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/GlobalCustomizationManager;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    .line 1622
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V

    .line 1623
    return-void
.end method

.method private createStage(Ljava/lang/Object;)V
    .locals 9
    .parameter "model"

    .prologue
    .line 1654
    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 1655
    .local v2, stageStub:Landroid/view/ViewStub;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageBreadth:I

    .line 1656
    if-eqz v2, :cond_0

    .line 1657
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1658
    .local v3, imageView:Landroid/widget/ImageView;
    new-instance v0, Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/home/layer/stage/StageController;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Landroid/widget/ImageView;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    .line 1662
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$14;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$14;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V

    .line 1715
    if-eqz p1, :cond_1

    .line 1716
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->setRetainedModel(Ljava/lang/Object;)V

    .line 1722
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setSelfFocusable(Z)V

    .line 1724
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 1718
    .restart local v3       #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->loadStoredModel()V

    goto :goto_0
.end method

.method private createTrashcan()V
    .locals 3

    .prologue
    .line 1626
    const v1, 0x7f0e0039

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1627
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    .line 1628
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$13;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/HomeActivity$13;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->setTrashcanControllerListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;)V

    .line 1651
    return-void
.end method

.method private finishAddWidget(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow;->addWidget(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2136
    :cond_0
    return-void
.end method

.method private hideAppTrayButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 900
    if-eqz p1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 906
    :cond_1
    return-void
.end method

.method private hideDesktopAndOpenApptay(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->defocus()V

    .line 883
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hide(Z)V

    .line 884
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->hide(Z)V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->hide(Z)V

    .line 890
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideAppTrayButton(Z)V

    .line 891
    return-void
.end method

.method private hideHomeButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 910
    if-eqz p1, :cond_0

    .line 911
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 915
    :cond_1
    return-void
.end method

.method private openFolder(Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;Z)V
    .locals 2
    .parameter "infoGroup"
    .parameter "layer"
    .parameter "location"
    .parameter "animate"

    .prologue
    .line 1737
    iput p2, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLayer:I

    .line 1738
    iput-object p3, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLocation:Ljava/lang/Object;

    .line 1739
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/HomeActivity;->resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1740
    .local v0, sourceRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1, p1, v0, p4}, Lcom/sonyericsson/home/layer/folder/FolderController;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;Z)V

    .line 1741
    return-void
.end method

.method private pickShortcut()V
    .locals 7

    .prologue
    .line 2098
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2100
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2101
    .local v3, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2102
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2105
    .local v2, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const v4, 0x7f020054

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2109
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2110
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2111
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2113
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2117
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2118
    return-void
.end method

.method private pickTheme()V
    .locals 3

    .prologue
    .line 2091
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.theme.intent.action.SET_RUNTIME_THEME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2092
    .local v1, pickTheme:Landroid/content/Intent;
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2094
    .local v0, chooser:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2095
    return-void
.end method

.method private pickWallpaper()V
    .locals 3

    .prologue
    .line 2084
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v1, pickWallpaper:Landroid/content/Intent;
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2087
    .local v0, chooser:Landroid/content/Intent;
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2088
    return-void
.end method

.method private prepareWidget(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 2121
    if-eqz p1, :cond_0

    .line 2122
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetConfigureIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 2123
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2124
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/HomeActivityFlow;->startActivitySafelyForResult(Landroid/content/Intent;I)V

    .line 2129
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2126
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->finishAddWidget(I)V

    goto :goto_0
.end method

.method private removeInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2139
    instance-of v1, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v1, :cond_1

    .line 2140
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    check-cast p1, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2150
    :cond_0
    :goto_0
    return-void

    .line 2141
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v1, :cond_2

    .line 2143
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->widgetRemoved(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 2144
    .restart local p1
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 2145
    check-cast p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, resourceName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2147
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/storage/Storage;->removeBitmap(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 2
    .parameter "layer"
    .parameter "location"

    .prologue
    .line 1817
    if-nez p2, :cond_0

    .line 1818
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1822
    :cond_0
    instance-of v1, p2, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 1823
    check-cast p2, Landroid/graphics/Rect;

    .end local p2
    move-object v1, p2

    .line 1842
    :goto_0
    return-object v1

    .line 1826
    .restart local p2
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1828
    .local v0, result:Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_0

    .line 1839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1830
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1, p2, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->calculateRect(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :goto_1
    move-object v1, v0

    .line 1842
    goto :goto_0

    .line 1834
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1, p2, v0}, Lcom/sonyericsson/home/layer/stage/StageController;->calculateRect(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1828
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private roundToNearest100(J)I
    .locals 2
    .parameter "time"

    .prologue
    .line 801
    long-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private setWallpaperDimensions()V
    .locals 7

    .prologue
    .line 2153
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 2155
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2156
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    move v2, v5

    .line 2158
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v3, v5

    .line 2159
    .local v3, width:I
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v1, v5

    .line 2160
    .local v1, height:I
    :goto_2
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 2161
    return-void

    .line 2156
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 2158
    .restart local v2       #isPortrait:Z
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 2159
    .restart local v3       #width:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v1, v5

    goto :goto_2
.end method

.method private setupSmartSlider()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1727
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1728
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->getSmartSliderEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1731
    iput-boolean v2, p0, Lcom/sonyericsson/home/HomeActivity;->mSmartSliderEnabled:Z

    .line 1732
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 1734
    :cond_0
    return-void
.end method

.method private setupTransferView(Lcom/sonyericsson/home/transfer/TransferView;)V
    .locals 2
    .parameter "transferView"

    .prologue
    const/4 v1, 0x1

    .line 942
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$6;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V

    .line 966
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    if-nez v0, :cond_0

    .line 970
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusable(Z)V

    .line 971
    const/high16 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setDescendantFocusability(I)V

    .line 1024
    :goto_0
    return-void

    .line 973
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusable(Z)V

    .line 974
    invoke-virtual {p1, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setResetFocusability(Z)V

    .line 975
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$7;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusHandler(Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;)V

    goto :goto_0
.end method

.method private showAppTrayButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 920
    if-eqz p1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    :cond_1
    return-void
.end method

.method private showHomeButton()V
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 930
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 933
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2025
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    if-eqz p3, :cond_3

    .line 2026
    packed-switch p1, :pswitch_data_0

    .line 2081
    :cond_0
    :goto_0
    return-void

    .line 2029
    :pswitch_0
    const-string v5, "advWidgetName"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2031
    .local v0, advWidgetName:Ljava/lang/String;
    invoke-static {p3}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetId(Landroid/content/Intent;)I

    move-result v1

    .line 2033
    .local v1, appWidgetId:I
    if-eqz v0, :cond_1

    .line 2037
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2038
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->addAdvWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 2041
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->prepareWidget(I)V

    goto :goto_0

    .line 2046
    .end local v0           #advWidgetName:Ljava/lang/String;
    .end local v1           #appWidgetId:I
    :pswitch_1
    invoke-static {p3}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetId(Landroid/content/Intent;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->finishAddWidget(I)V

    goto :goto_0

    .line 2052
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2054
    .local v2, applicationName:Ljava/lang/String;
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2055
    .local v4, shortcutName:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2056
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    goto :goto_0

    .line 2058
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    const/4 v6, 0x2

    invoke-virtual {v5, p3, v6}, Lcom/sonyericsson/home/HomeActivityFlow;->startActivitySafelyForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2063
    .end local v2           #applicationName:Ljava/lang/String;
    .end local v4           #shortcutName:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2064
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 2065
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v5, v3}, Lcom/sonyericsson/home/HomeActivityFlow;->addShortcut(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2070
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_3
    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 2073
    :pswitch_5
    if-eqz p3, :cond_0

    .line 2074
    const-string v5, "appWidgetId"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2076
    .restart local v1       #appWidgetId:I
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 2026
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2070
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1973
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1974
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onBackPressed()Z

    move-result v0

    .line 1976
    .local v0, handled:Z
    if-nez v0, :cond_1

    .line 1977
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v1, :cond_0

    .line 1978
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->sparkle()V

    .line 1980
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    .line 1989
    .end local v0           #handled:Z
    :cond_1
    :goto_0
    return-void

    .line 1982
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1983
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    goto :goto_0

    .line 1984
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1985
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder(Z)V

    goto :goto_0

    .line 1986
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1987
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->close()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 493
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    if-eq v0, v1, :cond_1

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    .line 497
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    .line 498
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    .line 500
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 508
    .local v5, appContext:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v6}, Lcom/sonyericsson/home/HomeApplication;->getPackageLoader()Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;

    .line 510
    .local v11, lastState:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    if-eqz v11, :cond_6

    .line 511
    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 512
    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->globalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    .line 513
    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 514
    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->statistics:Lcom/sonyericsson/home/statistics/Statistics;

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 524
    :goto_0
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    .line 525
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    move v13, v0

    if-nez v13, :cond_7

    .line 528
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->setRequestedOrientation(I)V

    .line 544
    :goto_1
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    move-object v13, v0

    const-string v14, "Application"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v6}, Lcom/sonyericsson/home/HomeApplication;->getApplicationCreateDuration()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/HomeActivity;->roundToNearest100(J)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sonyericsson/home/HomeActivity;->mOnCreateStartTime:J

    .line 551
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 552
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f030012

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 554
    .local v9, contentView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    const/4 v13, 0x1

    :goto_2
    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 562
    const v13, 0x7f0e002f

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    .line 563
    const v13, 0x7f0e002c

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->setWallpaperDimensions()V

    .line 566
    new-instance v13, Lcom/sonyericsson/home/HomeActivity$1;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity$1;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mScreenEventReceiver:Landroid/content/BroadcastReceiver;

    .line 574
    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mScreenEventFilter:Landroid/content/IntentFilter;

    .line 576
    const v13, 0x7f0e002b

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/transfer/TransferView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->setupTransferView(Lcom/sonyericsson/home/transfer/TransferView;)V

    .line 579
    const v13, 0x7f04003d

    move-object/from16 v0, p0

    move v1, v13

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    .line 580
    const v13, 0x7f04003e

    move-object/from16 v0, p0

    move v1, v13

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    .line 582
    new-instance v13, Lcom/sonyericsson/home/networkname/NetworkNameManager;

    const v14, 0x7f0e0031

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/networkname/NetworkNameView;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/networkname/NetworkNameManager;-><init>(Lcom/sonyericsson/home/networkname/NetworkNameView;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    move-object v13, v0

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 586
    const/4 v13, 0x4

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->setDefaultKeyMode(I)V

    .line 587
    const v13, 0x7f0e0015

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    move-object v13, v0

    new-instance v14, Lcom/sonyericsson/home/HomeActivity$2;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity$2;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    const v13, 0x7f0e0006

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    move-object v13, v0

    new-instance v14, Lcom/sonyericsson/home/HomeActivity$3;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity$3;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->createActivityFlow()V

    .line 606
    new-instance v13, Lcom/sonyericsson/home/HomeActivity$4;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity$4;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/home/HomeApplication;->getInfoGroupManager()Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-object v13, v0

    new-instance v14, Lcom/sonyericsson/home/HomeActivity$5;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity$5;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/InfoGroupManager;->setInfoListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/InfoGroupManager;->bind(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 631
    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    .line 632
    .local v7, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v6, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;

    const v13, 0xa3d9739

    invoke-direct {v6, v5, v13}, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 634
    .local v6, appWidgetHost:Landroid/appwidget/AppWidgetHost;
    new-instance v13, Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-direct {v13, v5, v7, v6}, Lcom/sonyericsson/home/widget/WidgetManager;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 635
    new-instance v13, Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v15, v0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->createDesktop()V

    .line 641
    if-eqz v11, :cond_a

    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageModel:Ljava/lang/Object;

    :goto_3
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->createStage(Ljava/lang/Object;)V

    .line 644
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->createCornerButtons()V

    .line 647
    if-eqz v11, :cond_b

    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayModel:Ljava/lang/Object;

    :goto_4
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->createAppTray(Ljava/lang/Object;)V

    .line 650
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->createFolderLayer()V

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->createTrashcan()V

    .line 655
    if-eqz v11, :cond_5

    .line 656
    iget-boolean v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    if-eqz v13, :cond_0

    .line 657
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->hideDesktopAndOpenApptay(Z)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-object v13, v0

    iget v14, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayPane:I

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->moveToPane(I)V

    .line 659
    iget-boolean v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsEditing:Z

    if-eqz v13, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->enterEditMode()V

    .line 664
    :cond_0
    iget-boolean v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    if-eqz v13, :cond_1

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-object v13, v0

    iget v14, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->overviewProgress:F

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setOverviewProgress(F)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-object v13, v0

    if-eqz v13, :cond_1

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->hide(Z)V

    .line 672
    :cond_1
    iget-boolean v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isFolderOpen:Z

    if-eqz v13, :cond_2

    .line 673
    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolder:Lcom/sonyericsson/home/data/InfoGroup;

    iget v14, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLayer:I

    iget-object v15, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLocation:Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/home/HomeActivity;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;Z)V

    .line 675
    iget-boolean v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderRenaming:Z

    if-eqz v13, :cond_2

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/folder/FolderController;->setRenamingFolder(Z)V

    .line 680
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    move-object v13, v0

    if-eqz v13, :cond_3

    .line 681
    iget-boolean v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageCreatingFolder:Z

    if-eqz v13, :cond_3

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/stage/StageController;->setCreatingFolder(Z)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    move-object v13, v0

    iget-object v14, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/stage/StageController;->setDroppedAtInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    move-object v13, v0

    iget-object v14, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/stage/StageController;->setSavedPickedUpInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    move-object v13, v0

    iget v14, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageHintLocation:I

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/stage/StageController;->setHintLocation(I)V

    .line 689
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-object v13, v0

    if-eqz v13, :cond_4

    .line 690
    iget v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-object v13, v0

    iget v14, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->expandCorner(IZ)V

    .line 694
    :cond_4
    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->savedFolderText:Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 695
    iget v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->savedFolderIconIndex:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    .line 696
    iget-boolean v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addingFolder:Z

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    .line 697
    iget v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addTo:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 698
    iget-object v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToDesktopLocation:Lcom/sonyericsson/grid/GridLocation;

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 699
    iget v13, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToStageLocation:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-object v13, v0

    iget-boolean v14, v11, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayDisableDuringSortDialog:Z

    invoke-virtual {v13, v14}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setButtonsDisabled(Z)V

    .line 704
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->createBadgeBroadcastReceiver()V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    move-object v13, v0

    const-string v14, "onCreate"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sonyericsson/home/HomeActivity;->mOnCreateStartTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/HomeActivity;->roundToNearest100(J)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->setupSmartSlider()V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 714
    .local v8, conf:Landroid/content/res/Configuration;
    iget v13, v8, Landroid/content/res/Configuration;->mcc:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    .line 715
    iget v13, v8, Landroid/content/res/Configuration;->mnc:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    .line 716
    return-void

    .line 516
    .end local v6           #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .end local v7           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v8           #conf:Landroid/content/res/Configuration;
    .end local v9           #contentView:Landroid/view/ViewGroup;
    .restart local p1
    :cond_6
    new-instance v13, Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v6}, Lcom/sonyericsson/home/HomeApplication;->getBadgeManager()Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v15

    invoke-direct {v13, v5, v14, v15}, Lcom/sonyericsson/home/resourceload/ResourceLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/badge/BadgeManager;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 518
    new-instance v13, Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-direct {v13, v5}, Lcom/sonyericsson/home/GlobalCustomizationManager;-><init>(Landroid/content/Context;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    .line 519
    new-instance v13, Lcom/sonyericsson/home/layer/AdapterHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    move-object v15, v0

    invoke-direct {v13, v5, v14, v15}, Lcom/sonyericsson/home/layer/AdapterHelper;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/GlobalCustomizationManager;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 521
    new-instance v13, Lcom/sonyericsson/home/statistics/Statistics;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v14, v0

    invoke-direct {v13, v5, v14}, Lcom/sonyericsson/home/statistics/Statistics;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    goto/16 :goto_0

    .line 532
    :cond_7
    :try_start_0
    const-string v13, "uimode"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/UiModeManager;

    .line 533
    .local v12, uiModeManager:Landroid/app/UiModeManager;
    invoke-virtual {v12}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 534
    const/4 v13, 0x5

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 538
    .end local v12           #uiModeManager:Landroid/app/UiModeManager;
    :catch_0
    move-exception v13

    move-object v10, v13

    .line 540
    .local v10, e:Ljava/lang/NoClassDefFoundError;
    const/4 v13, 0x5

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 536
    .end local v10           #e:Ljava/lang/NoClassDefFoundError;
    .restart local v12       #uiModeManager:Landroid/app/UiModeManager;
    :cond_8
    const/4 v13, 0x4

    :try_start_1
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 560
    .end local v12           #uiModeManager:Landroid/app/UiModeManager;
    .restart local v9       #contentView:Landroid/view/ViewGroup;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 641
    .end local p1
    .restart local v6       #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .restart local v7       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 647
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1886
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1898
    :goto_0
    return-object v0

    .line 1888
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$AddDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->access$4000(Lcom/sonyericsson/home/HomeActivity$AddDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1890
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$SortDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$SortDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->access$4200(Lcom/sonyericsson/home/HomeActivity$SortDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1892
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->access$4400(Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1894
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    .line 1895
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->access$4600(Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1886
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1920
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1921
    .local v0, launchSettings:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1924
    const v1, 0x7f070002

    invoke-interface {p1, v4, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1926
    const v1, 0x7f070003

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1928
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    if-eqz v1, :cond_0

    .line 1929
    const/4 v1, 0x3

    const v2, 0x7f070004

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020055

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1932
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f070005

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1935
    return v4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 806
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 810
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    .line 811
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->onDestroy()V

    .line 813
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V

    .line 818
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V

    .line 820
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->onDestroy()V

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerButtonsListener(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;)V

    .line 826
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->onDestroy()V

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onDestroy()V

    .line 831
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->unbind()V

    .line 832
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onDestroy()V

    .line 833
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unbind()V

    .line 834
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->onDestroy()V

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->onDestroy()V

    .line 838
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWillRetainNonConfigurationInstance:Z

    if-nez v0, :cond_4

    .line 840
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->onDestroy()V

    .line 841
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-virtual {v0}, Lcom/sonyericsson/home/statistics/Statistics;->onDestroy()V

    .line 843
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 845
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/home/badge/BadgeManager;->setBadgeManagerListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 852
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusHandler(Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;)V

    .line 853
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V

    .line 854
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->removeAllViews()V

    .line 856
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    .line 857
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    .line 858
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    .line 859
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    .line 860
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    .line 862
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 863
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 864
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 865
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 866
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    .line 868
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    .line 869
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    .line 870
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    .line 871
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    .line 872
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    .line 873
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    .line 874
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    .line 876
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    .line 878
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 879
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1994
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSmartSliderEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, p1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1996
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findSmartSliderView()Landroid/view/View;

    move-result-object v0

    .line 1997
    .local v0, smartSliderView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1998
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1999
    const/4 v1, 0x1

    .line 2003
    .end local v0           #smartSliderView:Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 2008
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2012
    .local v0, handled:Z
    if-nez v0, :cond_0

    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    .line 2015
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sonyericsson/home/HomeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v1, v4

    .line 2020
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/high16 v7, 0x40

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1847
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1849
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1850
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_4

    move v0, v6

    .line 1852
    .local v0, alreadyHome:Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v3}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 1854
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->hasPendingWidgets()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1855
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupPendingWidgets()V

    .line 1858
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_5

    .line 1859
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 1871
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/folder/FolderController;->setRenamingFolder(Z)V

    .line 1874
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 1875
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1876
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1877
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1880
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iput-boolean v6, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    .line 1882
    .end local v0           #alreadyHome:Z
    .end local v2           #v:Landroid/view/View;
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 1850
    goto :goto_0

    .line 1860
    .restart local v0       #alreadyHome:Z
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1861
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    goto :goto_1

    .line 1862
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1863
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    goto :goto_1

    .line 1864
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1865
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder(Z)V

    goto :goto_1

    .line 1866
    :cond_8
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1867
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->close()V

    goto :goto_1

    .line 1868
    :cond_9
    if-eqz v0, :cond_1

    .line 1869
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->moveToPane(IZ)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1951
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1967
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1953
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 1954
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 1955
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    move v0, v1

    .line 1956
    goto :goto_0

    .line 1959
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickWallpaper()V

    move v0, v1

    .line 1960
    goto :goto_0

    .line 1963
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickTheme()V

    move v0, v1

    .line 1964
    goto :goto_0

    .line 1951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 743
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 745
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onPause()V

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->onPause()V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->onPause()V

    .line 751
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->onPause()V

    .line 753
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 755
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 757
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 1903
    packed-switch p1, :pswitch_data_0

    .line 1916
    .end local p2
    :goto_0
    return-void

    .line 1905
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->init()V

    .line 1906
    iput-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissCurrentDialogOnResume:Z

    goto :goto_0

    .line 1912
    :pswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1913
    iput-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissCurrentDialogOnResume:Z

    goto :goto_0

    .line 1903
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1940
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1943
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1944
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1946
    return v1

    :cond_0
    move v0, v2

    .line 1943
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1944
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 485
    const-string v1, "desktop_pane"

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 487
    .local v0, pane:I
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->moveToPane(IZ)V

    .line 488
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 761
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 763
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->onResume()V

    .line 765
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 769
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->isInTouchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    .line 770
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 773
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissCurrentDialogOnResume:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/sonyericsson/home/layer/folder/FolderDialog;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    check-cast v0, Lcom/sonyericsson/home/layer/folder/FolderDialog;

    check-cast v0, Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setDialogListener(Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;)V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onResume(Z)V

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->onResume(Z)V

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->onResume(Z)V

    .line 788
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    if-nez v0, :cond_3

    .line 789
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    iget v3, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V

    .line 792
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_4

    .line 793
    const-string v0, "StartUp"

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 794
    iput-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    .line 797
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    .line 798
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 416
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getChangingConfigurations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 418
    iput-boolean v2, p0, Lcom/sonyericsson/home/HomeActivity;->mWillRetainNonConfigurationInstance:Z

    .line 419
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;

    invoke-direct {v0}, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;-><init>()V

    .line 421
    .local v0, state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->releaseNonRetainedObjects()V

    .line 422
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/GlobalCustomizationManager;->unbindDrawables()V

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/AdapterHelper;->unbindDrawables()V

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->statistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 426
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 427
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->globalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getModel()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageModel:Ljava/lang/Object;

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->isCreatingFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    iput-boolean v2, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageCreatingFolder:Z

    .line 433
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getDroppedAtInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    .line 434
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getSavedPickedUpInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 435
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getHintLocation()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageHintLocation:I

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getModel()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayModel:Ljava/lang/Object;

    .line 440
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    .line 441
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getButtonsDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayDisableDuringSortDialog:Z

    .line 442
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getCurrentPane()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayPane:I

    .line 444
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsEditing:Z

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    .line 447
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    if-eqz v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getOverviewProgress()F

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->overviewProgress:F

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isFolderOpen:Z

    .line 451
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isFolderOpen:Z

    if-eqz v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->getCurrentFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolder:Lcom/sonyericsson/home/data/InfoGroup;

    .line 453
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLayer:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLayer:I

    .line 454
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLocation:Ljava/lang/Object;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLocation:Ljava/lang/Object;

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isRenamingFolder()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderRenaming:Z

    .line 457
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v1, :cond_4

    .line 458
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->getOpenCorner()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    .line 462
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addingFolder:Z

    .line 463
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addTo:I

    .line 464
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToDesktopLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 465
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToStageLocation:I

    .line 466
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->savedFolderText:Ljava/lang/String;

    .line 467
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->savedFolderIconIndex:I

    move-object v1, v0

    .line 472
    .end local v0           #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :goto_1
    return-object v1

    .line 460
    .restart local v0       #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :cond_4
    const/4 v1, -0x1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    goto :goto_0

    .line 472
    .end local v0           #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 479
    const-string v0, "desktop_pane"

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCurrentPane()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 720
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mScreenEventReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mScreenEventFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->sparkle()V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->startListening()V

    .line 729
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 733
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 735
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mScreenEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 737
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onStop()V

    .line 738
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->stopListening()V

    .line 739
    return-void
.end method
