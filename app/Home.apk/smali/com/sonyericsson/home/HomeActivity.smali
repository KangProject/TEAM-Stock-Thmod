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
        Lcom/sonyericsson/home/HomeActivity$DeskStandListener;,
        Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    }
.end annotation


# static fields
.field public static final ACTION_SET_RUNTIME_THEME:Ljava/lang/String; = "com.sonyericsson.theme.intent.action.SET_RUNTIME_THEME"

.field public static final APPWIDGET_HOST_ID:I = 0xa3d9739

.field private static final DIALOG_ADD:I = 0x1

.field private static final DIALOG_ADD_TO_STAGE:I = 0x3

.field private static final DIALOG_APPTRAY_SORT:I = 0x2

.field private static final DIALOG_FBI_APP_SHARE:I = 0x5

.field private static final DIALOG_PICK_ACTIVITY:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final INFO_TAG:I = 0x0

.field private static final INSTANCE_STATE_DESKTOP_PANE:Ljava/lang/String; = "desktop_pane"

.field private static final LAYER_APPTRAY:I = 0x3

.field private static final LAYER_CORNERS:I = 0x4

.field private static final LAYER_DESKTOP:I = 0x0

.field private static final LAYER_FOLDER:I = 0x2

.field private static final LAYER_STAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HomeActivity"

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

.field private mDefaultOrientation:I

.field private mDeskStandListener:Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

.field private mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field private mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

.field private mDismissDeleteDialogOnResume:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

.field private mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

.field private mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

.field private mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

.field private mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

.field private mHistoryFocus:Landroid/view/View;

.field private mHomeButton:Landroid/view/View;

.field private mHomeButtonPressed:Z

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mLandscapeModeEnabled:Z

.field private mLastOpenFolderLayer:I

.field private mLastOpenFolderLocation:Ljava/lang/Object;

.field private mLockCornerVisibility:Z

.field private mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

.field private mOnCreateStartTime:J

.field private mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field protected mOrientationLandscape:Z

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

.field private mRenamingFolder:Z

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field protected mSavedFolderText:Ljava/lang/String;

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
    .line 195
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/HomeActivity;->INFO_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 332
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    .line 2600
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$18;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$18;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .line 2618
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$19;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$19;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    .line 2856
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideDesktopAndOpenApptay(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideAppTrayButton(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->showAppTrayButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/grid/GridLocation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/grid/GridLocation;)Lcom/sonyericsson/grid/GridLocation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sonyericsson/home/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    return p1
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/home/HomeActivity;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissDeleteDialogOnResume:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/HomeActivity;ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/HomeActivity;->resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->bounceAppTrayButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentSorting:I

    return v0
.end method

.method static synthetic access$3002(Lcom/sonyericsson/home/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentSorting:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/view/BackgroundFadeSrcXferView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/networkname/NetworkNameManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sonyericsson/home/HomeActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageBreadth:I

    return v0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->showHomeButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLockCornerVisibility:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mLockCornerVisibility:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/transfer/TransferView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    return v0
.end method

.method static synthetic access$5100(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickShortcut()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/WidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickWallpaper()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickTheme()V

    return-void
.end method

.method static synthetic access$5700(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->removeInfo(Lcom/sonyericsson/home/data/Info;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$6200()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/sonyericsson/home/HomeActivity;->INFO_TAG:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    return-object v0
.end method

.method private bounceAppTrayButton()V
    .locals 3

    .prologue
    .line 948
    invoke-static {}, Lcom/sonyericsson/animation/JumpRenderer;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 949
    .local v0, jump:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 950
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 951
    return-void
.end method

.method private closeApptrayAndShowDesktop(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->close(Z)V

    .line 907
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideHomeButton(Z)V

    .line 908
    return-void
.end method

.method private closeFolder(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder(Z)V

    .line 1782
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->restoreFocus()V

    .line 1783
    return-void
.end method

.method private createActivityFlow()V
    .locals 2

    .prologue
    .line 1047
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$7;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow;-><init>(Lcom/sonyericsson/home/HomeActivityFlow$Presenter;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    .line 1285
    return-void
.end method

.method private createAppShareDropZone()V
    .locals 4

    .prologue
    .line 1625
    const/high16 v2, 0x7f0e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1626
    .local v0, appShareView:Landroid/view/View;
    const v2, 0x7f0e003f

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1628
    .local v1, mainLayer:Landroid/view/View;
    new-instance v2, Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    .line 1629
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    new-instance v3, Lcom/sonyericsson/home/HomeActivity$12;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/home/HomeActivity$12;-><init>(Lcom/sonyericsson/home/HomeActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->setDropZoneControllerListener(Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;)V

    .line 1660
    return-void
.end method

.method private createAppTray(Ljava/lang/Object;)V
    .locals 10
    .parameter "model"

    .prologue
    .line 1289
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v9, v0

    .line 1291
    .local v9, modelSupplied:Z
    :goto_0
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0043

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    const v3, 0x7f0e000a

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

    .line 1296
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$8;

    invoke-direct {v1, p0, v9}, Lcom/sonyericsson/home/HomeActivity$8;-><init>(Lcom/sonyericsson/home/HomeActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V

    .line 1383
    if-eqz p1, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setRetainedModel(Ljava/lang/Object;)V

    .line 1388
    :goto_1
    return-void

    .line 1289
    .end local v9           #modelSupplied:Z
    :cond_0
    const/4 v0, 0x0

    move v9, v0

    goto :goto_0

    .line 1386
    .restart local v9       #modelSupplied:Z
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->loadStoredModel()V

    goto :goto_1
.end method

.method private createBadgeBroadcastReceiver()V
    .locals 3

    .prologue
    .line 1867
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeApplication;->getBadgeManager()Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 1868
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$16;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$16;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/home/badge/BadgeManager;->setBadgeManagerListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 1883
    return-void
.end method

.method private createCornerButtons()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 1797
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 1798
    .local v6, cornerButtonsStub:Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    .line 1799
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/ViewStub;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    .line 1808
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1809
    .local v7, rect:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v8, v8, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1810
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v8, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1812
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v9, v8, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1813
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1815
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v8, v9, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1816
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1818
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v9, v9, v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1819
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v9, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setExtraHintRect(ILandroid/graphics/Rect;)V

    .line 1821
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$15;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$15;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerButtonsListener(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;)V

    .line 1864
    .end local v7           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private createDesktop()V
    .locals 10

    .prologue
    .line 1391
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1392
    .local v9, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1394
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeApplication;->getDesktopController()Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    .line 1395
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1396
    .local v2, desktopMasterView:Landroid/view/View;
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    iget v8, v9, Landroid/util/DisplayMetrics;->density:F

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->bind(Landroid/app/Activity;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;F)V

    .line 1399
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    .line 1400
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$9;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$10;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V

    .line 1570
    return-void
.end method

.method private createFolderLayer()V
    .locals 8

    .prologue
    .line 1573
    new-instance v7, Lcom/sonyericsson/home/HomeActivity$11;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/HomeActivity$11;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1617
    .local v7, folderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e002c

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/home/layer/folder/FolderController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    .line 1621
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V

    .line 1622
    return-void
.end method

.method private createStage(Ljava/lang/Object;)V
    .locals 9
    .parameter "model"

    .prologue
    .line 1691
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 1692
    .local v2, stageStub:Landroid/view/ViewStub;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageBreadth:I

    .line 1693
    if-eqz v2, :cond_0

    .line 1694
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1695
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

    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$14;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$14;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V

    .line 1751
    if-eqz p1, :cond_1

    .line 1752
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->setRetainedModel(Ljava/lang/Object;)V

    .line 1758
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setSelfFocusable(Z)V

    .line 1760
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void

    .line 1754
    .restart local v3       #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->loadStoredModel()V

    goto :goto_0
.end method

.method private createTrashcan()V
    .locals 3

    .prologue
    .line 1663
    const v1, 0x7f0e004c

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1664
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    .line 1665
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$13;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/HomeActivity$13;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->setTrashcanControllerListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;)V

    .line 1688
    return-void
.end method

.method private finishAddWidget(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow;->addWidget(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2220
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2223
    :cond_0
    return-void
.end method

.method private hideAppTrayButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 912
    if-eqz p1, :cond_0

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 918
    :cond_1
    return-void
.end method

.method private hideDesktopAndOpenApptay(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->defocus()V

    .line 895
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hide(Z)V

    .line 896
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->hide(Z)V

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->hide(Z)V

    .line 902
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideAppTrayButton(Z)V

    .line 903
    return-void
.end method

.method private hideHomeButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 922
    if-eqz p1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 927
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
    .line 1773
    iput p2, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLayer:I

    .line 1774
    iput-object p3, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLocation:Ljava/lang/Object;

    .line 1775
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/HomeActivity;->resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1776
    .local v0, sourceRect:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->rememberFocus()V

    .line 1777
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1, p1, v0, p4}, Lcom/sonyericsson/home/layer/folder/FolderController;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;Z)V

    .line 1778
    return-void
.end method

.method private pickShortcut()V
    .locals 7

    .prologue
    .line 2185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2187
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2188
    .local v3, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2192
    .local v2, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const v4, 0x7f02004d

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2194
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2196
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2198
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2200
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2204
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2205
    return-void
.end method

.method private pickTheme()V
    .locals 3

    .prologue
    .line 2178
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.theme.intent.action.SET_RUNTIME_THEME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2179
    .local v1, pickTheme:Landroid/content/Intent;
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2181
    .local v0, chooser:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2182
    return-void
.end method

.method private pickWallpaper()V
    .locals 3

    .prologue
    .line 2171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2172
    .local v1, pickWallpaper:Landroid/content/Intent;
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2174
    .local v0, chooser:Landroid/content/Intent;
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2175
    return-void
.end method

.method private prepareWidget(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 2208
    if-eqz p1, :cond_0

    .line 2209
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetConfigureIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 2210
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2211
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/HomeActivityFlow;->startActivitySafelyForResult(Landroid/content/Intent;I)V

    .line 2216
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2213
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->finishAddWidget(I)V

    goto :goto_0
.end method

.method private rememberFocus()V
    .locals 1

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHistoryFocus:Landroid/view/View;

    .line 1787
    return-void
.end method

.method private removeInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2226
    instance-of v1, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v1, :cond_1

    .line 2227
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    check-cast p1, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2237
    :cond_0
    :goto_0
    return-void

    .line 2228
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v1, :cond_2

    .line 2230
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->widgetRemoved(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 2231
    .restart local p1
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 2232
    check-cast p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v0

    .line 2233
    .local v0, resourceName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2234
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
    .line 1886
    if-nez p2, :cond_0

    .line 1887
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1891
    :cond_0
    instance-of v1, p2, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 1892
    check-cast p2, Landroid/graphics/Rect;

    .end local p2
    move-object v1, p2

    .line 1911
    :goto_0
    return-object v1

    .line 1895
    .restart local p2
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1897
    .local v0, result:Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_0

    .line 1908
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1899
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1, p2, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->calculateRect(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :goto_1
    move-object v1, v0

    .line 1911
    goto :goto_0

    .line 1903
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1, p2, v0}, Lcom/sonyericsson/home/layer/stage/StageController;->calculateRect(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restoreFocus()V
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHistoryFocus:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHistoryFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHistoryFocus:Landroid/view/View;

    .line 1794
    :cond_0
    return-void
.end method

.method private roundToNearest100(J)I
    .locals 2
    .parameter "time"

    .prologue
    .line 805
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
    .line 2240
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 2242
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2243
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    move v2, v5

    .line 2245
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v3, v5

    .line 2246
    .local v3, width:I
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v1, v5

    .line 2247
    .local v1, height:I
    :goto_2
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 2248
    return-void

    .line 2243
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 2245
    .restart local v2       #isPortrait:Z
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 2246
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

    .line 1763
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1764
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->getSmartSliderEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1767
    iput-boolean v2, p0, Lcom/sonyericsson/home/HomeActivity;->mSmartSliderEnabled:Z

    .line 1768
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 1770
    :cond_0
    return-void
.end method

.method private setupTransferView(Lcom/sonyericsson/home/transfer/TransferView;)V
    .locals 2
    .parameter "transferView"

    .prologue
    const/4 v1, 0x1

    .line 954
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$5;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V

    .line 986
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    if-nez v0, :cond_0

    .line 990
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusable(Z)V

    .line 991
    const/high16 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setDescendantFocusability(I)V

    .line 1044
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusable(Z)V

    .line 994
    invoke-virtual {p1, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setResetFocusability(Z)V

    .line 995
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$6;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusHandler(Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;)V

    goto :goto_0
.end method

.method private showAppTrayButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 930
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

    .line 932
    if-eqz p1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    :cond_1
    return-void
.end method

.method private showHomeButton()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 945
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
    .line 2112
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    if-eqz p3, :cond_3

    .line 2113
    packed-switch p1, :pswitch_data_0

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2116
    :pswitch_0
    const-string v5, "advWidgetName"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2118
    .local v0, advWidgetName:Ljava/lang/String;
    invoke-static {p3}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetId(Landroid/content/Intent;)I

    move-result v1

    .line 2120
    .local v1, appWidgetId:I
    if-eqz v0, :cond_1

    .line 2124
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 2125
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->addAdvWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 2128
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->prepareWidget(I)V

    goto :goto_0

    .line 2133
    .end local v0           #advWidgetName:Ljava/lang/String;
    .end local v1           #appWidgetId:I
    :pswitch_1
    invoke-static {p3}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetId(Landroid/content/Intent;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->finishAddWidget(I)V

    goto :goto_0

    .line 2139
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2141
    .local v2, applicationName:Ljava/lang/String;
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2142
    .local v4, shortcutName:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2143
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    goto :goto_0

    .line 2145
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    const/4 v6, 0x2

    invoke-virtual {v5, p3, v6}, Lcom/sonyericsson/home/HomeActivityFlow;->startActivitySafelyForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2150
    .end local v2           #applicationName:Ljava/lang/String;
    .end local v4           #shortcutName:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2151
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 2152
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v5, v3}, Lcom/sonyericsson/home/HomeActivityFlow;->addShortcut(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2157
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_3
    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 2160
    :pswitch_5
    if-eqz p3, :cond_0

    .line 2161
    const-string v5, "appWidgetId"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2163
    .restart local v1       #appWidgetId:I
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 2113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2157
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

    .line 2061
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2062
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onBackPressed()Z

    move-result v0

    .line 2064
    .local v0, handled:Z
    if-nez v0, :cond_1

    .line 2065
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v1, :cond_0

    .line 2066
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->sparkle()V

    .line 2068
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    .line 2077
    .end local v0           #handled:Z
    :cond_1
    :goto_0
    return-void

    .line 2070
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2071
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    goto :goto_0

    .line 2072
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2073
    invoke-direct {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->closeFolder(Z)V

    goto :goto_0

    .line 2074
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2075
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->close()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 504
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    if-eq v0, v1, :cond_1

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    .line 510
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    .line 511
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    .line 513
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 520
    .local v0, appContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeApplication;->getPackageLoader()Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 521
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeApplication;->getInfoGroupManager()Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 522
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;

    .line 523
    .local v5, lastState:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    if-eqz v5, :cond_8

    .line 524
    iget-object v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 525
    iget-object v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 526
    iget-object v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->statistics:Lcom/sonyericsson/home/statistics/Statistics;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 534
    :goto_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    .line 535
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    .line 537
    iget-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mLandscapeModeEnabled:Z

    if-nez v7, :cond_9

    .line 538
    const/4 v7, 0x1

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    .line 554
    :goto_1
    iget v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->setRequestedOrientation(I)V

    .line 556
    new-instance v7, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDeskStandListener:Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

    .line 558
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    .line 559
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    const-string v8, "Application"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeApplication;->getApplicationCreateDuration()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/sonyericsson/home/HomeActivity;->roundToNearest100(J)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sonyericsson/home/HomeActivity;->mOnCreateStartTime:J

    .line 566
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 567
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030014

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 570
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 573
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mOrientationLandscape:Z

    .line 574
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 575
    const v7, 0x7f0e0042

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    .line 576
    const v7, 0x7f0e003e

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    .line 577
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->setWallpaperDimensions()V

    .line 579
    const v7, 0x7f0e003d

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/transfer/TransferView;

    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    .line 580
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->setupTransferView(Lcom/sonyericsson/home/transfer/TransferView;)V

    .line 582
    const v7, 0x7f04003e

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    .line 583
    const v7, 0x7f04003f

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    .line 585
    new-instance v7, Lcom/sonyericsson/home/networkname/NetworkNameManager;

    const v8, 0x7f0e0044

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-direct {v7, p1}, Lcom/sonyericsson/home/networkname/NetworkNameManager;-><init>(Lcom/sonyericsson/home/networkname/NetworkNameView;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    .line 588
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 589
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->setDefaultKeyMode(I)V

    .line 590
    const v7, 0x7f0e001c

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    .line 591
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    new-instance v8, Lcom/sonyericsson/home/HomeActivity$1;

    invoke-direct {v8, p0}, Lcom/sonyericsson/home/HomeActivity$1;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    const v7, 0x7f0e000d

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    .line 597
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 598
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    new-instance v8, Lcom/sonyericsson/home/HomeActivity$2;

    invoke-direct {v8, p0}, Lcom/sonyericsson/home/HomeActivity$2;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createActivityFlow()V

    .line 609
    new-instance v7, Lcom/sonyericsson/home/HomeActivity$3;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/HomeActivity$3;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 623
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v8, Lcom/sonyericsson/home/HomeActivity$4;

    invoke-direct {v8, p0}, Lcom/sonyericsson/home/HomeActivity$4;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/InfoGroupManager;->setInfoListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;)V

    .line 629
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v7, p0, v8}, Lcom/sonyericsson/home/layer/InfoGroupManager;->bind(Landroid/app/Activity;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 632
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 633
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v1, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;

    const v7, 0xa3d9739

    invoke-direct {v1, v0, v7}, Lcom/sonyericsson/home/widget/HomeAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 635
    .local v1, appWidgetHost:Landroid/appwidget/AppWidgetHost;
    new-instance v7, Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-direct {v7, v0, v2, v1}, Lcom/sonyericsson/home/widget/WidgetManager;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 636
    new-instance v7, Lcom/sonyericsson/home/widget/AdvWidgetManager;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    iget-object v9, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v7, p0, v8, v9}, Lcom/sonyericsson/home/widget/AdvWidgetManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 639
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createDesktop()V

    .line 642
    if-eqz v5, :cond_c

    iget-object v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageModel:Ljava/lang/Object;

    :goto_3
    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->createStage(Ljava/lang/Object;)V

    .line 645
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createCornerButtons()V

    .line 648
    if-eqz v5, :cond_d

    iget-object v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayModel:Ljava/lang/Object;

    :goto_4
    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->createAppTray(Ljava/lang/Object;)V

    .line 651
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createFolderLayer()V

    .line 654
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createAppShareDropZone()V

    .line 657
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createTrashcan()V

    .line 659
    if-eqz v5, :cond_5

    .line 660
    iget-boolean v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    if-eqz v7, :cond_0

    .line 661
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->hideDesktopAndOpenApptay(Z)V

    .line 662
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget v8, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayPane:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->moveToPane(I)V

    .line 663
    iget-boolean v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsEditing:Z

    if-eqz v7, :cond_0

    .line 664
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->enterEditMode()V

    .line 668
    :cond_0
    iget-boolean v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    if-eqz v7, :cond_1

    .line 669
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget v8, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->overviewProgress:F

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setOverviewProgress(F)V

    .line 670
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v7, :cond_1

    .line 672
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->hide(Z)V

    .line 676
    :cond_1
    iget-boolean v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isFolderOpen:Z

    if-eqz v7, :cond_2

    .line 677
    iget-object v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolder:Lcom/sonyericsson/home/data/InfoGroup;

    iget v8, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLayer:I

    iget-object v9, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLocation:Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/sonyericsson/home/HomeActivity;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;Z)V

    .line 679
    iget-boolean v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderRenaming:Z

    if-eqz v7, :cond_2

    .line 680
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/folder/FolderController;->setRenamingFolder(Z)V

    .line 684
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v7, :cond_3

    .line 685
    iget-boolean v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageCreatingFolder:Z

    if-eqz v7, :cond_3

    .line 686
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->setCreatingFolder(Z)V

    .line 687
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v8, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->setDroppedAtInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 688
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-object v8, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->setSavedPickedUpInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 689
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget v8, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageHintLocation:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/stage/StageController;->setHintLocation(I)V

    .line 693
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v7, :cond_4

    .line 694
    iget v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 695
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    iget v8, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->expandCorner(IZ)V

    .line 698
    :cond_4
    iget-object v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->savedFolderText:Ljava/lang/String;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 699
    iget-boolean v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addingFolder:Z

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    .line 700
    iget-boolean v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderRenaming:Z

    iput-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mRenamingFolder:Z

    .line 701
    iget v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addTo:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 702
    iget-object v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToDesktopLocation:Lcom/sonyericsson/grid/GridLocation;

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 703
    iget v7, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToStageLocation:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    .line 704
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-boolean v8, v5, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayDisableDuringSortDialog:Z

    invoke-virtual {v7, v8}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setButtonsDisabled(Z)V

    .line 708
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createBadgeBroadcastReceiver()V

    .line 710
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    const-string v8, "onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sonyericsson/home/HomeActivity;->mOnCreateStartTime:J

    sub-long/2addr v10, v12

    invoke-direct {p0, v10, v11}, Lcom/sonyericsson/home/HomeActivity;->roundToNearest100(J)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->setupSmartSlider()V

    .line 717
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 718
    .local v3, conf:Landroid/content/res/Configuration;
    iget v7, v3, Landroid/content/res/Configuration;->mcc:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    .line 719
    iget v7, v3, Landroid/content/res/Configuration;->mnc:I

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    .line 721
    iget-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    if-eqz v7, :cond_6

    .line 722
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    iget-object v9, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V

    .line 725
    :cond_6
    iget-boolean v7, p0, Lcom/sonyericsson/home/HomeActivity;->mRenamingFolder:Z

    if-eqz v7, :cond_7

    .line 726
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v7}, Lcom/sonyericsson/home/layer/folder/FolderController;->onCreate()V

    .line 728
    :cond_7
    return-void

    .line 528
    .end local v1           #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v3           #conf:Landroid/content/res/Configuration;
    .restart local p1
    :cond_8
    new-instance v7, Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v9, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeApplication;->getBadgeManager()Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v10

    invoke-direct {v7, v0, v8, v9, v10}, Lcom/sonyericsson/home/resourceload/ResourceLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/badge/BadgeManager;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 530
    new-instance v7, Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {v7, v0, v8}, Lcom/sonyericsson/home/layer/AdapterHelper;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 531
    new-instance v7, Lcom/sonyericsson/home/statistics/Statistics;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v7, v0, v8}, Lcom/sonyericsson/home/statistics/Statistics;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    goto/16 :goto_0

    .line 543
    :cond_9
    :try_start_0
    const-string v7, "uimode"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    .line 544
    .local v6, uiModeManager:Landroid/app/UiModeManager;
    invoke-virtual {v6}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 545
    const/4 v7, 0x5

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 549
    .end local v6           #uiModeManager:Landroid/app/UiModeManager;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 551
    .local v4, e:Ljava/lang/NoClassDefFoundError;
    const/4 v7, 0x5

    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I

    goto/16 :goto_1

    .line 547
    .end local v4           #e:Ljava/lang/NoClassDefFoundError;
    .restart local v6       #uiModeManager:Landroid/app/UiModeManager;
    :cond_a
    const/4 v7, 0x4

    :try_start_1
    iput v7, p0, Lcom/sonyericsson/home/HomeActivity;->mDefaultOrientation:I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 573
    .end local v6           #uiModeManager:Landroid/app/UiModeManager;
    .end local p1
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 642
    .restart local v1       #appWidgetHost:Landroid/appwidget/AppWidgetHost;
    .restart local v2       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 648
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1955
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1985
    :goto_0
    return-object v0

    .line 1957
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$AddDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->access$4200(Lcom/sonyericsson/home/HomeActivity$AddDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1959
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$SortDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$SortDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->access$4400(Lcom/sonyericsson/home/HomeActivity$SortDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1961
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->access$4600(Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1963
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    .line 1964
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->access$4800(Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1966
    :pswitch_4
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    .line 1967
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$17;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$17;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->setDialogListener(Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;)V

    .line 1982
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1955
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2008
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2009
    .local v0, launchSettings:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2012
    const v1, 0x7f070002

    invoke-interface {p1, v4, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2014
    const v1, 0x7f070003

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2016
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mThemeOptionEnabled:Z

    if-eqz v1, :cond_0

    .line 2017
    const/4 v1, 0x3

    const v2, 0x7f070004

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2020
    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f070005

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2023
    return v4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 810
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 814
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    .line 815
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->onDestroy()V

    .line 817
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V

    .line 822
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V

    .line 823
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V

    .line 824
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->onDestroy()V

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->setCornerButtonsListener(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;)V

    .line 830
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->onDestroy()V

    .line 833
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onDestroy()V

    .line 835
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->unbind(Landroid/app/Activity;)V

    .line 836
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onDestroy()V

    .line 838
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->onDestroy()V

    .line 839
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->onDestroy()V

    .line 841
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unbind(Landroid/app/Activity;)V

    .line 845
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->onDestroy()V

    .line 846
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_4

    .line 847
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->onDestroy()V

    .line 849
    :cond_4
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWillRetainNonConfigurationInstance:Z

    if-nez v0, :cond_5

    .line 851
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->onDestroy()V

    .line 852
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 853
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-virtual {v0}, Lcom/sonyericsson/home/statistics/Statistics;->onDestroy()V

    .line 854
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 856
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/home/badge/BadgeManager;->setBadgeManagerListener(Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 863
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setFocusHandler(Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;)V

    .line 864
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->removeAllViews()V

    .line 867
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    .line 868
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    .line 869
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    .line 870
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    .line 871
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    .line 872
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    .line 874
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 875
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 876
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 877
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mBadgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    .line 878
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    .line 880
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    .line 881
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    .line 882
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFadeView:Lcom/sonyericsson/view/BackgroundFadeSrcXferView;

    .line 883
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    .line 884
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    .line 885
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    .line 886
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    .line 888
    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    .line 890
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 891
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2082
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSmartSliderEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, p1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2083
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->findSmartSliderView()Landroid/view/View;

    move-result-object v0

    .line 2084
    .local v0, smartSliderView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2086
    const/4 v1, 0x1

    .line 2090
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

    .line 2095
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2099
    .local v0, handled:Z
    if-nez v0, :cond_0

    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    .line 2102
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sonyericsson/home/HomeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v1, v4

    .line 2107
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

    .line 1916
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1918
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1919
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_4

    move v0, v6

    .line 1921
    .local v0, alreadyHome:Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v3}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 1923
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->hasPendingWidgets()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1924
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupPendingWidgets()V

    .line 1927
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_5

    .line 1928
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 1940
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/home/layer/folder/FolderController;->setRenamingFolder(Z)V

    .line 1943
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 1944
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1945
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1946
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1949
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iput-boolean v6, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    .line 1951
    .end local v0           #alreadyHome:Z
    .end local v2           #v:Landroid/view/View;
    :cond_3
    return-void

    :cond_4
    move v0, v5

    .line 1919
    goto :goto_0

    .line 1929
    .restart local v0       #alreadyHome:Z
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1930
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    goto :goto_1

    .line 1931
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1932
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    goto :goto_1

    .line 1933
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1934
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->closeFolder(Z)V

    goto :goto_1

    .line 1935
    :cond_8
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1936
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->close()V

    goto :goto_1

    .line 1937
    :cond_9
    if-eqz v0, :cond_1

    .line 1938
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

    .line 2039
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2055
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2041
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 2042
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 2043
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    move v0, v1

    .line 2044
    goto :goto_0

    .line 2047
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickWallpaper()V

    move v0, v1

    .line 2048
    goto :goto_0

    .line 2051
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickTheme()V

    move v0, v1

    .line 2052
    goto :goto_0

    .line 2039
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
    .line 753
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 755
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onPause()V

    .line 757
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDropZoneController:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->onPause()V

    .line 759
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->onPause()V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->onPause()V

    .line 764
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->onPause()V

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 768
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 770
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 1990
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1991
    packed-switch p1, :pswitch_data_0

    .line 2004
    .end local p2
    :goto_0
    return-void

    .line 1993
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->init()V

    goto :goto_0

    .line 1998
    :pswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1999
    iput-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissDeleteDialogOnResume:Z

    goto :goto_0

    .line 2002
    .restart local p2
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFbiAppShareDialog:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->prepareDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1991
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2028
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2031
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2032
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

    .line 2034
    return v1

    :cond_0
    move v0, v2

    .line 2031
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2032
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 496
    const-string v1, "desktop_pane"

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCenterPane()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 498
    .local v0, pane:I
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->moveToPane(IZ)V

    .line 499
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 774
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 776
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mNetworkNameManager:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->onResume()V

    .line 778
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 782
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->isInTouchMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStealFocusNextModeChange:Z

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mOnTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 787
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissDeleteDialogOnResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onResume(Z)V

    .line 792
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->onResume(Z)V

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 797
    const-string v0, "StartUp"

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    .line 801
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    .line 802
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 430
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getChangingConfigurations()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 432
    iput-boolean v2, p0, Lcom/sonyericsson/home/HomeActivity;->mWillRetainNonConfigurationInstance:Z

    .line 433
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;

    invoke-direct {v0}, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;-><init>()V

    .line 435
    .local v0, state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->releaseNonRetainedObjects()V

    .line 436
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/AdapterHelper;->unbindDrawables()V

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->statistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 439
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 440
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 441
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getModel()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageModel:Ljava/lang/Object;

    .line 443
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->isCreatingFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iput-boolean v2, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageCreatingFolder:Z

    .line 445
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getDroppedAtInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageDroppedAtInfo:Lcom/sonyericsson/home/data/Info;

    .line 446
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getSavedPickedUpInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageSavedPickedUpInfo:Lcom/sonyericsson/home/data/Info;

    .line 447
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->getHintLocation()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->stageHintLocation:I

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getModel()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayModel:Ljava/lang/Object;

    .line 452
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    .line 453
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getButtonsDisabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayDisableDuringSortDialog:Z

    .line 454
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsOpen:Z

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getCurrentPane()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayPane:I

    .line 456
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->apptrayIsEditing:Z

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    .line 459
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isInOverview:Z

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getOverviewProgress()F

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->overviewProgress:F

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isFolderOpen:Z

    .line 463
    iget-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->isFolderOpen:Z

    if-eqz v1, :cond_3

    .line 464
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->getCurrentFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolder:Lcom/sonyericsson/home/data/InfoGroup;

    .line 465
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLayer:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLayer:I

    .line 466
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mLastOpenFolderLocation:Ljava/lang/Object;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderSourceLocation:Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isRenamingFolder()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openFolderRenaming:Z

    .line 469
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    if-eqz v1, :cond_4

    .line 470
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCornerController:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->getOpenCorner()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    .line 474
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    iput-boolean v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addingFolder:Z

    .line 475
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addTo:I

    .line 476
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Lcom/sonyericsson/grid/GridLocation;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToDesktopLocation:Lcom/sonyericsson/grid/GridLocation;

    .line 477
    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->addFolderToStageLocation:I

    .line 478
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->savedFolderText:Ljava/lang/String;

    move-object v1, v0

    .line 483
    .end local v0           #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :goto_1
    return-object v1

    .line 472
    .restart local v0       #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :cond_4
    const/4 v1, -0x1

    iput v1, v0, Lcom/sonyericsson/home/HomeActivity$MyInstanceState;->openCorner:I

    goto :goto_0

    .line 483
    .end local v0           #state:Lcom/sonyericsson/home/HomeActivity$MyInstanceState;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 488
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 490
    const-string v0, "desktop_pane"

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->getCurrentPane()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 491
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 732
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 734
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDeskStandListener:Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonyericsson.hardware.action.ACTION_USB_OTG_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->sparkle()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->startListening()V

    .line 741
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 745
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDeskStandListener:Lcom/sonyericsson/home/HomeActivity$DeskStandListener;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->stopListening()V

    .line 749
    return-void
.end method
