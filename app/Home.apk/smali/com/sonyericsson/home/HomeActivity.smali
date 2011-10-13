.class public Lcom/sonyericsson/home/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;,
        Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;,
        Lcom/sonyericsson/home/HomeActivity$SortAdapter;,
        Lcom/sonyericsson/home/HomeActivity$SortDialog;,
        Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;,
        Lcom/sonyericsson/home/HomeActivity$AddDialog;
    }
.end annotation


# static fields
.field private static final ADD_TO_DESKTOP:I = 0x0

.field private static final ADD_TO_STAGE:I = 0x1

.field public static final APPWIDGET_HOST_ID:I = 0xa3d9739

.field private static final DEBUG_TAG:Ljava/lang/String; = "HomeActivity"

.field private static final DIALOG_ADD:I = 0x1

.field private static final DIALOG_ADD_TO_STAGE:I = 0x3

.field private static final DIALOG_APPTRAY_SORT:I = 0x2

.field private static final DIALOG_PICK_ACTIVITY:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final INFO_TAG:I = 0x0

.field private static final MENU_GROUP_ALL:I = 0x0

.field private static final MENU_GROUP_DESKTOP_ONLY:I = 0x1

.field private static final MENU_ITEM_ID_ADD:I = 0x0

.field private static final MENU_ITEM_ID_SETTINGS:I = 0x2

.field private static final MENU_ITEM_ID_WALLPAPER:I = 0x1

.field private static final NORMAL_VIBRATE_DURATION:I = 0x32

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x2

.field private static final REQUEST_PICK_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_WALLPAPER:I = 0x4

.field private static final REQUEST_WIDGET_CONFIGURE:I = 0x3

.field private static final REQUEST_WIDGET_PICK:I = 0x0

.field private static final STK_ACTIVITY:Ljava/lang/String; = "com.android.stk.StkLauncherActivity"

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

.field protected mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

.field private mButtonExitOverview:Landroid/view/View;

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mCurrentMcc:I

.field private mCurrentMnc:I

.field private mCurrentSorting:I

.field private mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field private mDesktopLongPressLocation:Landroid/graphics/Point;

.field private mDismissCurrentDialogOnResume:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

.field private mFolderDefaultNames:[Ljava/lang/String;

.field private mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

.field private mHomeButton:Landroid/view/View;

.field private mHomeButtonPressed:Z

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mOnCreateStartTime:J

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

.field private mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

.field protected mSavedFolderIconIndex:I

.field protected mSavedFolderText:Ljava/lang/String;

.field private mScreenEventFilter:Landroid/content/IntentFilter;

.field private mScreenEventReceiver:Landroid/content/BroadcastReceiver;

.field private mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

.field private mStageHeight:I

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

.field protected mSwitchButtonHideAnim:Landroid/view/animation/Animation;

.field private mSwitchButtonShowAnim:Landroid/view/animation/Animation;

.field private mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

.field private mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

.field private mWaitingForTrashcanClose:Z

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/HomeActivity;->INFO_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 1748
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$13;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$13;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .line 1766
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$14;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    .line 1972
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->removeInfo(Lcom/sonyericsson/home/data/Info;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/HomeActivity;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sonyericsson/home/HomeActivity;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/home/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageLocation:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/HomeActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderDefaultNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissCurrentDialogOnResume:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/home/HomeActivity;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentSorting:I

    return v0
.end method

.method static synthetic access$2102(Lcom/sonyericsson/home/HomeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentSorting:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->bounceAppTrayButton()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sonyericsson/home/HomeActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/home/HomeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageHeight:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->showHomeButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mWaitingForTrashcanClose:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickShortcut()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/WidgetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/sonyericsson/home/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->hideAppTrayButton()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickWallpaper()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    return-object v0
.end method

.method static synthetic access$4700()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/sonyericsson/home/HomeActivity;->INFO_TAG:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->showAppTrayButton(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->hideDesktopAndOpenApptay()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/HomeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    return-void
.end method

.method private bounceAppTrayButton()V
    .locals 3

    .prologue
    .line 562
    invoke-static {}, Lcom/sonyericsson/animation/JumpRenderer;->createAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 563
    .local v0, jump:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 564
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 565
    return-void
.end method

.method private closeApptrayAndShowDesktop(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->close(Z)V

    .line 524
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity;->hideHomeButton(Z)V

    .line 525
    return-void
.end method

.method private createActivityFlow()V
    .locals 2

    .prologue
    .line 568
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$6;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow;-><init>(Lcom/sonyericsson/home/HomeActivityFlow$Presenter;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    .line 870
    return-void
.end method

.method private createAppTray()V
    .locals 8

    .prologue
    .line 873
    new-instance v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0029

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/statistics/Statistics;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    .line 876
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$7;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V

    .line 950
    return-void
.end method

.method private createDesktop()V
    .locals 8

    .prologue
    .line 953
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 954
    .local v7, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 956
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeApplication;->getDesktopController()Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    .line 957
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 958
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 959
    .local v1, desktopMasterView:Landroid/view/View;
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->bind(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;Landroid/util/DisplayMetrics;)V

    .line 962
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    .line 963
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mButtonExitOverview:Landroid/view/View;

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/HomeActivity$8;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$9;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/HomeActivity$9;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V

    .line 1093
    return-void
.end method

.method private createFolderLayer()V
    .locals 8

    .prologue
    .line 1096
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    const v3, 0x7f0c002a

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/home/layer/folder/FolderController;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Landroid/view/ViewStub;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/InfoGroupManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$10;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->setFolderControllerListener(Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;)V

    .line 1145
    return-void
.end method

.method private createStage()V
    .locals 9

    .prologue
    .line 1169
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 1170
    .local v2, stageStub:Landroid/view/ViewStub;
    if-eqz v2, :cond_0

    .line 1171
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1172
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageHeight:I

    .line 1173
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

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$12;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->setStageControllerListener(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;)V

    .line 1231
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private createTrashcan()V
    .locals 3

    .prologue
    .line 1148
    const v1, 0x7f0c0035

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    .line 1150
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mTrashcanController:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$11;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/HomeActivity$11;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->setTrashcanControllerListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;)V

    .line 1166
    return-void
.end method

.method private hideAppTrayButton()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 530
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 533
    :cond_0
    return-void
.end method

.method private hideDesktopAndOpenApptay()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->defocus()V

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hide()V

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->hide()V

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->hideAppTrayButton()V

    .line 520
    return-void
.end method

.method private hideHomeButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :cond_1
    return-void
.end method

.method private pickShortcut()V
    .locals 7

    .prologue
    .line 1444
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1446
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v3, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1451
    .local v2, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const v4, 0x7f020043

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1455
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1457
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1459
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1463
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1464
    return-void
.end method

.method private pickWallpaper()V
    .locals 3

    .prologue
    .line 1437
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1438
    .local v1, pickWallpaper:Landroid/content/Intent;
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1440
    .local v0, chooser:Landroid/content/Intent;
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1441
    return-void
.end method

.method private prepareWidget(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 1467
    if-eqz p1, :cond_0

    .line 1468
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetConfigureIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 1469
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1470
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/home/HomeActivityFlow;->startActivitySafelyForResult(Landroid/content/Intent;I)V

    .line 1475
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1472
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/HomeActivityFlow;->addWidget(I)Z

    goto :goto_0
.end method

.method private removeInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1478
    instance-of v1, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v1, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    check-cast p1, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1480
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v1, :cond_2

    .line 1482
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->widgetRemoved(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    goto :goto_0

    .line 1483
    .restart local p1
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 1484
    check-cast p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, resourceName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/storage/Storage;->removeBitmap(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private roundToNearest100(J)I
    .locals 2
    .parameter "time"

    .prologue
    .line 492
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
    .line 1492
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 1494
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1495
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    move v2, v5

    .line 1497
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v3, v5

    .line 1498
    .local v3, width:I
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v1, v5

    .line 1499
    .local v1, height:I
    :goto_2
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 1500
    return-void

    .line 1495
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 1497
    .restart local v2       #isPortrait:Z
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 1498
    .restart local v3       #width:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v1, v5

    goto :goto_2
.end method

.method private showAppTrayButton(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 547
    if-eqz p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_1
    return-void
.end method

.method private showHomeButton()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 559
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
    .line 1378
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    if-eqz p3, :cond_3

    .line 1379
    packed-switch p1, :pswitch_data_0

    .line 1434
    :cond_0
    :goto_0
    return-void

    .line 1382
    :pswitch_0
    const-string v5, "advWidgetName"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, advWidgetName:Ljava/lang/String;
    invoke-static {p3}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetId(Landroid/content/Intent;)I

    move-result v1

    .line 1386
    .local v1, appWidgetId:I
    if-eqz v0, :cond_1

    .line 1390
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    .line 1391
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->addAdvWidget(Ljava/lang/String;)V

    goto :goto_0

    .line 1394
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->prepareWidget(I)V

    goto :goto_0

    .line 1399
    .end local v0           #advWidgetName:Ljava/lang/String;
    .end local v1           #appWidgetId:I
    :pswitch_1
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {p3}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetId(Landroid/content/Intent;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/home/HomeActivityFlow;->addWidget(I)Z

    goto :goto_0

    .line 1405
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1407
    .local v2, applicationName:Ljava/lang/String;
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1408
    .local v4, shortcutName:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1409
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    goto :goto_0

    .line 1411
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    const/4 v6, 0x2

    invoke-virtual {v5, p3, v6}, Lcom/sonyericsson/home/HomeActivityFlow;->startActivitySafelyForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1416
    .end local v2           #applicationName:Ljava/lang/String;
    .end local v4           #shortcutName:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1417
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 1418
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-virtual {v5, v3}, Lcom/sonyericsson/home/HomeActivityFlow;->addShortcut(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1423
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_3
    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_0

    .line 1426
    :pswitch_5
    if-eqz p3, :cond_0

    .line 1427
    const-string v5, "appWidgetId"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1429
    .restart local v1       #appWidgetId:I
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 1379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 1423
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1345
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onBackPressed()Z

    move-result v0

    .line 1347
    .local v0, handled:Z
    if-nez v0, :cond_1

    .line 1348
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v1, :cond_0

    .line 1349
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/stage/StageController;->sparkle()V

    .line 1351
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    .line 1358
    .end local v0           #handled:Z
    :cond_1
    :goto_0
    return-void

    .line 1353
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1354
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    goto :goto_0

    .line 1355
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1356
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 291
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    if-eq v0, v1, :cond_1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    const-string v1, "com.android.stk"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    .line 295
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    .line 296
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    .line 298
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const-string v13, ""

    .line 303
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    .line 304
    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    const-string v8, "Application"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v6}, Lcom/sonyericsson/home/HomeApplication;->getApplicationCreateDuration()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/sonyericsson/home/HomeActivity;->roundToNearest100(J)I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonyericsson/home/HomeActivity;->mOnCreateStartTime:J

    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 311
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030008

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 313
    .local v4, contentView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 316
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f06

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderDefaultNames:[Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 321
    const v6, 0x7f0c0028

    invoke-virtual {p0, v6}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mFullScreenEffectPlaceholder:Landroid/view/ViewGroup;

    .line 322
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->setWallpaperDimensions()V

    .line 323
    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 326
    .local v5, vibrator:Landroid/os/Vibrator;
    new-instance v6, Lcom/sonyericsson/home/HomeActivity$1;

    invoke-direct {v6, p0}, Lcom/sonyericsson/home/HomeActivity$1;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mScreenEventReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mScreenEventFilter:Landroid/content/IntentFilter;

    .line 335
    const v6, 0x7f0c0024

    invoke-virtual {p0, v6}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/transfer/TransferView;

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    .line 336
    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    new-instance v7, Lcom/sonyericsson/home/HomeActivity$2;

    invoke-direct {v7, p0, v5}, Lcom/sonyericsson/home/HomeActivity$2;-><init>(Lcom/sonyericsson/home/HomeActivity;Landroid/os/Vibrator;)V

    invoke-virtual {v6, v7}, Lcom/sonyericsson/home/transfer/TransferView;->setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V

    .line 357
    const v6, 0x7f04003b

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    .line 358
    const v6, 0x7f04003c

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonShowAnim:Landroid/view/animation/Animation;

    .line 359
    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mSwitchButtonHideAnim:Landroid/view/animation/Animation;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 360
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/sonyericsson/home/HomeActivity;->setDefaultKeyMode(I)V

    .line 361
    const v6, 0x7f0c0034

    invoke-virtual {p0, v6}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    .line 362
    const v6, 0x7f0c0033

    invoke-virtual {p0, v6}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    .line 363
    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayButton:Landroid/view/View;

    new-instance v7, Lcom/sonyericsson/home/HomeActivity$3;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/HomeActivity$3;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButton:Landroid/view/View;

    new-instance v7, Lcom/sonyericsson/home/HomeActivity$4;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/HomeActivity$4;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createActivityFlow()V

    .line 379
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 382
    .local v0, appContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v6}, Lcom/sonyericsson/home/HomeApplication;->getPackageLoader()Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 383
    new-instance v6, Lcom/sonyericsson/home/resourceload/ResourceLoader;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v6, v0, v7}, Lcom/sonyericsson/home/resourceload/ResourceLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 384
    new-instance v6, Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {v6, v0, v7}, Lcom/sonyericsson/home/layer/AdapterHelper;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v6}, Lcom/sonyericsson/home/HomeApplication;->getInfoGroupManager()Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 386
    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    new-instance v7, Lcom/sonyericsson/home/HomeActivity$5;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/HomeActivity$5;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    invoke-virtual {v6, v7}, Lcom/sonyericsson/home/layer/InfoGroupManager;->setInfoListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;)V

    .line 392
    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/home/layer/InfoGroupManager;->bind(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 395
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 396
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/appwidget/AppWidgetHost;

    const v6, 0xa3d9739

    invoke-direct {v1, v0, v6}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 397
    .local v1, appWidgetHost:Landroid/appwidget/AppWidgetHost;
    new-instance v6, Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-direct {v6, v0, v2, v1}, Lcom/sonyericsson/home/widget/WidgetManager;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 398
    new-instance v6, Lcom/sonyericsson/home/widget/AdvWidgetManager;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetHost:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    iget-object v8, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v6, p0, v7, v8}, Lcom/sonyericsson/home/widget/AdvWidgetManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 401
    new-instance v6, Lcom/sonyericsson/home/statistics/Statistics;

    iget-object v7, p0, Lcom/sonyericsson/home/HomeActivity;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v6, v0, v7}, Lcom/sonyericsson/home/statistics/Statistics;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    .line 404
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createAppTray()V

    .line 407
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createDesktop()V

    .line 410
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createFolderLayer()V

    .line 413
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createTrashcan()V

    .line 416
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->createStage()V

    .line 418
    iget-object v6, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    const-string v7, "onCreate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/sonyericsson/home/HomeActivity;->mOnCreateStartTime:J

    sub-long/2addr v9, v11

    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/home/HomeActivity;->roundToNearest100(J)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 424
    .local v3, conf:Landroid/content/res/Configuration;
    iget v6, v3, Landroid/content/res/Configuration;->mcc:I

    iput v6, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMcc:I

    .line 425
    iget v6, v3, Landroid/content/res/Configuration;->mnc:I

    iput v6, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentMnc:I

    .line 426
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1270
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1282
    :goto_0
    return-object v0

    .line 1272
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$AddDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->access$2900(Lcom/sonyericsson/home/HomeActivity$AddDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1274
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$SortDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$SortDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->access$3100(Lcom/sonyericsson/home/HomeActivity$SortDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1276
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->access$3300(Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1278
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    .line 1279
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->access$3500(Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1270
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

    .line 1299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v0, launchSettings:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1303
    const v1, 0x7f070002

    invoke-interface {p1, v4, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1305
    const v1, 0x7f070003

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1307
    const/4 v1, 0x2

    const v2, 0x7f070005

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1310
    return v4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->setDesktopControllerListener(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->unbind()V

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/InfoGroupManager;->unbind()V

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setAppTrayControllerListener(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;)V

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->onDestroy()V

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onDestroy()V

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->onDestroy()V

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->onDestroy()V

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->onDestroy()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStatistics:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-virtual {v0}, Lcom/sonyericsson/home/statistics/Statistics;->onDestroy()V

    .line 510
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 511
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 1362
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1365
    .local v0, handled:Z
    if-nez v0, :cond_0

    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    .line 1368
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sonyericsson/home/HomeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v1, v4

    .line 1373
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

    .line 1235
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1237
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1238
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_2

    move v0, v6

    .line 1240
    .local v0, alreadyHome:Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v3}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 1242
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    .line 1243
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1244
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    .line 1258
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 1259
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1260
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1261
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1264
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iput-boolean v6, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    .line 1266
    .end local v0           #alreadyHome:Z
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v0, v5

    .line 1238
    goto :goto_0

    .line 1245
    .restart local v0       #alreadyHome:Z
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->hasPendingWidgets()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1246
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->cleanupPendingWidgets()V

    goto :goto_1

    .line 1247
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1248
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    goto :goto_1

    .line 1249
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mAppTrayController:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isSyncCompleted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1250
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->closeApptrayAndShowDesktop(Z)V

    goto :goto_1

    .line 1251
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1252
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder()V

    goto :goto_1

    .line 1254
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->moveToCenterPane(Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1338
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1328
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopLongPressLocation:Landroid/graphics/Point;

    .line 1329
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 1330
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    move v0, v1

    .line 1331
    goto :goto_0

    .line 1334
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity;->pickWallpaper()V

    move v0, v1

    .line 1335
    goto :goto_0

    .line 1326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onPause()V

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->onPause()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->onPause()V

    .line 461
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1287
    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    .line 1289
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mPickApplicationDialog:Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationDialog;->init()V

    .line 1291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissCurrentDialogOnResume:Z

    .line 1295
    :goto_0
    return-void

    .line 1293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissCurrentDialogOnResume:Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1315
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1318
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1319
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

    .line 1321
    return v1

    :cond_0
    move v0, v2

    .line 1318
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1319
    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mTransferView:Lcom/sonyericsson/home/transfer/TransferView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/transfer/TransferView;->cancelTransfer()V

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDismissCurrentDialogOnResume:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 471
    iput-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mCurrentDialog:Landroid/app/Dialog;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onResume(Z)V

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageController;->onResume(Z)V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mFolderController:Lcom/sonyericsson/home/layer/folder/FolderController;

    iget-boolean v1, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->onResume(Z)V

    .line 479
    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mAddingFolder:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    if-nez v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mActivityFlow:Lcom/sonyericsson/home/HomeActivityFlow;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mAddFolderListener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    iget v3, p0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    .line 484
    const-string v0, "StartUp"

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 485
    iput-object v4, p0, Lcom/sonyericsson/home/HomeActivity;->mStartupMap:Ljava/util/LinkedHashMap;

    .line 488
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/HomeActivity;->mHomeButtonPressed:Z

    .line 489
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mScreenEventReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity;->mScreenEventFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mStageController:Lcom/sonyericsson/home/layer/stage/StageController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageController;->sparkle()V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->startListening()V

    .line 439
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mScreenEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->onStop()V

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/WidgetManager;->stopListening()V

    .line 449
    return-void
.end method
