.class public Lcom/android/server/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$FadeInOutAnimation;,
        Lcom/android/server/WindowManagerService$DimAnimator;,
        Lcom/android/server/WindowManagerService$Watermark;,
        Lcom/android/server/WindowManagerService$H;,
        Lcom/android/server/WindowManagerService$StartingData;,
        Lcom/android/server/WindowManagerService$DummyAnimation;,
        Lcom/android/server/WindowManagerService$AppWindowToken;,
        Lcom/android/server/WindowManagerService$WindowToken;,
        Lcom/android/server/WindowManagerService$WindowState;,
        Lcom/android/server/WindowManagerService$Session;,
        Lcom/android/server/WindowManagerService$InputMonitor;,
        Lcom/android/server/WindowManagerService$PolicyThread;,
        Lcom/android/server/WindowManagerService$WMThread;,
        Lcom/android/server/WindowManagerService$WindowChangeListener;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field static final DEBUG:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_FREEZE:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field private static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x12a05f200L

.field static final DIM_DURATION_MULTIPLIER:I = 0x6

.field static final HIDE_STACK_CRAWLS:Z = true

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field private mAllowDisableKeyguard:I

.field mAnimationPending:Z

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBackgroundFillerShown:Z

.field mBackgroundFillerSurface:Landroid/view/Surface;

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mCompatibleScreenFrame:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFreezeGcPending:J

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/WindowManagerService$H;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

.field mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mInputManager:Lcom/android/server/InputManager;

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

.field mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

.field mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

.field mLastRotationFlags:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field mRequestedRotation:I

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenLayout:I

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/WindowManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field private mViewServer:Lcom/android/server/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWatermark:Lcom/android/server/WindowManagerService$Watermark;

.field mWindowAnimationScale:F

.field private mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowsChanged:Z

.field mWindowsFreezingScreen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7748
    new-instance v0, Lcom/android/server/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V
    .registers 15
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, -0x1

    const/high16 v8, -0x4080

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 604
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 227
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z

    .line 232
    iput v9, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    .line 234
    new-instance v3, Lcom/android/server/WindowManagerService$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v5, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/WindowManagerService$1;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    .line 253
    new-instance v3, Lcom/android/server/WindowManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/WindowManagerService$2;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 280
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 286
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 291
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 298
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 347
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 352
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 374
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 379
    iput v6, p0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 381
    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mTmpFloats:[F

    .line 384
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    .line 385
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 386
    iput v6, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    .line 387
    iput v6, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    .line 388
    iput v6, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 389
    iput v6, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 390
    iput v9, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 392
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 395
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 396
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 397
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 398
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 399
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 400
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 401
    iput v6, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 403
    iput v6, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    .line 408
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 420
    iput v9, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 424
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 425
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 426
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 427
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 428
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 430
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 431
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    .line 432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    .line 436
    new-instance v3, Lcom/android/server/WindowManagerService$H;

    invoke-direct {v3, p0}, Lcom/android/server/WindowManagerService$H;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    .line 438
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 439
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 443
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 444
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 448
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 449
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 451
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 455
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 458
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 461
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 463
    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 464
    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 465
    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    .line 466
    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    .line 477
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 481
    iput v10, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 482
    iput v10, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 496
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 499
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 501
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 508
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 509
    iput v6, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 512
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    .line 514
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    .line 515
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    .line 5067
    new-instance v3, Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/WindowManagerService$InputMonitor;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    .line 8289
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 605
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 606
    iput-boolean p3, p0, Lcom/android/server/WindowManagerService;->mHaveInputMethods:Z

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 610
    iput-object p2, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 611
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3, v4}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 612
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 613
    .local v1, pmc:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "SCREEN_FROZEN"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 615
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 617
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 618
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 621
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "window_animation_scale"

    iget v5, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 623
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "transition_animation_scale"

    iget v5, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 627
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 628
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 631
    const/16 v3, 0xa

    const-string v4, "KEEP_SCREEN_ON_FLAG"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 633
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 635
    new-instance v3, Lcom/android/server/InputManager;

    invoke-direct {v3, p1, p0}, Lcom/android/server/InputManager;-><init>(Landroid/content/Context;Lcom/android/server/WindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    .line 637
    new-instance v2, Lcom/android/server/WindowManagerService$PolicyThread;

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v2, v3, p0, p1, p2}, Lcom/android/server/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 638
    .local v2, thr:Lcom/android/server/WindowManagerService$PolicyThread;
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$PolicyThread;->start()V

    .line 640
    monitor-enter v2

    .line 641
    :goto_1ca
    :try_start_1ca
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_1cc
    .catchall {:try_start_1ca .. :try_end_1cc} :catchall_1e2

    if-nez v3, :cond_1d4

    .line 643
    :try_start_1ce
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1d1
    .catchall {:try_start_1ce .. :try_end_1d1} :catchall_1e2
    .catch Ljava/lang/InterruptedException; {:try_start_1ce .. :try_end_1d1} :catch_1d2

    goto :goto_1ca

    .line 644
    :catch_1d2
    move-exception v3

    goto :goto_1ca

    .line 647
    :cond_1d4
    :try_start_1d4
    monitor-exit v2
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1e2

    .line 649
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v3}, Lcom/android/server/InputManager;->start()V

    .line 652
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 653
    return-void

    .line 647
    :catchall_1e2
    move-exception v3

    :try_start_1e3
    monitor-exit v2
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_1e2

    throw v3
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZLcom/android/server/WindowManagerService$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/WindowManagerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/WindowManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/WindowManagerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/WindowManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V
    .registers 31
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 707
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v10, v0

    .line 708
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v20, v0

    .line 709
    .local v20, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    .line 711
    .local v14, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 712
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v8, v0

    .line 714
    .local v8, attached:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v8, :cond_255

    .line 715
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 716
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_221

    .line 717
    const/16 v26, 0x1

    sub-int v12, v21, v26

    .line 718
    .local v12, index:I
    if-ltz v12, :cond_e7

    .line 722
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8e

    .line 724
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #N:I
    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 725
    const/16 v21, 0x0

    .line 844
    .end local v12           #index:I
    :cond_5f
    :goto_5f
    if-eqz p2, :cond_70

    .line 845
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 900
    .end local v21           #tokenWindowsPos:I
    :cond_70
    :goto_70
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8d

    if-eqz p2, :cond_8d

    .line 901
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_8d
    return-void

    .line 727
    .restart local v3       #N:I
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_8e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v7, v0

    .line 728
    .local v7, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v7, :cond_c7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_c7

    .line 730
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #N:I
    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 731
    add-int/lit8 v21, v21, -0x1

    goto :goto_5f

    .line 733
    .restart local v3       #N:I
    :cond_c7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I

    move-result v16

    .line 734
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_5f

    .line 742
    add-int/lit8 v26, v16, 0x1

    move-object v0, v14

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 743
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5f

    .line 753
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v16           #newIdx:I
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 754
    .local v4, NA:I
    const/16 v17, 0x0

    .line 755
    .local v17, pos:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v26, 0x1

    sub-int v11, v4, v26

    .local v11, i:I
    :goto_f7
    if-ltz v11, :cond_110

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 757
    .local v19, t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_156

    .line 758
    add-int/lit8 v11, v11, -0x1

    .line 772
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_110
    if-eqz v17, :cond_17e

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 775
    .local v7, atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_14b

    .line 776
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 777
    .local v5, NC:I
    if-lez v5, :cond_14b

    .line 778
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 779
    .local v9, bottom:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v9

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_14b

    .line 780
    move-object/from16 v17, v9

    .line 784
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/WindowManagerService$WindowState;
    :cond_14b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_5f

    .line 765
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_156
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_178

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_178

    .line 766
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v17, Lcom/android/server/WindowManagerService$WindowState;

    .line 755
    .restart local v17       #pos:Lcom/android/server/WindowManagerService$WindowState;
    :cond_178
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_f7

    .line 795
    .local v6, NW:I
    :cond_17c
    add-int/lit8 v11, v11, -0x1

    .line 788
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_17e
    if-ltz v11, :cond_1ab

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 790
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 791
    .restart local v6       #NW:I
    if-lez v6, :cond_17c

    .line 792
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v17, Lcom/android/server/WindowManagerService$WindowState;

    .line 797
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v17       #pos:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1ab
    if-eqz v17, :cond_1f4

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 801
    .restart local v7       #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_1e9

    .line 802
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 803
    .restart local v5       #NC:I
    if-lez v5, :cond_1e9

    .line 804
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v5, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowState;

    .line 805
    .local v22, top:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_1e9

    .line 806
    move-object/from16 v17, v22

    .line 810
    .end local v5           #NC:I
    .end local v22           #top:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1e9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_5f

    .line 813
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_1f4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 814
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_1fa
    if-ge v11, v3, :cond_20d

    .line 815
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 816
    .local v23, w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-le v0, v1, :cond_21e

    .line 823
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_20d
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 824
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5f

    .line 814
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_21e
    add-int/lit8 v11, v11, 0x1

    goto :goto_1fa

    .line 830
    .end local v4           #NA:I
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_221
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 831
    .restart local v15       #myLayer:I
    const/16 v26, 0x1

    sub-int v11, v3, v26

    .end local v3           #N:I
    .restart local v11       #i:I
    :goto_22a
    if-ltz v11, :cond_23e

    .line 832
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    move-object v0, v3

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-gt v0, v1, :cond_252

    .line 833
    add-int/lit8 v11, v11, 0x1

    .line 837
    :cond_23e
    if-gez v11, :cond_241

    const/4 v11, 0x0

    .line 841
    :cond_241
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 842
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    goto/16 :goto_5f

    .line 831
    :cond_252
    add-int/lit8 v11, v11, -0x1

    goto :goto_22a

    .line 851
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    .restart local v3       #N:I
    :cond_255
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 852
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 853
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 854
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 855
    .local v25, windowWithLargestSublayer:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_26a
    if-ge v11, v4, :cond_2af

    .line 856
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 857
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 858
    .local v24, wSublayer:I
    move/from16 v0, v24

    move v1, v13

    if-lt v0, v1, :cond_28a

    .line 859
    move/from16 v13, v24

    .line 860
    move-object/from16 v25, v23

    .line 862
    :cond_28a
    if-gez v18, :cond_2cf

    .line 865
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_2ef

    .line 866
    if-eqz p2, :cond_2a2

    .line 867
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 869
    :cond_2a2
    if-ltz v24, :cond_2cc

    move-object/from16 v26, v8

    :goto_2a6
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 885
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_2af
    :goto_2af
    if-lt v11, v4, :cond_70

    .line 886
    if-eqz p2, :cond_2c0

    .line 887
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_2c0
    if-gez v18, :cond_2f3

    .line 890
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_70

    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #wSublayer:I
    :cond_2cc
    move-object/from16 v26, v23

    .line 869
    goto :goto_2a6

    .line 876
    :cond_2cf
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_2ef

    .line 877
    if-eqz p2, :cond_2e5

    .line 878
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 880
    :cond_2e5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto :goto_2af

    .line 855
    :cond_2ef
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_26a

    .line 892
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_2f3
    if-ltz v13, :cond_302

    move-object/from16 v26, v25

    :goto_2f7
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_70

    :cond_302
    move-object/from16 v26, v8

    goto :goto_2f7
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .registers 9
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 2722
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_a6

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 2724
    if-eqz p2, :cond_25

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    .line 2725
    new-instance v0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;

    invoke-direct {v0, p4}, Lcom/android/server/WindowManagerService$FadeInOutAnimation;-><init>(Z)V

    .line 2791
    .local v0, a:Landroid/view/animation/Animation;
    :goto_1a
    if-eqz v0, :cond_1f

    .line 2800
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2806
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1f
    :goto_1f
    iget-object v2, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_ab

    const/4 v2, 0x1

    :goto_24
    return v2

    .line 2728
    :cond_25
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 2729
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_34

    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_2f
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_1a

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_34
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_2f

    .line 2732
    :cond_37
    const/4 v1, 0x0

    .line 2733
    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_ae

    .line 2785
    :goto_3b
    if-eqz v1, :cond_a3

    invoke-direct {p0, p2, v1}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v0, v2

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_42
    goto :goto_1a

    .line 2735
    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_43
    if-eqz p4, :cond_48

    const/4 v2, 0x4

    move v1, v2

    .line 2738
    :goto_47
    goto :goto_3b

    .line 2735
    :cond_48
    const/4 v2, 0x5

    move v1, v2

    goto :goto_47

    .line 2740
    :sswitch_4b
    if-eqz p4, :cond_50

    const/4 v2, 0x6

    move v1, v2

    .line 2743
    :goto_4f
    goto :goto_3b

    .line 2740
    :cond_50
    const/4 v2, 0x7

    move v1, v2

    goto :goto_4f

    .line 2745
    :sswitch_53
    if-eqz p4, :cond_59

    const/16 v2, 0x8

    move v1, v2

    .line 2748
    :goto_58
    goto :goto_3b

    .line 2745
    :cond_59
    const/16 v2, 0x9

    move v1, v2

    goto :goto_58

    .line 2750
    :sswitch_5d
    if-eqz p4, :cond_63

    const/16 v2, 0xa

    move v1, v2

    .line 2753
    :goto_62
    goto :goto_3b

    .line 2750
    :cond_63
    const/16 v2, 0xb

    move v1, v2

    goto :goto_62

    .line 2755
    :sswitch_67
    if-eqz p4, :cond_6d

    const/16 v2, 0xc

    move v1, v2

    .line 2758
    :goto_6c
    goto :goto_3b

    .line 2755
    :cond_6d
    const/16 v2, 0xd

    move v1, v2

    goto :goto_6c

    .line 2760
    :sswitch_71
    if-eqz p4, :cond_77

    const/16 v2, 0xe

    move v1, v2

    .line 2763
    :goto_76
    goto :goto_3b

    .line 2760
    :cond_77
    const/16 v2, 0xf

    move v1, v2

    goto :goto_76

    .line 2765
    :sswitch_7b
    if-eqz p4, :cond_81

    const/16 v2, 0x10

    move v1, v2

    .line 2768
    :goto_80
    goto :goto_3b

    .line 2765
    :cond_81
    const/16 v2, 0x11

    move v1, v2

    goto :goto_80

    .line 2770
    :sswitch_85
    if-eqz p4, :cond_8b

    const/16 v2, 0x12

    move v1, v2

    .line 2773
    :goto_8a
    goto :goto_3b

    .line 2770
    :cond_8b
    const/16 v2, 0x13

    move v1, v2

    goto :goto_8a

    .line 2775
    :sswitch_8f
    if-eqz p4, :cond_95

    const/16 v2, 0x14

    move v1, v2

    .line 2778
    :goto_94
    goto :goto_3b

    .line 2775
    :cond_95
    const/16 v2, 0x15

    move v1, v2

    goto :goto_94

    .line 2780
    :sswitch_99
    if-eqz p4, :cond_9f

    const/16 v2, 0x16

    move v1, v2

    :goto_9e
    goto :goto_3b

    :cond_9f
    const/16 v2, 0x17

    move v1, v2

    goto :goto_9e

    .line 2785
    :cond_a3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_42

    .line 2803
    .end local v1           #animAttr:I
    :cond_a6
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->clearAnimation()V

    goto/16 :goto_1f

    .line 2806
    :cond_ab
    const/4 v2, 0x0

    goto/16 :goto_24

    .line 2733
    :sswitch_data_ae
    .sparse-switch
        0x1006 -> :sswitch_43
        0x1008 -> :sswitch_53
        0x100a -> :sswitch_67
        0x100d -> :sswitch_7b
        0x100e -> :sswitch_8f
        0x2007 -> :sswitch_4b
        0x2009 -> :sswitch_5d
        0x200b -> :sswitch_71
        0x200c -> :sswitch_85
        0x200f -> :sswitch_99
    .end sparse-switch
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .registers 9
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v4, 0x1

    .line 2626
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-ne v3, p3, :cond_b

    move v3, v4

    .line 2681
    :goto_a
    return v3

    .line 2636
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_48

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 2637
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2638
    .local v1, anim:I
    const/4 v2, -0x1

    .line 2639
    .local v2, attr:I
    const/4 v0, 0x0

    .line 2640
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_34

    .line 2641
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2665
    :cond_27
    :goto_27
    if-eqz v0, :cond_2e

    .line 2674
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2675
    iput-boolean p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    .line 2681
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_2e
    :goto_2e
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4c

    move v3, v4

    goto :goto_a

    .line 2643
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_34
    sparse-switch p2, :sswitch_data_4e

    .line 2657
    :goto_37
    if-ltz v2, :cond_27

    .line 2658
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v2}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_27

    .line 2645
    :sswitch_40
    const/4 v2, 0x0

    .line 2646
    goto :goto_37

    .line 2648
    :sswitch_42
    const/4 v2, 0x1

    .line 2649
    goto :goto_37

    .line 2651
    :sswitch_44
    const/4 v2, 0x2

    .line 2652
    goto :goto_37

    .line 2654
    :sswitch_46
    const/4 v2, 0x3

    goto :goto_37

    .line 2678
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_2e

    .line 2681
    :cond_4c
    const/4 v3, 0x0

    goto :goto_a

    .line 2643
    :sswitch_data_4e
    .sparse-switch
        0x1001 -> :sswitch_40
        0x1003 -> :sswitch_44
        0x2002 -> :sswitch_42
        0x2004 -> :sswitch_46
    .end sparse-switch
.end method

.method private applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 2615
    const/16 v0, 0x1003

    .line 2616
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_b

    .line 2617
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2618
    const/16 v0, 0x1001

    .line 2621
    :cond_b
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2622
    return-void
.end method

.method private final assignLayersLocked()V
    .registers 8

    .prologue
    .line 8255
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8256
    .local v0, N:I
    const/4 v1, 0x0

    .line 8257
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 8260
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v0, :cond_65

    .line 8261
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 8262
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_21

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v5, :cond_21

    if-lez v3, :cond_40

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_40

    .line 8264
    :cond_21
    add-int/lit8 v2, v2, 0x5

    .line 8265
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    .line 8270
    :goto_25
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_46

    .line 8271
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 8277
    :goto_32
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_59

    .line 8278
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 8260
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 8267
    :cond_40
    iget v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v1, v2

    .line 8268
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    goto :goto_25

    .line 8272
    :cond_46
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_54

    .line 8273
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_32

    .line 8275
    :cond_54
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_32

    .line 8279
    :cond_59
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_3d

    .line 8280
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_3d

    .line 8287
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_65
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z
    .registers 4
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 906
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 908
    .local v0, fl:I
    if-eqz v0, :cond_d

    if-ne v0, v2, :cond_12

    .line 909
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 911
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 9890
    const/4 v4, 0x0

    .line 9893
    .local v4, result:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    .line 9894
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v8

    .line 9895
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_33

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v1, v7

    .line 9898
    .local v1, nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :goto_1e
    if-ltz v0, :cond_69

    .line 9899
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 9907
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9910
    .local v5, thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_35

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v7, :cond_35

    .line 9911
    add-int/lit8 v0, v0, -0x1

    .line 9912
    goto :goto_1e

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_33
    move-object v1, v9

    .line 9895
    goto :goto_1e

    .line 9918
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_35
    if-eqz v5, :cond_62

    if-eqz v1, :cond_62

    if-eq v5, v1, :cond_62

    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_62

    .line 9920
    move v3, v2

    .line 9921
    .local v3, origAppIndex:I
    :cond_43
    if-lez v2, :cond_57

    .line 9922
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v1, v7, :cond_4b

    move-object v7, v9

    .line 9955
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_4a
    return-object v7

    .line 9929
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4b
    add-int/lit8 v2, v2, -0x1

    .line 9930
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9931
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    if-ne v1, v5, :cond_43

    .line 9935
    :cond_57
    if-eq v5, v1, :cond_62

    .line 9939
    move v2, v3

    .line 9940
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9945
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_62
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 9948
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_69
    move-object v7, v4

    .line 9955
    goto :goto_4a

    .line 9952
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6b
    add-int/lit8 v0, v0, -0x1

    .line 9953
    goto :goto_1e
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I
    .registers 9
    .parameter "win"

    .prologue
    const/4 v6, -0x1

    .line 692
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 693
    .local v2, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 694
    .local v1, jmax:I
    if-nez v1, :cond_b

    move v4, v6

    .line 703
    :goto_a
    return v4

    .line 697
    :cond_b
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, j:I
    :goto_e
    if-ltz v0, :cond_21

    .line 698
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 699
    .local v3, wentry:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v4, v5, :cond_1e

    move v4, v0

    .line 700
    goto :goto_a

    .line 697
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .end local v3           #wentry:Lcom/android/server/WindowManagerService$WindowState;
    :cond_21
    move v4, v6

    .line 703
    goto :goto_a
.end method

.method private findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    .registers 8
    .parameter "hashCode"

    .prologue
    .line 4934
    const/4 v4, -0x1

    if-ne p1, v4, :cond_8

    .line 4935
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v4

    .line 4950
    :goto_7
    return-object v4

    .line 4938
    :cond_8
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4939
    :try_start_b
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 4940
    .local v3, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4942
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_26

    .line 4943
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4944
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_23

    .line 4945
    monitor-exit v4

    move-object v4, v2

    goto :goto_7

    .line 4942
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4948
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_26
    monitor-exit v4

    .line 4950
    const/4 v4, 0x0

    goto :goto_7

    .line 4948
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    :catchall_29
    move-exception v5

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_29

    throw v5
.end method

.method private findWindowOffsetLocked(I)I
    .registers 12
    .parameter "tokenPos"

    .prologue
    const/4 v9, 0x1

    .line 3898
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3900
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_25

    .line 3901
    move v2, v0

    .line 3902
    .local v2, i:I
    :cond_10
    if-lez v2, :cond_25

    .line 3903
    add-int/lit8 v2, v2, -0x1

    .line 3904
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3905
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 3906
    add-int/lit8 v7, v2, 0x1

    .line 3951
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_24
    return v7

    .line 3911
    :cond_25
    :goto_25
    if-lez p1, :cond_87

    .line 3914
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    sub-int v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3917
    .local v6, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_38

    .line 3920
    add-int/lit8 p1, p1, -0x1

    .line 3921
    goto :goto_25

    .line 3923
    :cond_38
    iget-object v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3924
    .restart local v2       #i:I
    :cond_3e
    if-lez v2, :cond_84

    .line 3925
    add-int/lit8 v2, v2, -0x1

    .line 3926
    iget-object v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3927
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3928
    .local v3, j:I
    :cond_50
    if-lez v3, :cond_72

    .line 3929
    add-int/lit8 v3, v3, -0x1

    .line 3930
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 3931
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v7, :cond_50

    .line 3932
    sub-int v4, v0, v9

    .local v4, pos:I
    :goto_62
    if-ltz v4, :cond_50

    .line 3933
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6f

    .line 3936
    add-int/lit8 v7, v4, 0x1

    goto :goto_24

    .line 3932
    :cond_6f
    add-int/lit8 v4, v4, -0x1

    goto :goto_62

    .line 3941
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #pos:I
    :cond_72
    sub-int v4, v0, v9

    .restart local v4       #pos:I
    :goto_74
    if-ltz v4, :cond_3e

    .line 3942
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_81

    .line 3944
    add-int/lit8 v7, v4, 0x1

    goto :goto_24

    .line 3941
    :cond_81
    add-int/lit8 v4, v4, -0x1

    goto :goto_74

    .line 3948
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_84
    add-int/lit8 p1, p1, -0x1

    .line 3949
    goto :goto_25

    .line 3951
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_87
    const/4 v7, 0x0

    goto :goto_24
.end method

.method private finishUpdateFocusedWindowAfterAssignLayersLocked()V
    .registers 3

    .prologue
    .line 9886
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$InputMonitor;->setInputFocusLw(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 9887
    return-void
.end method

.method static fixScale(F)F
    .registers 2
    .parameter "scale"

    .prologue
    .line 4254
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_b

    const/4 p0, 0x0

    .line 4256
    :cond_6
    :goto_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 4255
    :cond_b
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_6

    const/high16 p0, 0x41a0

    goto :goto_6
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .parameter "lp"

    .prologue
    .line 2582
    if-eqz p1, :cond_27

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_27

    .line 2586
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object v0, v2

    .line 2587
    .local v0, packageName:Ljava/lang/String;
    :goto_d
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2588
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_18

    .line 2589
    const-string v0, "android"

    .line 2593
    :cond_18
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2596
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_22
    return-object v2

    .line 2586
    :cond_23
    const-string v2, "android"

    move-object v0, v2

    goto :goto_d

    .line 2596
    :cond_27
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 5
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2602
    if-eqz p1, :cond_16

    .line 2603
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_b

    .line 2604
    const-string p1, "android"

    .line 2608
    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 2611
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;
    .registers 3

    .prologue
    .line 5554
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5555
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5556
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .registers 2

    .prologue
    .line 5560
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 8
    .parameter "tokens"
    .parameter "index"
    .parameter "defUnits"
    .parameter "defDps"
    .parameter "dm"

    .prologue
    .line 10039
    array-length v2, p0

    if-ge p1, v2, :cond_14

    .line 10040
    aget-object v0, p0, p1

    .line 10041
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 10043
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_13

    move-result v1

    .local v1, val:I
    move v2, v1

    .line 10053
    .end local v0           #str:Ljava/lang/String;
    .end local v1           #val:I
    :goto_12
    return v2

    .line 10045
    .restart local v0       #str:Ljava/lang/String;
    :catch_13
    move-exception v2

    .line 10049
    .end local v0           #str:Ljava/lang/String;
    :cond_14
    if-nez p2, :cond_18

    move v2, p3

    .line 10050
    goto :goto_12

    .line 10052
    :cond_18
    int-to-float v2, p3

    invoke-static {p2, v2, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .restart local v1       #val:I
    move v2, v1

    .line 10053
    goto :goto_12
.end method

.method private isSystemSecure()Z
    .registers 5

    .prologue
    const-string v3, "1"

    const-string v2, "0"

    .line 4649
    const-string v0, "1"

    const-string v0, "ro.secure"

    const-string v1, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "0"

    const-string v0, "ro.debuggable"

    const-string v1, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 2685
    const/4 v0, 0x0

    .line 2686
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2687
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 2688
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2689
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 2690
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2691
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2694
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_14
    if-eqz v0, :cond_1b

    .line 2695
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2697
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2701
    const/4 v0, 0x0

    .line 2702
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2703
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_e

    .line 2704
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2705
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_e

    .line 2706
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2707
    move v0, p2

    .line 2710
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_e
    if-eqz v0, :cond_15

    .line 2711
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2713
    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private static logSurface(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 7
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    const-string v3, "WindowManager"

    .line 2167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2169
    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_3f

    .line 2170
    const-string v1, "WindowManager"

    invoke-static {v3, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2174
    :goto_3e
    return-void

    .line 2172
    :cond_3f
    const-string v1, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;
    .registers 5
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 519
    new-instance v0, Lcom/android/server/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    .line 520
    .local v0, thr:Lcom/android/server/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WMThread;->start()V

    .line 522
    monitor-enter v0

    .line 523
    :goto_9
    :try_start_9
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_17

    if-nez v1, :cond_13

    .line 525
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_9

    .line 526
    :catch_11
    move-exception v1

    goto :goto_9

    .line 529
    :cond_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_17

    .line 531
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;

    return-object v1

    .line 529
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/WindowManagerService$AppWindowToken;IZ)V
    .registers 6
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    .line 4045
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 4048
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .line 4051
    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v0

    .line 4053
    if-eqz p3, :cond_1d

    .line 4054
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 4055
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 4057
    :cond_17
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4058
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4060
    :cond_1d
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .registers 9
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4064
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4066
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 4067
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4068
    .local v3, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_18

    .line 4069
    invoke-direct {p0, v3}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 4066
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4074
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 4077
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_37

    .line 4078
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4079
    .restart local v3       #token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_34

    .line 4080
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 4077
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 4084
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_37
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v4

    if-nez v4, :cond_41

    .line 4085
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 4087
    :cond_41
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4088
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4091
    return-void
.end method

.method private notifyFocusChanged()V
    .registers 6

    .prologue
    .line 4920
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4921
    :try_start_3
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4922
    monitor-exit v3

    .line 4931
    :cond_c
    return-void

    .line 4924
    :cond_d
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/android/server/WindowManagerService$WindowChangeListener;

    .line 4925
    .local v2, windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/WindowManagerService$WindowChangeListener;

    .line 4926
    .restart local v2       #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 4927
    array-length v0, v2

    .line 4928
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_c

    .line 4929
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 4928
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 4926
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v4
.end method

.method private notifyWindowsChanged()V
    .registers 6

    .prologue
    .line 4905
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4906
    :try_start_3
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4907
    monitor-exit v3

    .line 4916
    :cond_c
    return-void

    .line 4909
    :cond_d
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/android/server/WindowManagerService$WindowChangeListener;

    .line 4910
    .local v2, windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    check-cast v2, [Lcom/android/server/WindowManagerService$WindowChangeListener;

    .line 4911
    .restart local v2       #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2a

    .line 4912
    array-length v0, v2

    .line 4913
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v0, :cond_c

    .line 4914
    aget-object v3, v2, v1

    invoke-interface {v3}, Lcom/android/server/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 4913
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 4911
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #windowChangeListeners:[Lcom/android/server/WindowManagerService$WindowChangeListener;
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v4
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v9, "WindowManager"

    .line 8291
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-eqz v6, :cond_10

    .line 8295
    const-string v6, "WindowManager"

    const-string v6, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8363
    :cond_f
    :goto_f
    return-void

    .line 8299
    :cond_10
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    if-nez v6, :cond_f

    .line 8306
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-eqz v6, :cond_f

    .line 8311
    const/4 v2, 0x0

    .line 8312
    .local v2, recoveringMemory:Z
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v6, :cond_65

    .line 8313
    const/4 v2, 0x1

    .line 8315
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4f

    .line 8316
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 8317
    .local v5, ws:Lcom/android/server/WindowManagerService$WindowState;
    const-string v6, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8318
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v5}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 8315
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 8320
    .end local v5           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4f
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 8321
    const-string v6, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8322
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 8323
    .local v3, tmp:Ljava/lang/Object;
    monitor-enter v3

    .line 8325
    const-wide/16 v6, 0xfa

    :try_start_61
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_86
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_d6

    .line 8328
    :goto_64
    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_86

    .line 8331
    .end local v1           #i:I
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_65
    iput-boolean v8, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8333
    :try_start_67
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 8335
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v8

    .line 8336
    .restart local v1       #i:I
    if-ltz v1, :cond_c9

    .line 8337
    :goto_74
    if-ltz v1, :cond_89

    .line 8338
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 8339
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v4}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_83} :catch_bc

    .line 8340
    add-int/lit8 v1, v1, -0x1

    .line 8341
    goto :goto_74

    .line 8328
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v3       #tmp:Ljava/lang/Object;
    :catchall_86
    move-exception v6

    :try_start_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v6

    .line 8342
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_89
    :try_start_89
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 8344
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8345
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 8346
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8347
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 8355
    :cond_9a
    :goto_9a
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 8356
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 8357
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v8, 0x13

    invoke-virtual {v7, v8}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_ba
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_ba} :catch_bc

    goto/16 :goto_f

    .line 8359
    .end local v1           #i:I
    :catch_bc
    move-exception v6

    move-object v0, v6

    .line 8360
    .local v0, e:Ljava/lang/RuntimeException;
    iput-boolean v10, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8361
    const-string v6, "WindowManager"

    const-string v6, "Unhandled exception while layout out windows"

    invoke-static {v9, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 8350
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #i:I
    :cond_c9
    const/4 v6, 0x0

    :try_start_ca
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 8351
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v6, :cond_9a

    .line 8352
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_d5
    .catch Ljava/lang/RuntimeException; {:try_start_ca .. :try_end_d5} :catch_bc

    goto :goto_9a

    .line 8326
    .restart local v3       #tmp:Ljava/lang/Object;
    :catch_d6
    move-exception v6

    goto :goto_64
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .registers 90
    .parameter "recoveringMemory"

    .prologue
    .line 8472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v49

    .line 8473
    .local v49, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v15

    .line 8474
    .local v15, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v16

    .line 8478
    .local v16, dh:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_2a

    .line 8479
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 8480
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 8484
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v61, v5, v6

    .local v61, i:I
    :goto_36
    if-ltz v61, :cond_4c

    .line 8485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 8484
    add-int/lit8 v61, v61, -0x1

    goto :goto_36

    .line 8489
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v61, v5, v6

    :goto_58
    if-ltz v61, :cond_6e

    .line 8490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->hasVisible:Z

    .line 8489
    add-int/lit8 v61, v61, -0x1

    goto :goto_58

    .line 8493
    :cond_6e
    const/16 v70, 0x1

    .line 8494
    .local v70, orientationChangeComplete:Z
    const/16 v60, 0x0

    .line 8495
    .local v60, holdScreen:Lcom/android/server/WindowManagerService$Session;
    const/high16 v73, -0x4080

    .line 8496
    .local v73, screenBrightness:F
    const/high16 v42, -0x4080

    .line 8497
    .local v42, buttonBrightness:F
    const/16 v55, 0x0

    .line 8498
    .local v55, focusDisplayed:Z
    const/16 v35, 0x0

    .line 8499
    .local v35, animating:Z
    const/16 v48, 0x0

    .line 8501
    .local v48, createWatermark:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v5, v0

    if-nez v5, :cond_8f

    .line 8502
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 8503
    const/16 v48, 0x1

    .line 8508
    :cond_8f
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 8510
    if-eqz v48, :cond_97

    .line 8511
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->createWatermark()V

    .line 8513
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    move-object v5, v0

    if-eqz v5, :cond_aa

    .line 8514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    move-object v5, v0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$Watermark;->positionSurface(II)V

    .line 8518
    :cond_aa
    const/16 v82, 0x0

    .line 8519
    .local v82, wallpaperForceHidingChanged:Z
    const/16 v71, 0x0

    .line 8520
    .local v71, repeats:I
    const/16 v45, 0x0

    .line 8523
    .local v45, changes:I
    :cond_b0
    add-int/lit8 v71, v71, 0x1

    .line 8524
    const/4 v5, 0x6

    move/from16 v0, v71

    move v1, v5

    if-le v0, v1, :cond_44a

    .line 8525
    :try_start_b8
    const-string v5, "WindowManager"

    const-string v6, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8526
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9085
    :goto_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_c62

    const/4 v5, 0x1

    move/from16 v74, v5

    .line 9087
    .local v74, someoneLosingFocus:Z
    :goto_d3
    const/16 v66, 0x0

    .line 9088
    .local v66, obscured:Z
    const/16 v41, 0x0

    .line 9089
    .local v41, blurring:Z
    const/16 v52, 0x0

    .line 9090
    .local v52, dimming:Z
    const/16 v47, 0x0

    .line 9091
    .local v47, covered:Z
    const/16 v75, 0x0

    .line 9092
    .local v75, syswin:Z
    const/16 v39, 0x0

    .line 9094
    .local v39, backgroundFillerShown:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 9096
    .local v26, N:I
    const/4 v5, 0x1

    sub-int v61, v26, v5

    :goto_eb
    if-ltz v61, :cond_10aa

    .line 9097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/android/server/WindowManagerService$WindowState;

    .line 9099
    .local v80, w:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v53, 0x0

    .line 9100
    .local v53, displayed:Z
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    .line 9101
    .local v38, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v37, v0

    .line 9103
    .local v37, attrFlags:I
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_f43

    .line 9118
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 9126
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_c9c

    .line 9127
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move v6, v0

    if-ne v5, v6, :cond_13b

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move v6, v0

    if-eq v5, v6, :cond_c67

    :cond_13b
    const/4 v5, 0x1

    move/from16 v72, v5

    .line 9131
    .local v72, resize:Z
    :goto_13e
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move/from16 v85, v0

    .line 9132
    .local v85, width:I
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move/from16 v59, v0

    .line 9133
    .local v59, height:I
    move/from16 v0, v85

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    .line 9134
    move/from16 v0, v59

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    .line 9135
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_163
    .catch Ljava/lang/RuntimeException; {:try_start_b8 .. :try_end_163} :catch_6c7

    .line 9140
    :try_start_163
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 9141
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 9142
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_191
    .catch Ljava/lang/RuntimeException; {:try_start_163 .. :try_end_191} :catch_c6c

    .line 9156
    :cond_191
    :goto_191
    if-eqz v72, :cond_1f7

    .line 9157
    const/4 v5, 0x1

    move/from16 v0, v85

    move v1, v5

    if-ge v0, v1, :cond_19b

    const/16 v85, 0x1

    .line 9158
    :cond_19b
    const/4 v5, 0x1

    move/from16 v0, v59

    move v1, v5

    if-ge v0, v1, :cond_1a3

    const/16 v59, 0x1

    .line 9159
    :cond_1a3
    :try_start_1a3
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_1a8
    .catch Ljava/lang/RuntimeException; {:try_start_1a3 .. :try_end_1a8} :catch_6c7

    if-eqz v5, :cond_1f7

    .line 9166
    const/4 v5, 0x1

    :try_start_1ab
    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z

    .line 9167
    move/from16 v0, v85

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceW:I

    .line 9168
    move/from16 v0, v59

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceH:I

    .line 9169
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v85

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 9170
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 9171
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 9172
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_1f7
    .catch Ljava/lang/RuntimeException; {:try_start_1ab .. :try_end_1f7} :catch_cd4

    .line 9188
    :cond_1f7
    :goto_1f7
    :try_start_1f7
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_316

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    move v6, v0

    if-ne v5, v6, :cond_316

    .line 9189
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d46

    const/4 v5, 0x1

    :goto_21b
    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 9191
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d49

    const/4 v5, 0x1

    :goto_231
    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 9193
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_d4c

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_259

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_d4c

    :cond_259
    const/4 v5, 0x1

    move/from16 v46, v5

    .line 9204
    .local v46, configChanged:Z
    :goto_25c
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_283

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_283

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_283

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z

    move v5, v0

    if-nez v5, :cond_283

    if-eqz v46, :cond_d51

    .line 9209
    :cond_283
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9210
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9211
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-eqz v5, :cond_2e3

    .line 9218
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 9219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-nez v5, :cond_2e3

    .line 9220
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 9223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v6, v0

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v10, 0x7d0

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9233
    :cond_2e3
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_30b

    .line 9237
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 9238
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 9239
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 9240
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    if-eqz v5, :cond_30b

    .line 9241
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 9246
    :cond_30b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9257
    .end local v46           #configChanged:Z
    :cond_316
    :goto_316
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    move v5, v0

    if-nez v5, :cond_323

    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_d8e

    .line 9258
    :cond_323
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-nez v5, :cond_345

    .line 9266
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 9269
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_345

    .line 9270
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z
    :try_end_33d
    .catch Ljava/lang/RuntimeException; {:try_start_1f7 .. :try_end_33d} :catch_6c7

    .line 9272
    :try_start_33d
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_345
    .catch Ljava/lang/RuntimeException; {:try_start_33d .. :try_end_345} :catch_d6e

    .line 9284
    :cond_345
    :goto_345
    :try_start_345
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_352

    .line 9285
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 9351
    :cond_352
    :goto_352
    if-eqz v53, :cond_387

    .line 9352
    if-nez v47, :cond_368

    .line 9353
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_368

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_368

    .line 9355
    const/16 v47, 0x1

    .line 9358
    :cond_368
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_37f

    .line 9359
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_37d

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-eqz v5, :cond_f3b

    .line 9360
    :cond_37d
    const/16 v70, 0x0

    .line 9369
    :cond_37f
    :goto_37f
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 9377
    .end local v59           #height:I
    .end local v72           #resize:Z
    .end local v85           #width:I
    :cond_387
    :goto_387
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v43

    .line 9379
    .local v43, canBeSeen:Z
    if-eqz v74, :cond_39b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v80

    move-object v1, v5

    if-ne v0, v1, :cond_39b

    if-eqz v43, :cond_39b

    .line 9380
    const/16 v55, 0x1

    .line 9383
    :cond_39b
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    move v5, v0

    move v0, v5

    move/from16 v1, v66

    if-eq v0, v1, :cond_f52

    const/4 v5, 0x1

    move/from16 v67, v5

    .line 9386
    .local v67, obscuredChanged:Z
    :goto_3a8
    move/from16 v0, v66

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-nez v66, :cond_437

    .line 9387
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_41d

    .line 9388
    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x80

    move v5, v0

    if-eqz v5, :cond_3c4

    .line 9389
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object/from16 v60, v0

    .line 9391
    :cond_3c4
    if-nez v75, :cond_3e1

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3e1

    const/4 v5, 0x0

    cmpg-float v5, v73, v5

    if-gez v5, :cond_3e1

    .line 9393
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v73, v0

    .line 9395
    :cond_3e1
    if-nez v75, :cond_3fe

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3fe

    const/4 v5, 0x0

    cmpg-float v5, v42, v5

    if-gez v5, :cond_3fe

    .line 9397
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v42, v0

    .line 9399
    :cond_3fe
    if-eqz v43, :cond_41d

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_41b

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d4

    if-eq v5, v6, :cond_41b

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7da

    if-ne v5, v6, :cond_41d

    .line 9403
    :cond_41b
    const/16 v75, 0x1

    .line 9407
    :cond_41d
    if-eqz v43, :cond_f57

    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_f57

    const/4 v5, 0x1

    move/from16 v69, v5

    .line 9408
    .local v69, opaqueDrawn:Z
    :goto_428
    if-eqz v69, :cond_f5c

    move-object/from16 v0, v80

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_f5c

    .line 9412
    const/16 v66, 0x1

    .line 9497
    .end local v69           #opaqueDrawn:Z
    :cond_437
    :goto_437
    if-eqz v67, :cond_446

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    if-ne v0, v1, :cond_446

    .line 9501
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateWallpaperVisibilityLocked()V

    .line 9096
    :cond_446
    add-int/lit8 v61, v61, -0x1

    goto/16 :goto_eb

    .line 8530
    .end local v26           #N:I
    .end local v37           #attrFlags:I
    .end local v38           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v39           #backgroundFillerShown:Z
    .end local v41           #blurring:Z
    .end local v43           #canBeSeen:Z
    .end local v47           #covered:Z
    .end local v52           #dimming:Z
    .end local v53           #displayed:Z
    .end local v66           #obscured:Z
    .end local v67           #obscuredChanged:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v75           #syswin:Z
    .end local v80           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_44a
    and-int/lit8 v5, v45, 0x7

    if-eqz v5, :cond_487

    .line 8533
    and-int/lit8 v5, v45, 0x4

    if-eqz v5, :cond_463

    .line 8534
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_463

    .line 8535
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 8536
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8539
    :cond_463
    and-int/lit8 v5, v45, 0x2

    if-eqz v5, :cond_47d

    .line 8541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v5

    if-eqz v5, :cond_47d

    .line 8542
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8546
    :cond_47d
    and-int/lit8 v5, v45, 0x1

    if-eqz v5, :cond_487

    .line 8547
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8552
    :cond_487
    const/4 v5, 0x4

    move/from16 v0, v71

    move v1, v5

    if-ge v0, v1, :cond_497

    .line 8553
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()I

    move-result v45

    .line 8554
    if-eqz v45, :cond_4a0

    .line 9081
    :goto_493
    if-nez v45, :cond_b0

    goto/16 :goto_c5

    .line 8558
    :cond_497
    const-string v5, "WindowManager"

    const-string v6, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8559
    const/16 v45, 0x0

    .line 8562
    :cond_4a0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    move v5, v0

    add-int/lit8 v79, v5, 0x1

    move/from16 v0, v79

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 8566
    .local v79, transactionSequence:I
    const/16 v78, 0x0

    .line 8567
    .local v78, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 8568
    .local v27, NAT:I
    const/16 v61, 0x0

    :goto_4ba
    move/from16 v0, v61

    move/from16 v1, v27

    if-ge v0, v1, :cond_4df

    .line 8569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v49

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_4dc

    .line 8570
    const/16 v78, 0x1

    .line 8568
    :cond_4dc
    add-int/lit8 v61, v61, 0x1

    goto :goto_4ba

    .line 8573
    :cond_4df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 8574
    .local v29, NEAT:I
    const/16 v61, 0x0

    :goto_4ea
    move/from16 v0, v61

    move/from16 v1, v29

    if-ge v0, v1, :cond_50f

    .line 8575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v49

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_50c

    .line 8576
    const/16 v78, 0x1

    .line 8574
    :cond_50c
    add-int/lit8 v61, v61, 0x1

    goto :goto_4ea

    .line 8586
    :cond_50f
    move/from16 v35, v78

    .line 8588
    const/16 v77, 0x0

    .line 8589
    .local v77, tokenMayBeDrawn:Z
    const/16 v83, 0x0

    .line 8590
    .local v83, wallpaperMayChange:Z
    const/16 v56, 0x0

    .line 8592
    .local v56, forceHiding:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 8594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 8596
    .restart local v26       #N:I
    const/4 v5, 0x1

    sub-int v61, v26, v5

    :goto_52f
    if-ltz v61, :cond_855

    .line 8597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/android/server/WindowManagerService$WindowState;

    .line 8599
    .restart local v80       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    .line 8601
    .restart local v38       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_5b7

    .line 8603
    move-object/from16 v0, v80

    move-wide/from16 v1, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_564

    .line 8604
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_564

    .line 8608
    const/16 v83, 0x1

    .line 8612
    :cond_564
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move/from16 v84, v0

    .line 8613
    .local v84, wasAnimating:Z
    move-object/from16 v0, v80

    move-wide/from16 v1, v49

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowState;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_579

    .line 8614
    const/16 v35, 0x1

    .line 8617
    :cond_579
    if-eqz v84, :cond_58e

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_58e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    if-ne v0, v1, :cond_58e

    .line 8618
    const/16 v83, 0x1

    .line 8621
    :cond_58e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_659

    .line 8622
    if-nez v84, :cond_648

    if-eqz v35, :cond_648

    .line 8626
    const/16 v82, 0x1

    .line 8627
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 8668
    :cond_5aa
    :goto_5aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 8671
    .end local v84           #wasAnimating:Z
    :cond_5b7
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v36, v0

    .line 8672
    .local v36, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v36, :cond_849

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    move v5, v0

    if-eqz v5, :cond_5cd

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_849

    .line 8673
    :cond_5cd
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    move v5, v0

    move v0, v5

    move/from16 v1, v79

    if-eq v0, v1, :cond_5ee

    .line 8674
    move/from16 v0, v79

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    .line 8675
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 8676
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 8678
    :cond_5ee
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_5fe

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_644

    :cond_5fe
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move v5, v0

    if-nez v5, :cond_644

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move v5, v0

    if-nez v5, :cond_644

    .line 8695
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v80

    move-object v1, v5

    if-eq v0, v1, :cond_83b

    .line 8696
    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_624

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_644

    .line 8697
    :cond_624
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 8698
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_644

    .line 8699
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v36

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    .line 8704
    const/16 v77, 0x1

    .line 8596
    :cond_644
    :goto_644
    add-int/lit8 v61, v61, -0x1

    goto/16 :goto_52f

    .line 8628
    .end local v36           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v84       #wasAnimating:Z
    :cond_648
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_5aa

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    if-nez v5, :cond_5aa

    .line 8629
    const/16 v56, 0x1

    goto/16 :goto_5aa

    .line 8631
    :cond_659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_5aa

    .line 8633
    if-eqz v56, :cond_685

    .line 8634
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v80

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->hideLw(ZZ)Z

    move-result v44

    .line 8662
    .local v44, changed:Z
    :cond_675
    :goto_675
    if-eqz v44, :cond_5aa

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v0

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_5aa

    .line 8664
    const/16 v83, 0x1

    goto/16 :goto_5aa

    .line 8638
    .end local v44           #changed:Z
    :cond_685
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v80

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->showLw(ZZ)Z

    move-result v44

    .line 8641
    .restart local v44       #changed:Z
    if-eqz v44, :cond_675

    .line 8642
    if-eqz v82, :cond_6ab

    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_6ab

    .line 8648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v32

    .line 8649
    .local v32, a:Landroid/view/animation/Animation;
    if-eqz v32, :cond_6ab

    .line 8650
    move-object/from16 v0, v80

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8653
    .end local v32           #a:Landroid/view/animation/Animation;
    :cond_6ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_6c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move v6, v0

    if-ge v5, v6, :cond_675

    .line 8658
    :cond_6c0
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z
    :try_end_6c6
    .catch Ljava/lang/RuntimeException; {:try_start_345 .. :try_end_6c6} :catch_6c7

    goto :goto_675

    .line 9532
    .end local v26           #N:I
    .end local v27           #NAT:I
    .end local v29           #NEAT:I
    .end local v38           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v44           #changed:Z
    .end local v56           #forceHiding:Z
    .end local v77           #tokenMayBeDrawn:Z
    .end local v78           #tokensAnimating:Z
    .end local v79           #transactionSequence:I
    .end local v80           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v83           #wallpaperMayChange:Z
    .end local v84           #wasAnimating:Z
    :catch_6c7
    move-exception v5

    move-object/from16 v54, v5

    .line 9533
    .local v54, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception in Window Manager"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9536
    .end local v54           #e:Ljava/lang/RuntimeException;
    :cond_6d5
    :goto_6d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 9538
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 9540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    move-object v5, v0

    if-eqz v5, :cond_6ef

    .line 9541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$Watermark;->drawIfNeeded()V

    .line 9547
    :cond_6ef
    if-eqz v70, :cond_70b

    .line 9548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_708

    .line 9549
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 9550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9552
    :cond_708
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 9555
    :cond_70b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v61

    .line 9556
    if-lez v61, :cond_7aa

    .line 9558
    :cond_716
    add-int/lit8 v61, v61, -0x1

    .line 9559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Lcom/android/server/WindowManagerService$WindowState;

    .line 9563
    .local v86, win:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v51, 0x0

    .line 9564
    .local v51, diff:I
    :try_start_728
    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_112a

    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_74b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v51

    if-eqz v51, :cond_112a

    :cond_74b
    const/4 v5, 0x1

    move/from16 v46, v5

    .line 9575
    .restart local v46       #configChanged:Z
    :goto_74e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v86

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 9576
    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v18

    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v86

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v22, v0

    if-eqz v46, :cond_112f

    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v23, v5

    :goto_78b
    invoke-interface/range {v17 .. v23}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 9580
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v86

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 9581
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v86

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 9582
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v86

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z
    :try_end_7a0
    .catch Landroid/os/RemoteException; {:try_start_728 .. :try_end_7a0} :catch_1134

    .line 9586
    .end local v46           #configChanged:Z
    :goto_7a0
    if-gtz v61, :cond_716

    .line 9587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9591
    .end local v51           #diff:I
    .end local v86           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7aa
    const/16 v81, 0x0

    .line 9592
    .local v81, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v61

    .line 9593
    if-lez v61, :cond_7f6

    .line 9595
    :cond_7b7
    add-int/lit8 v61, v61, -0x1

    .line 9596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Lcom/android/server/WindowManagerService$WindowState;

    .line 9597
    .restart local v86       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v86

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 9598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v86

    if-ne v0, v1, :cond_7dd

    .line 9599
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 9601
    :cond_7dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v86

    move-object v1, v5

    if-ne v0, v1, :cond_7e9

    .line 9602
    const/16 v81, 0x1

    .line 9604
    :cond_7e9
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    .line 9605
    if-gtz v61, :cond_7b7

    .line 9606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9610
    .end local v86           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v61, v5, v6

    :goto_802
    if-ltz v61, :cond_113f

    .line 9611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/server/WindowManagerService$WindowToken;

    .line 9612
    .local v76, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v76

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_838

    .line 9613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9614
    move-object/from16 v0, v76

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    move v5, v0

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_838

    .line 9615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9610
    :cond_838
    add-int/lit8 v61, v61, -0x1

    goto :goto_802

    .line 8707
    .end local v76           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v81           #wallpaperDestroyed:Z
    .restart local v26       #N:I
    .restart local v27       #NAT:I
    .restart local v29       #NEAT:I
    .restart local v36       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v38       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v56       #forceHiding:Z
    .restart local v77       #tokenMayBeDrawn:Z
    .restart local v78       #tokensAnimating:Z
    .restart local v79       #transactionSequence:I
    .restart local v80       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v83       #wallpaperMayChange:Z
    :cond_83b
    :try_start_83b
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_644

    .line 8708
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v36

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_644

    .line 8711
    :cond_849
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-eqz v5, :cond_644

    .line 8712
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    goto/16 :goto_644

    .line 8716
    .end local v36           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v38           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v80           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v45, v45, v5

    .line 8718
    if-eqz v77, :cond_8d0

    .line 8721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 8722
    .local v31, NT:I
    const/16 v61, 0x0

    :goto_86d
    move/from16 v0, v61

    move/from16 v1, v31

    if-ge v0, v1, :cond_8d0

    .line 8723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8724
    .local v6, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v6, :cond_888

    .line 8722
    :cond_885
    :goto_885
    add-int/lit8 v61, v61, 0x1

    goto :goto_86d

    .line 8727
    :cond_888
    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_8aa

    .line 8728
    move-object v0, v6

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v65, v0

    .line 8729
    .local v65, numInteresting:I
    if-lez v65, :cond_885

    iget v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v65

    if-lt v0, v1, :cond_885

    .line 8734
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 8735
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 8736
    const/16 v70, 0x1

    goto :goto_885

    .line 8738
    .end local v65           #numInteresting:I
    :cond_8aa
    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_885

    .line 8739
    move-object v0, v6

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v65, v0

    .line 8740
    .restart local v65       #numInteresting:I
    if-lez v65, :cond_885

    iget v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v65

    if-lt v0, v1, :cond_885

    .line 8745
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 8746
    or-int/lit8 v45, v45, 0x8

    .line 8749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_885

    .line 8750
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    goto :goto_885

    .line 8760
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v31           #NT:I
    .end local v65           #numInteresting:I
    :cond_8d0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-eqz v5, :cond_b4b

    .line 8761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 8762
    .local v30, NN:I
    const/16 v58, 0x1

    .line 8767
    .local v58, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_919

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    move v5, v0

    if-nez v5, :cond_919

    .line 8771
    const/16 v61, 0x0

    :goto_8f2
    move/from16 v0, v61

    move/from16 v1, v30

    if-ge v0, v1, :cond_919

    if-eqz v58, :cond_919

    .line 8772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8777
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_916

    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_916

    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_916

    .line 8779
    const/16 v58, 0x0

    .line 8771
    :cond_916
    add-int/lit8 v61, v61, 0x1

    goto :goto_8f2

    .line 8783
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_919
    if-eqz v58, :cond_b4b

    .line 8785
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move v9, v0

    .line 8786
    .local v9, transit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move v5, v0

    if-eqz v5, :cond_928

    .line 8787
    const/4 v9, -0x1

    .line 8789
    :cond_928
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 8790
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 8791
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 8792
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 8793
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 8794
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 8796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 8803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_99c

    .line 8804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 8805
    const/16 v61, 0x0

    :goto_96c
    move/from16 v0, v61

    move/from16 v1, v30

    if-ge v0, v1, :cond_994

    .line 8806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8807
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    if-eqz v5, :cond_991

    .line 8808
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 8809
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v30

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/WindowManagerService$AppWindowToken;IZ)V

    .line 8805
    :cond_991
    add-int/lit8 v61, v61, 0x1

    goto :goto_96c

    .line 8812
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8815
    :cond_99c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v68, v0

    .line 8817
    .local v68, oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 8818
    const/16 v83, 0x0

    .line 8822
    const/4 v7, 0x0

    .line 8823
    .local v7, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v34, 0x0

    .line 8824
    .local v34, animToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v40, -0x1

    .line 8830
    .local v40, bestAnimLayer:I
    const/16 v57, 0x0

    .line 8841
    .local v57, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 8842
    .local v28, NC:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v30, v28, v5

    .line 8843
    const/16 v61, 0x0

    :goto_9c4
    move/from16 v0, v61

    move/from16 v1, v30

    if-ge v0, v1, :cond_a4e

    .line 8846
    move/from16 v0, v61

    move/from16 v1, v28

    if-ge v0, v1, :cond_a22

    .line 8847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8848
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v63, 0x1

    .line 8853
    .local v63, mode:I
    :goto_9e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_9fb

    .line 8854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v6, :cond_9f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v5, v6, :cond_9fb

    .line 8856
    :cond_9f9
    or-int v57, v57, v63

    .line 8859
    :cond_9fb
    iget-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_a1f

    .line 8860
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->findMainWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v87

    .line 8861
    .local v87, ws:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v87, :cond_a1f

    .line 8864
    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x2000

    and-int/2addr v5, v6

    if-eqz v5, :cond_a32

    .line 8865
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    .line 8866
    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v34, v0

    .line 8867
    const v40, 0x7fffffff

    .line 8843
    .end local v87           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a1f
    :goto_a1f
    add-int/lit8 v61, v61, 0x1

    goto :goto_9c4

    .line 8850
    .end local v63           #mode:I
    :cond_a22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    sub-int v6, v61, v28

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8851
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v63, 0x2

    .restart local v63       #mode:I
    goto :goto_9e0

    .line 8868
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v87       #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a32
    move-object/from16 v0, v87

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move v5, v0

    move v0, v5

    move/from16 v1, v40

    if-le v0, v1, :cond_a1f

    .line 8869
    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    .line 8870
    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v34, v0

    .line 8871
    move-object/from16 v0, v87

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move/from16 v40, v0

    goto :goto_a1f

    .line 8877
    .end local v63           #mode:I
    .end local v87           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a4e
    const/4 v5, 0x3

    move/from16 v0, v57

    move v1, v5

    if-ne v0, v1, :cond_ab3

    .line 8880
    sparse-switch v9, :sswitch_data_12b4

    .line 8908
    :cond_a57
    :goto_a57
    and-int/lit16 v5, v9, 0x1000

    if-eqz v5, :cond_ac2

    .line 8909
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8910
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 8921
    :cond_a66
    :goto_a66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_a72

    .line 8922
    const/4 v7, 0x0

    .line 8925
    :cond_a72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 8926
    const/16 v61, 0x0

    :goto_a7d
    move/from16 v0, v61

    move/from16 v1, v30

    if-ge v0, v1, :cond_adb

    .line 8927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8930
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    .line 8931
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 8932
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8933
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8934
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8935
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 8936
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 8926
    add-int/lit8 v61, v61, 0x1

    goto :goto_a7d

    .line 8884
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :sswitch_aad
    const/16 v9, 0x100e

    .line 8885
    goto :goto_a57

    .line 8889
    :sswitch_ab0
    const/16 v9, 0x200f

    goto :goto_a57

    .line 8894
    :cond_ab3
    if-eqz v68, :cond_ab8

    .line 8897
    const/16 v9, 0x200c

    goto :goto_a57

    .line 8900
    :cond_ab8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_a57

    .line 8903
    const/16 v9, 0x100d

    goto :goto_a57

    .line 8911
    :cond_ac2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    if-eqz v5, :cond_a66

    .line 8912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    move-object v7, v0

    .line 8913
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8914
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_a66

    .line 8938
    :cond_adb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 8939
    const/16 v61, 0x0

    :goto_ae6
    move/from16 v0, v61

    move/from16 v1, v30

    if-ge v0, v1, :cond_b13

    .line 8940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8943
    .restart local v6       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 8944
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 8945
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 8946
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 8947
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    .line 8951
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 8939
    add-int/lit8 v61, v61, 0x1

    goto :goto_ae6

    .line 8954
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_b13
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 8956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8961
    or-int/lit8 v45, v45, 0x1

    .line 8962
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8963
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_b3e

    .line 8964
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 8966
    :cond_b3e
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 8967
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 8971
    .end local v7           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #transit:I
    .end local v28           #NC:I
    .end local v30           #NN:I
    .end local v34           #animToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v40           #bestAnimLayer:I
    .end local v57           #foundWallpapers:I
    .end local v58           #goodToGo:Z
    .end local v68           #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b4b
    const/16 v33, 0x0

    .line 8973
    .local v33, adjResult:I
    if-nez v35, :cond_b7a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_b7a

    .line 8980
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 8982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 8984
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 8985
    or-int/lit8 v45, v45, 0x1

    .line 8986
    or-int/lit8 v33, v33, 0x2

    .line 8987
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 8988
    const/16 v83, 0x1

    .line 8992
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 8995
    :cond_b7a
    if-eqz v82, :cond_c1c

    if-nez v45, :cond_c1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-nez v5, :cond_c1c

    .line 9002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v68, v0

    .line 9003
    .restart local v68       #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_bb3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_bb3

    .line 9011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-eqz v5, :cond_bb3

    .line 9015
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 9016
    or-int/lit8 v45, v45, 0x8

    .line 9019
    :cond_bb3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v33, v33, v5

    .line 9020
    const/16 v83, 0x0

    .line 9021
    const/16 v82, 0x0

    .line 9025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-nez v5, :cond_c1c

    .line 9028
    const/16 v56, 0x0

    .line 9029
    const/4 v5, 0x1

    sub-int v61, v26, v5

    :goto_bc9
    if-ltz v61, :cond_c1c

    .line 9030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Lcom/android/server/WindowManagerService$WindowState;

    .line 9031
    .restart local v80       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_bfe

    .line 9032
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    .line 9033
    .restart local v38       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_c01

    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_c01

    .line 9035
    const/16 v56, 0x1

    .line 9029
    .end local v38           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_bfe
    :goto_bfe
    add-int/lit8 v61, v61, -0x1

    goto :goto_bc9

    .line 9036
    .restart local v38       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_c01
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_bfe

    .line 9037
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_bfe

    .line 9040
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_bfe

    .line 9048
    .end local v38           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v68           #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    .end local v80           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c1c
    if-eqz v83, :cond_c24

    .line 9051
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v33, v33, v5

    .line 9054
    :cond_c24
    and-int/lit8 v5, v33, 0x2

    if-eqz v5, :cond_c5b

    .line 9057
    or-int/lit8 v45, v45, 0x1

    .line 9058
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9065
    :cond_c2d
    :goto_c2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_c48

    .line 9066
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 9067
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v5

    if-eqz v5, :cond_c48

    .line 9068
    or-int/lit8 v45, v45, 0x8

    .line 9069
    const/16 v33, 0x0

    .line 9073
    :cond_c48
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    move v5, v0

    if-eqz v5, :cond_c51

    .line 9074
    or-int/lit8 v45, v45, 0x1

    .line 9080
    :cond_c51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    goto/16 :goto_493

    .line 9059
    :cond_c5b
    and-int/lit8 v5, v33, 0x4

    if-eqz v5, :cond_c2d

    .line 9062
    or-int/lit8 v45, v45, 0x1

    goto :goto_c2d

    .line 9085
    .end local v26           #N:I
    .end local v27           #NAT:I
    .end local v29           #NEAT:I
    .end local v33           #adjResult:I
    .end local v56           #forceHiding:Z
    .end local v77           #tokenMayBeDrawn:Z
    .end local v78           #tokensAnimating:Z
    .end local v79           #transactionSequence:I
    .end local v83           #wallpaperMayChange:Z
    :cond_c62
    const/4 v5, 0x0

    move/from16 v74, v5

    goto/16 :goto_d3

    .line 9127
    .restart local v26       #N:I
    .restart local v37       #attrFlags:I
    .restart local v38       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v39       #backgroundFillerShown:Z
    .restart local v41       #blurring:Z
    .restart local v47       #covered:Z
    .restart local v52       #dimming:Z
    .restart local v53       #displayed:Z
    .restart local v66       #obscured:Z
    .restart local v74       #someoneLosingFocus:Z
    .restart local v75       #syswin:Z
    .restart local v80       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c67
    const/4 v5, 0x0

    move/from16 v72, v5

    goto/16 :goto_13e

    .line 9143
    .restart local v59       #height:I
    .restart local v72       #resize:Z
    .restart local v85       #width:I
    :catch_c6c
    move-exception v5

    move-object/from16 v54, v5

    .line 9144
    .restart local v54       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error positioning surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9145
    if-nez p1, :cond_191

    .line 9146
    const-string v5, "position"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_191

    .line 9150
    .end local v54           #e:Ljava/lang/RuntimeException;
    .end local v59           #height:I
    .end local v72           #resize:Z
    .end local v85           #width:I
    :cond_c9c
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cd0

    const/4 v5, 0x1

    move/from16 v72, v5

    .line 9151
    .restart local v72       #resize:Z
    :goto_caf
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v85

    .line 9152
    .restart local v85       #width:I
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v59

    .line 9153
    .restart local v59       #height:I
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_191

    .line 9150
    .end local v59           #height:I
    .end local v72           #resize:Z
    .end local v85           #width:I
    :cond_cd0
    const/4 v5, 0x0

    move/from16 v72, v5

    goto :goto_caf

    .line 9174
    .restart local v59       #height:I
    .restart local v72       #resize:Z
    .restart local v85       #width:I
    :catch_cd4
    move-exception v5

    move-object/from16 v54, v5

    .line 9178
    .restart local v54       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure updating surface of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "size=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), pos=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9182
    if-nez p1, :cond_1f7

    .line 9183
    const-string v5, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_1f7

    .line 9189
    .end local v54           #e:Ljava/lang/RuntimeException;
    :cond_d46
    const/4 v5, 0x0

    goto/16 :goto_21b

    .line 9191
    :cond_d49
    const/4 v5, 0x0

    goto/16 :goto_231

    .line 9193
    :cond_d4c
    const/4 v5, 0x0

    move/from16 v46, v5

    goto/16 :goto_25c

    .line 9247
    .restart local v46       #configChanged:Z
    :cond_d51
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_316

    .line 9248
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_316

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_316

    .line 9252
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_316

    .line 9273
    .end local v46           #configChanged:Z
    :catch_d6e
    move-exception v5

    move-object/from16 v54, v5

    .line 9274
    .restart local v54       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception hiding surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_345

    .line 9289
    .end local v54           #e:Ljava/lang/RuntimeException;
    :cond_d8e
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    if-ne v5, v6, :cond_e03

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e03

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e03

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e03

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e03

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e03

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e03

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    move v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e03

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_f37

    .line 9298
    :cond_e03
    const/16 v53, 0x1

    .line 9299
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 9300
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    .line 9301
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    .line 9302
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    .line 9303
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    .line 9304
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    .line 9305
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    .line 9306
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    .line 9313
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_e5a
    .catch Ljava/lang/RuntimeException; {:try_start_83b .. :try_end_e5a} :catch_6c7

    if-eqz v5, :cond_ebe

    .line 9315
    :try_start_e5c
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceAlpha:F

    .line 9316
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setAlpha(F)V

    .line 9317
    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v80

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceLayer:I

    .line 9318
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 9319
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v7, v0

    mul-float/2addr v6, v7

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v7, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v8, v0

    mul-float/2addr v7, v8

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v8, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v9, v0

    mul-float/2addr v8, v9

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v9, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v10, v0

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_ebe
    .catch Ljava/lang/RuntimeException; {:try_start_e5c .. :try_end_ebe} :catch_f01

    .line 9330
    :cond_ebe
    :goto_ebe
    :try_start_ebe
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_ef0

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_ef0

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_ef0

    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-nez v5, :cond_ef0

    .line 9337
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    if-eqz v5, :cond_f30

    .line 9338
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    .line 9339
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 9344
    :cond_ef0
    :goto_ef0
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_352

    .line 9345
    move-object/from16 v0, v80

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    goto/16 :goto_352

    .line 9322
    :catch_f01
    move-exception v5

    move-object/from16 v54, v5

    .line 9323
    .restart local v54       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error updating surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9324
    if-nez p1, :cond_ebe

    .line 9325
    const-string v5, "update"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto :goto_ebe

    .line 9341
    .end local v54           #e:Ljava/lang/RuntimeException;
    :cond_f30
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto :goto_ef0

    .line 9348
    :cond_f37
    const/16 v53, 0x1

    goto/16 :goto_352

    .line 9364
    :cond_f3b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_37f

    .line 9371
    .end local v59           #height:I
    .end local v72           #resize:Z
    .end local v85           #width:I
    :cond_f43
    move-object/from16 v0, v80

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_387

    .line 9374
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v80

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_387

    .line 9383
    .restart local v43       #canBeSeen:Z
    :cond_f52
    const/4 v5, 0x0

    move/from16 v67, v5

    goto/16 :goto_3a8

    .line 9407
    .restart local v67       #obscuredChanged:Z
    :cond_f57
    const/4 v5, 0x0

    move/from16 v69, v5

    goto/16 :goto_428

    .line 9413
    .restart local v69       #opaqueDrawn:Z
    :cond_f5c
    if-eqz v69, :cond_fda

    move-object/from16 v0, v80

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->needsBackgroundFiller(II)Z

    move-result v5

    if-eqz v5, :cond_fda

    .line 9416
    const/16 v66, 0x1

    .line 9417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_f70
    .catch Ljava/lang/RuntimeException; {:try_start_ebe .. :try_end_f70} :catch_6c7

    if-nez v5, :cond_f89

    .line 9419
    :try_start_f72
    new-instance v10, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v11, v0

    const/4 v12, 0x0

    const-string v13, "BackGroundFiller"

    const/4 v14, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;
    :try_end_f89
    .catch Ljava/lang/Exception; {:try_start_f72 .. :try_end_f89} :catch_fc0
    .catch Ljava/lang/RuntimeException; {:try_start_f72 .. :try_end_f89} :catch_6c7

    .line 9429
    :cond_f89
    :goto_f89
    :try_start_f89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 9430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 9433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 9434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_fb6
    .catch Ljava/lang/RuntimeException; {:try_start_f89 .. :try_end_fb6} :catch_fcf

    .line 9438
    :goto_fb6
    const/16 v39, 0x1

    .line 9439
    const/4 v5, 0x1

    :try_start_fb9
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    goto/16 :goto_437

    .line 9424
    :catch_fc0
    move-exception v5

    move-object/from16 v54, v5

    .line 9425
    .local v54, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f89

    .line 9435
    .end local v54           #e:Ljava/lang/Exception;
    :catch_fcf
    move-exception v5

    move-object/from16 v54, v5

    .line 9436
    .local v54, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception showing filler surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb6

    .line 9440
    .end local v54           #e:Ljava/lang/RuntimeException;
    :cond_fda
    if-eqz v43, :cond_437

    if-nez v66, :cond_437

    and-int/lit8 v5, v37, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_437

    .line 9446
    and-int/lit8 v5, v37, 0x2

    if-eqz v5, :cond_101b

    .line 9447
    if-nez v52, :cond_101b

    .line 9449
    const/16 v52, 0x1

    .line 9450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-nez v5, :cond_1002

    .line 9451
    new-instance v5, Lcom/android/server/WindowManagerService$DimAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/server/WindowManagerService$DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 9453
    :cond_1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$DimAnimator;->show(II)V

    .line 9454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v80

    move-wide/from16 v2, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$DimAnimator;->updateParameters(Lcom/android/server/WindowManagerService$WindowState;J)V

    .line 9457
    :cond_101b
    and-int/lit8 v5, v37, 0x4

    if-eqz v5, :cond_437

    .line 9458
    if-nez v41, :cond_437

    .line 9460
    const/16 v41, 0x1

    .line 9461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_1028
    .catch Ljava/lang/RuntimeException; {:try_start_fb9 .. :try_end_1028} :catch_6c7

    if-nez v5, :cond_1049

    .line 9465
    :try_start_102a
    new-instance v17, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "BlurSurface"

    const/16 v21, -0x1

    const/16 v22, 0x10

    const/16 v23, 0x10

    const/16 v24, -0x1

    const/high16 v25, 0x1

    invoke-direct/range {v17 .. v25}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_1049
    .catch Ljava/lang/Exception; {:try_start_102a .. :try_end_1049} :catch_108c
    .catch Ljava/lang/RuntimeException; {:try_start_102a .. :try_end_1049} :catch_6c7

    .line 9474
    :cond_1049
    :goto_1049
    :try_start_1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_437

    .line 9478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 9479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 9480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v80

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 9481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_107a
    .catch Ljava/lang/RuntimeException; {:try_start_1049 .. :try_end_107a} :catch_6c7

    if-nez v5, :cond_437

    .line 9485
    :try_start_107c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_1084
    .catch Ljava/lang/RuntimeException; {:try_start_107c .. :try_end_1084} :catch_109b

    .line 9489
    :goto_1084
    const/4 v5, 0x1

    :try_start_1085
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_437

    .line 9470
    :catch_108c
    move-exception v5

    move-object/from16 v54, v5

    .line 9471
    .local v54, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating Blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1049

    .line 9486
    .end local v54           #e:Ljava/lang/Exception;
    :catch_109b
    move-exception v5

    move-object/from16 v54, v5

    .line 9487
    .local v54, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Failure showing blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1084

    .line 9505
    .end local v37           #attrFlags:I
    .end local v38           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v43           #canBeSeen:Z
    .end local v53           #displayed:Z
    .end local v54           #e:Ljava/lang/RuntimeException;
    .end local v67           #obscuredChanged:Z
    .end local v69           #opaqueDrawn:Z
    .end local v80           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_10aa
    if-nez v39, :cond_10c1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    move v5, v0

    if-eqz v5, :cond_10c1

    .line 9506
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z
    :try_end_10b9
    .catch Ljava/lang/RuntimeException; {:try_start_1085 .. :try_end_10b9} :catch_6c7

    .line 9509
    :try_start_10b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_10c1
    .catch Ljava/lang/RuntimeException; {:try_start_10b9 .. :try_end_10c1} :catch_110e

    .line 9515
    :cond_10c1
    :goto_10c1
    :try_start_10c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-eqz v5, :cond_10f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_10f5

    .line 9516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v6, v0

    if-nez v6, :cond_10e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_111d

    :cond_10e8
    const/4 v6, 0x1

    :goto_10e9
    move-object v0, v5

    move/from16 v1, v52

    move-wide/from16 v2, v49

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v35, v35, v5

    .line 9520
    :cond_10f5
    if-nez v41, :cond_6d5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_10fc
    .catch Ljava/lang/RuntimeException; {:try_start_10c1 .. :try_end_10fc} :catch_6c7

    if-eqz v5, :cond_6d5

    .line 9524
    :try_start_10fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_1106
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10fe .. :try_end_1106} :catch_111f
    .catch Ljava/lang/RuntimeException; {:try_start_10fe .. :try_end_1106} :catch_6c7

    .line 9528
    :goto_1106
    const/4 v5, 0x0

    :try_start_1107
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_6d5

    .line 9510
    :catch_110e
    move-exception v5

    move-object/from16 v54, v5

    .line 9511
    .restart local v54       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception hiding filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10c1

    .line 9516
    .end local v54           #e:Ljava/lang/RuntimeException;
    :cond_111d
    const/4 v6, 0x0

    goto :goto_10e9

    .line 9525
    :catch_111f
    move-exception v5

    move-object/from16 v54, v5

    .line 9526
    .local v54, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v6, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1129
    .catch Ljava/lang/RuntimeException; {:try_start_1107 .. :try_end_1129} :catch_6c7

    goto :goto_1106

    .line 9564
    .end local v26           #N:I
    .end local v39           #backgroundFillerShown:Z
    .end local v41           #blurring:Z
    .end local v47           #covered:Z
    .end local v52           #dimming:Z
    .end local v54           #e:Ljava/lang/IllegalArgumentException;
    .end local v66           #obscured:Z
    .end local v74           #someoneLosingFocus:Z
    .end local v75           #syswin:Z
    .restart local v51       #diff:I
    .restart local v86       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_112a
    const/4 v5, 0x0

    move/from16 v46, v5

    goto/16 :goto_74e

    .line 9576
    .restart local v46       #configChanged:Z
    :cond_112f
    const/4 v5, 0x0

    move-object/from16 v23, v5

    goto/16 :goto_78b

    .line 9583
    .end local v46           #configChanged:Z
    :catch_1134
    move-exception v5

    move-object/from16 v54, v5

    .line 9584
    .local v54, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v86

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_7a0

    .line 9621
    .end local v51           #diff:I
    .end local v54           #e:Landroid/os/RemoteException;
    .end local v86           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v81       #wallpaperDestroyed:Z
    :cond_113f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v61, v5, v6

    :goto_114b
    if-ltz v61, :cond_11ab

    .line 9622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9623
    .local v76, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v76

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_11a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11a8

    .line 9627
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v76

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 9628
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v76

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 9629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v76

    if-ne v0, v1, :cond_11a8

    .line 9632
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9633
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 9621
    :cond_11a8
    add-int/lit8 v61, v61, -0x1

    goto :goto_114b

    .line 9638
    .end local v76           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_11ab
    const/16 v64, 0x0

    .line 9640
    .local v64, needRelayout:Z
    if-nez v35, :cond_11cc

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_11cc

    .line 9647
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 9648
    const/16 v64, 0x1

    .line 9649
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 9650
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 9655
    :cond_11cc
    if-eqz v55, :cond_11d7

    .line 9656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9658
    :cond_11d7
    if-eqz v81, :cond_11e2

    .line 9659
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_127a

    const/4 v5, 0x1

    move/from16 v64, v5

    .line 9661
    :cond_11e2
    :goto_11e2
    if-eqz v64, :cond_127f

    .line 9662
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    .line 9667
    :cond_11ec
    :goto_11ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 9671
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_1256

    .line 9672
    if-eqz v60, :cond_1292

    const/4 v5, 0x1

    :goto_11fe
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->setHoldScreenLocked(Z)V

    .line 9673
    const/4 v5, 0x0

    cmpg-float v5, v73, v5

    if-ltz v5, :cond_120f

    const/high16 v5, 0x3f80

    cmpl-float v5, v73, v5

    if-lez v5, :cond_1295

    .line 9674
    :cond_120f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 9679
    :goto_1218
    const/4 v5, 0x0

    cmpg-float v5, v42, v5

    if-ltz v5, :cond_1223

    const/high16 v5, 0x3f80

    cmpl-float v5, v42, v5

    if-lez v5, :cond_12a4

    .line 9680
    :cond_1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 9685
    :goto_122c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    move-object/from16 v0, v60

    move-object v1, v5

    if-eq v0, v1, :cond_1256

    .line 9686
    move-object/from16 v0, v60

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    .line 9687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xc

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v62

    .line 9688
    .local v62, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 9692
    .end local v62           #m:Landroid/os/Message;
    :cond_1256
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z

    move v5, v0

    if-eqz v5, :cond_1276

    .line 9694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x5

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 9696
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z

    .line 9701
    :cond_1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 9702
    return-void

    .line 9659
    :cond_127a
    const/4 v5, 0x0

    move/from16 v64, v5

    goto/16 :goto_11e2

    .line 9663
    :cond_127f
    if-eqz v35, :cond_11ec

    .line 9664
    const-wide/16 v10, 0x10

    add-long v10, v10, v49

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_11ec

    .line 9672
    :cond_1292
    const/4 v5, 0x0

    goto/16 :goto_11fe

    .line 9676
    :cond_1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v73

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_1218

    .line 9682
    :cond_12a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v42

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_122c

    .line 8880
    nop

    :sswitch_data_12b4
    .sparse-switch
        0x1006 -> :sswitch_aad
        0x1008 -> :sswitch_aad
        0x100a -> :sswitch_aad
        0x2007 -> :sswitch_ab0
        0x2009 -> :sswitch_ab0
        0x200b -> :sswitch_ab0
    .end sparse-switch
.end method

.method private final performLayoutLockedInner()I
    .registers 16

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 8366
    iget-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-nez v9, :cond_a

    move v9, v12

    .line 8467
    :goto_9
    return v9

    .line 8370
    :cond_a
    iput-boolean v12, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 8372
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 8373
    .local v3, dw:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 8375
    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8381
    .local v0, N:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9, v3, v2}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(II)V

    .line 8383
    iget v9, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v9, 0x1

    .line 8384
    .local v6, seq:I
    if-gez v6, :cond_2a

    const/4 v6, 0x0

    .line 8385
    :cond_2a
    iput v6, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    .line 8389
    const/4 v7, -0x1

    .line 8390
    .local v7, topAttached:I
    sub-int v5, v0, v13

    .local v5, i:I
    :goto_2f
    if-ltz v5, :cond_7d

    .line 8391
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 8396
    .local v8, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v1, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8397
    .local v1, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_5b

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-eqz v9, :cond_5b

    iget-object v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v9, v9, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_5b

    if-eqz v1, :cond_4f

    iget-boolean v9, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v9, :cond_5b

    :cond_4f
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v9, :cond_5b

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v9, :cond_5b

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-eqz v9, :cond_77

    :cond_5b
    move v4, v13

    .line 8404
    .local v4, gone:Z
    :goto_5c
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_60

    .line 8421
    :cond_60
    if-eqz v4, :cond_66

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_74

    .line 8422
    :cond_66
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_79

    .line 8423
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8424
    iput v6, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 8390
    :cond_74
    :goto_74
    add-int/lit8 v5, v5, -0x1

    goto :goto_2f

    .end local v4           #gone:Z
    :cond_77
    move v4, v12

    .line 8397
    goto :goto_5c

    .line 8430
    .restart local v4       #gone:Z
    :cond_79
    if-gez v7, :cond_74

    move v7, v5

    goto :goto_74

    .line 8439
    .end local v1           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7d
    move v5, v7

    :goto_7e
    if-ltz v5, :cond_a6

    .line 8440
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 8447
    .restart local v8       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_a3

    .line 8452
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_94

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_98

    :cond_94
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_a3

    .line 8454
    :cond_98
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 8455
    iput v6, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 8439
    :cond_a3
    add-int/lit8 v5, v5, -0x1

    goto :goto_7e

    .line 8465
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a6
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v9}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 8467
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v9

    goto/16 :goto_9
.end method

.method private placeWindowAfter(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 6
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 675
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 676
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 677
    return-void
.end method

.method private placeWindowBefore(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 5
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 684
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 685
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 686
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I
    .registers 6
    .parameter "index"
    .parameter "token"

    .prologue
    .line 3982
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3983
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_18

    .line 3984
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 3983
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3986
    :cond_18
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .registers 8
    .parameter "index"
    .parameter "win"

    .prologue
    .line 3955
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3956
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 3957
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_8
    if-ge v3, v0, :cond_2a

    .line 3958
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3959
    .local v2, cwin:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_20

    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v4, :cond_20

    .line 3962
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3963
    add-int/lit8 p1, p1, 0x1

    .line 3964
    const/4 v1, 0x1

    .line 3968
    :cond_20
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3969
    add-int/lit8 p1, p1, 0x1

    .line 3957
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3971
    .end local v2           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2a
    if-nez v1, :cond_33

    .line 3974
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3975
    add-int/lit8 p1, p1, 0x1

    .line 3977
    :cond_33
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 3978
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 1111
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1115
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1116
    .local v0, wpos:I
    if-ltz v0, :cond_17

    .line 1119
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1120
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1121
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1123
    :cond_17
    return-void
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4029
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4030
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_48

    .line 4031
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4032
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v3

    .line 4033
    .local v3, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 4034
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    add-int/lit8 v1, v1, -0x1

    .line 4037
    add-int/lit8 v0, v0, -0x1

    .line 4030
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4040
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_48
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2084
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    .line 2086
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_c

    .line 2087
    invoke-virtual {p0, v7}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2096
    :cond_c
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2097
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->removeLocked()V

    .line 2099
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2101
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 2104
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_86

    .line 2105
    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2110
    :cond_2c
    :goto_2c
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 2111
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2112
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2113
    if-eqz v0, :cond_3c

    .line 2114
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2119
    :cond_3c
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_54

    .line 2120
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->explicit:Z

    if-nez v3, :cond_94

    .line 2121
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2128
    :cond_54
    :goto_54
    if-eqz v0, :cond_5c

    .line 2129
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_99

    .line 2130
    iput-object v6, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2147
    :cond_5c
    :goto_5c
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_c1

    .line 2148
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2149
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2154
    :cond_6b
    :goto_6b
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-nez v3, :cond_80

    .line 2155
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2156
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2157
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2158
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_80

    .line 2159
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2163
    :cond_80
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 2164
    return-void

    .line 2106
    .end local v0           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_86
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_2c

    .line 2107
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 2123
    .restart local v0       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v2       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_94
    if-eqz v0, :cond_54

    .line 2124
    iput-boolean v7, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    goto :goto_54

    .line 2131
    :cond_99
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a8

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v3, :cond_a8

    .line 2134
    iput-object v6, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    goto :goto_5c

    .line 2135
    :cond_a8
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_5c

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v3, :cond_5c

    .line 2142
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2143
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5c

    .line 2150
    .end local v1           #m:Landroid/os/Message;
    :cond_c1
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_6b

    .line 2151
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_6b
.end method

.method private reportInjectionResult(I)Z
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    const-string v1, "WindowManager"

    .line 5535
    packed-switch p1, :pswitch_data_2a

    .line 5548
    :pswitch_6
    const-string v0, "WindowManager"

    const-string v0, "Input event injection failed."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 5549
    :goto_e
    return v0

    .line 5537
    :pswitch_f
    const-string v0, "WindowManager"

    const-string v0, "Input event injection permission denied."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5538
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5542
    :pswitch_1e
    const/4 v0, 0x1

    goto :goto_e

    .line 5544
    :pswitch_20
    const-string v0, "WindowManager"

    const-string v0, "Input event injection timed out."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 5545
    goto :goto_e

    .line 5535
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_f
        :pswitch_6
        :pswitch_20
    .end packed-switch
.end method

.method private setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 9
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 2177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2179
    .local v0, origId:J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    .line 2180
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2181
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_1d

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1d

    .line 2183
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_27

    .line 2187
    :try_start_15
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_22

    .line 2190
    :try_start_1a
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 2193
    :cond_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_27

    .line 2195
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2197
    return-void

    .line 2189
    :catchall_22
    move-exception v4

    .line 2190
    :try_start_23
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4

    .line 2193
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    :try_start_29
    throw v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2195
    :catchall_2a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private shouldAllowDisableKeyguard()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4165
    iget v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 4166
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4168
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1d

    .line 4169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_23

    move v1, v3

    :goto_1b
    iput v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    .line 4174
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1d
    iget v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v3, :cond_25

    move v1, v3

    :goto_22
    return v1

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_23
    move v1, v4

    .line 4169
    goto :goto_1b

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_25
    move v1, v4

    .line 4174
    goto :goto_22
.end method

.method private startFreezingDisplayLocked()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 9959
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_7

    .line 9995
    :goto_6
    return-void

    .line 9963
    :cond_7
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9965
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 9967
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_48

    .line 9968
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_31

    .line 9970
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9971
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 9972
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 9980
    :cond_31
    :goto_31
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 9982
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$InputMonitor;->freezeInputDispatchingLw()V

    .line 9984
    iget v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v2, v6, :cond_43

    .line 9985
    iput v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 9986
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 9987
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 9994
    :cond_43
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_6

    .line 9975
    :cond_48
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    goto :goto_31
.end method

.method private stopFreezingDisplayLocked()V
    .registers 5

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 9998
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_8

    .line 10035
    :cond_7
    :goto_7
    return-void

    .line 10002
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_7

    .line 10008
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 10009
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10013
    invoke-static {v2}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 10015
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$InputMonitor;->thawInputDispatchingLw()V

    .line 10021
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 10022
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 10030
    :cond_32
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10031
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v1, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10034
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z
    .registers 9
    .parameter "token"

    .prologue
    const/4 v6, 0x1

    .line 3867
    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3868
    .local v0, NW:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_34

    .line 3869
    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 3871
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3872
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 3873
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3874
    .local v3, j:I
    :goto_1f
    if-lez v3, :cond_31

    .line 3875
    add-int/lit8 v3, v3, -0x1

    .line 3876
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 3879
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 3868
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3882
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_34
    if-lez v0, :cond_38

    move v5, v6

    :goto_37
    return v5

    :cond_38
    const/4 v5, 0x0

    goto :goto_37
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .registers 8
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1088
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1089
    .local v3, wpos:I
    if-ltz v3, :cond_38

    .line 1090
    if-ge v3, p1, :cond_c

    add-int/lit8 p1, p1, -0x1

    .line 1092
    :cond_c
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1093
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1094
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1095
    .local v0, NC:I
    :cond_1a
    :goto_1a
    if-lez v0, :cond_38

    .line 1096
    add-int/lit8 v0, v0, -0x1

    .line 1097
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1098
    .local v2, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1099
    .local v1, cpos:I
    if-ltz v1, :cond_1a

    .line 1100
    if-ge v1, p1, :cond_32

    add-int/lit8 p1, p1, -0x1

    .line 1103
    :cond_32
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    .line 1107
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_38
    return p1
.end method

.method private updateFocusedWindowLocked(I)Z
    .registers 10
    .parameter "mode"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9847
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 9848
    .local v1, newFocus:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v3, v1, :cond_46

    .line 9851
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 9852
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 9855
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 9856
    .local v2, oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 9857
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9859
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 9860
    .local v0, imWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eq v1, v0, :cond_37

    if-eq v2, v0, :cond_37

    .line 9861
    if-eq p1, v4, :cond_3e

    if-eq p1, v7, :cond_3e

    move v3, v4

    :goto_2a
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 9864
    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9866
    :cond_32
    if-ne p1, v5, :cond_40

    .line 9867
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()I

    .line 9875
    :cond_37
    :goto_37
    if-eq p1, v4, :cond_3c

    .line 9878
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked()V

    :cond_3c
    move v3, v4

    .line 9882
    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_3d
    return v3

    .restart local v0       #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3e
    move v3, v6

    .line 9861
    goto :goto_2a

    .line 9868
    :cond_40
    if-ne p1, v7, :cond_37

    .line 9871
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    goto :goto_37

    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_46
    move v3, v6

    .line 9882
    goto :goto_3d
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .registers 14
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    const-string v6, "WindowManager"

    .line 2944
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "addAppToken()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 2946
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2957
    :cond_14
    :try_start_14
    invoke-interface {p2}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_44

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long v1, v4, v6

    .line 2963
    .local v1, inputDispatchingTimeoutNanos:J
    :goto_1d
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2964
    :try_start_20
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v3

    .line 2965
    .local v3, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v3, :cond_52

    .line 2966
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to add existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_7a

    .line 2985
    :goto_43
    return-void

    .line 2958
    .end local v1           #inputDispatchingTimeoutNanos:J
    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catch_44
    move-exception v0

    .line 2959
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v4, "Could not get dispatching timeout."

    invoke-static {v6, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2960
    const-wide v1, 0x12a05f200L

    .restart local v1       #inputDispatchingTimeoutNanos:J
    goto :goto_1d

    .line 2969
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v3       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_52
    :try_start_52
    new-instance v3, Lcom/android/server/WindowManagerService$AppWindowToken;

    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    invoke-direct {v3, p0, p2}, Lcom/android/server/WindowManagerService$AppWindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 2970
    .restart local v3       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iput-wide v1, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->inputDispatchingTimeoutNanos:J

    .line 2971
    iput p3, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 2972
    iput-boolean p5, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 2973
    iput p4, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 2974
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2976
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2977
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2980
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 2981
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 2984
    monitor-exit v4

    goto :goto_43

    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_7a
    move-exception v5

    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_7a

    throw v5
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 5
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1045
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1046
    .local v0, pos:I
    if-ltz v0, :cond_1a

    .line 1047
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1050
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1051
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1052
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1058
    :goto_19
    return-void

    .line 1055
    :cond_1a
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1056
    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1057
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_19
.end method

.method public addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 33
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v22

    .line 1789
    .local v22, res:I
    if-eqz v22, :cond_11

    move/from16 v6, v22

    .line 2000
    :goto_10
    return v6

    .line 1793
    :cond_11
    const/16 v21, 0x0

    .line 1794
    .local v21, reportNewConfig:Z
    const/4 v10, 0x0

    .line 1795
    .local v10, attachedWindow:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v23, 0x0

    .line 1797
    .local v23, win:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1801
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    if-nez v6, :cond_6b

    .line 1802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    .line 1803
    .local v24, wm:Landroid/view/WindowManager;
    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v9, v0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/InputManager;->setDisplaySize(III)V

    .line 1807
    const/16 v21, 0x1

    .line 1810
    .end local v24           #wm:Landroid/view/WindowManager;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 1811
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already added"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const/4 v6, -0x5

    monitor-exit v25
    :try_end_9d
    .catchall {:try_start_1d .. :try_end_9d} :catchall_9f

    goto/16 :goto_10

    .line 1988
    :catchall_9f
    move-exception v6

    move-object/from16 v5, v23

    .end local v23           #win:Lcom/android/server/WindowManagerService$WindowState;
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_a2
    :try_start_a2
    monitor-exit v25
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_21d

    throw v6

    .line 1815
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v23       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a4
    :try_start_a4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_126

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_126

    .line 1816
    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v10

    .line 1817
    if-nez v10, :cond_ef

    .line 1818
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is not a window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/4 v6, -0x2

    monitor-exit v25

    goto/16 :goto_10

    .line 1822
    :cond_ef
    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_126

    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_126

    .line 1824
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const/4 v6, -0x2

    monitor-exit v25

    goto/16 :goto_10

    .line 1830
    :cond_126
    const/4 v13, 0x0

    .line 1831
    .local v13, addToken:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1832
    .local v9, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v9, :cond_220

    .line 1833
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_171

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_171

    .line 1835
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add application window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const/4 v6, -0x1

    monitor-exit v25

    goto/16 :goto_10

    .line 1839
    :cond_171
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_1a1

    .line 1840
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const/4 v6, -0x1

    monitor-exit v25

    goto/16 :goto_10

    .line 1844
    :cond_1a1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_1d1

    .line 1845
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const/4 v6, -0x1

    monitor-exit v25

    goto/16 :goto_10

    .line 1849
    :cond_1d1
    new-instance v9, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 1850
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v13, 0x1

    .line 1883
    :cond_1e4
    new-instance v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v5 .. v12}, Lcom/android/server/WindowManagerService$WindowState;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Lcom/android/server/WindowManagerService$WindowToken;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_1f3
    .catchall {:try_start_a4 .. :try_end_1f3} :catchall_9f

    .line 1885
    .end local v23           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_1f3
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    if-nez v6, :cond_2f9

    .line 1888
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding window client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that is dead, aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const/4 v6, -0x4

    monitor-exit v25
    :try_end_21b
    .catchall {:try_start_1f3 .. :try_end_21b} :catchall_21d

    goto/16 :goto_10

    .line 1988
    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v13           #addToken:Z
    :catchall_21d
    move-exception v6

    goto/16 :goto_a2

    .line 1851
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v13       #addToken:Z
    .restart local v23       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_220
    :try_start_220
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_28d

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_28d

    .line 1853
    iget-object v14, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1854
    .local v14, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v14, :cond_257

    .line 1855
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with non-application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const/4 v6, -0x3

    monitor-exit v25

    goto/16 :goto_10

    .line 1858
    :cond_257
    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v6, :cond_27d

    .line 1859
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with exiting application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const/4 v6, -0x4

    monitor-exit v25

    goto/16 :goto_10

    .line 1863
    :cond_27d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1e4

    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v6, :cond_1e4

    .line 1867
    const/4 v6, -0x6

    monitor-exit v25

    goto/16 :goto_10

    .line 1869
    .end local v14           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_28d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_2c3

    .line 1870
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_1e4

    .line 1871
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/4 v6, -0x1

    monitor-exit v25

    goto/16 :goto_10

    .line 1875
    :cond_2c3
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_1e4

    .line 1876
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7dd

    if-eq v6, v7, :cond_1e4

    .line 1877
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const/4 v6, -0x1

    monitor-exit v25
    :try_end_2f7
    .catchall {:try_start_220 .. :try_end_2f7} :catchall_9f

    goto/16 :goto_10

    .line 1893
    .end local v23           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2f9
    :try_start_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v22

    .line 1896
    if-eqz v22, :cond_317

    .line 1897
    monitor-exit v25

    move/from16 v6, v22

    goto/16 :goto_10

    .line 1900
    :cond_317
    if-eqz p6, :cond_339

    .line 1901
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->makeInputChannelName()Ljava/lang/String;

    move-result-object v18

    .line 1902
    .local v18, name:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v17

    .line 1903
    .local v17, inputChannels:[Landroid/view/InputChannel;
    const/4 v6, 0x0

    aget-object v6, v17, v6

    iput-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1904
    const/4 v6, 0x1

    aget-object v6, v17, v6

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/view/InputChannel;->transferToBinderOutParameter(Landroid/view/InputChannel;)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v6, v7}, Lcom/android/server/InputManager;->registerInputChannel(Landroid/view/InputChannel;)V

    .line 1911
    .end local v17           #inputChannels:[Landroid/view/InputChannel;
    .end local v18           #name:Ljava/lang/String;
    :cond_339
    const/16 v22, 0x0

    .line 1913
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 1915
    .local v19, origId:J
    if-eqz v13, :cond_356

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    :cond_356
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->attach()V

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_375

    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_375

    .line 1924
    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1927
    :cond_375
    const/16 v16, 0x1

    .line 1929
    .local v16, imMayMove:Z
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_3f7

    .line 1930
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1931
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1932
    const/16 v16, 0x0

    .line 1948
    :cond_38d
    :goto_38d
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 1952
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v6, v0

    if-eqz v6, :cond_3a6

    .line 1953
    or-int/lit8 v22, v22, 0x1

    .line 1955
    :cond_3a6
    if-eqz v5, :cond_3b2

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_3b2

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-nez v6, :cond_3b4

    .line 1956
    :cond_3b2
    or-int/lit8 v22, v22, 0x2

    .line 1959
    :cond_3b4
    const/4 v15, 0x0

    .line 1960
    .local v15, focusChanged:Z
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v6

    if-eqz v6, :cond_3c7

    .line 1961
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v15

    .line 1962
    if-eqz v15, :cond_3c7

    .line 1963
    const/16 v16, 0x0

    .line 1967
    :cond_3c7
    if-eqz v16, :cond_3d0

    .line 1968
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 1971
    :cond_3d0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 1977
    if-eqz v15, :cond_3d8

    .line 1978
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->finishUpdateFocusedWindowAfterAssignLayersLocked()V

    .line 1985
    :cond_3d8
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-eqz v6, :cond_3e6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v6

    if-eqz v6, :cond_3e6

    .line 1986
    const/16 v21, 0x1

    .line 1988
    :cond_3e6
    monitor-exit v25
    :try_end_3e7
    .catchall {:try_start_2f9 .. :try_end_3e7} :catchall_21d

    .line 1994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 1995
    if-eqz v21, :cond_3f0

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 1998
    :cond_3f0
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v6, v22

    .line 2000
    goto/16 :goto_10

    .line 1933
    .end local v15           #focusChanged:Z
    :cond_3f7
    :try_start_3f7
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_417

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1936
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 1937
    const/16 v16, 0x0

    goto/16 :goto_38d

    .line 1939
    :cond_417
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1940
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_434

    .line 1941
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1942
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_38d

    .line 1943
    :cond_434
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eqz v6, :cond_38d

    .line 1944
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_441
    .catchall {:try_start_3f7 .. :try_end_441} :catchall_21d

    goto/16 :goto_38d
.end method

.method public addWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 4892
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4893
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4894
    monitor-exit v0

    .line 4895
    return-void

    .line 4894
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "type"

    .prologue
    .line 2869
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2871
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2874
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2875
    :try_start_15
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2876
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_39

    .line 2877
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    monitor-exit v1

    .line 2887
    :goto_38
    return-void

    .line 2880
    :cond_39
    new-instance v0, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 2881
    .restart local v0       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2882
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2883
    const/16 v2, 0x7dd

    if-ne p2, v2, :cond_52

    .line 2884
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2886
    :cond_52
    monitor-exit v1

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_54
    move-exception v2

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_15 .. :try_end_56} :catchall_54

    throw v2
.end method

.method adjustInputMethodDialogsLocked()V
    .registers 2

    .prologue
    .line 1277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1278
    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .registers 33

    .prologue
    .line 1298
    const/4 v6, 0x0

    .line 1300
    .local v6, changed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 1301
    .local v10, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 1305
    .local v9, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v15, v0

    .line 1306
    .local v15, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1307
    .local v5, N:I
    const/16 v27, 0x0

    .line 1308
    .local v27, w:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v13, 0x0

    .line 1309
    .local v13, foundW:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v12, 0x0

    .line 1310
    .local v12, foundI:I
    const/16 v24, 0x0

    .line 1311
    .local v24, topCurW:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v23, 0x0

    .line 1312
    .local v23, topCurI:I
    move v14, v5

    .line 1313
    .local v14, i:I
    :cond_27
    :goto_27
    if-lez v14, :cond_d6

    .line 1314
    add-int/lit8 v14, v14, -0x1

    .line 1315
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v27, Lcom/android/server/WindowManagerService$WindowState;

    .line 1316
    .restart local v27       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v31, 0x7dd

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4c

    .line 1317
    if-nez v24, :cond_27

    .line 1318
    move-object/from16 v24, v27

    .line 1319
    move/from16 v23, v14

    goto :goto_27

    .line 1323
    :cond_4c
    const/16 v24, 0x0

    .line 1324
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_75

    .line 1327
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    move/from16 v30, v0

    if-eqz v30, :cond_75

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_75

    .line 1330
    const/16 v24, 0x0

    .line 1331
    goto :goto_27

    .line 1337
    :cond_75
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    const/high16 v31, 0x10

    and-int v30, v30, v31

    if-eqz v30, :cond_27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v30

    if-eqz v30, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_a9

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_27

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_27

    .line 1342
    :cond_a9
    move-object/from16 v13, v27

    .line 1343
    move v12, v14

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_d6

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_ce

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_27

    :cond_ce
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_27

    .line 1358
    :cond_d6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_109

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_fd

    .line 1370
    const/16 v30, 0x0

    .line 1599
    .end local v5           #N:I
    :goto_fc
    return v30

    .line 1372
    .restart local v5       #N:I
    :cond_fd
    if-eqz v13, :cond_109

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_109

    .line 1375
    const/16 v30, 0x0

    goto :goto_fc

    .line 1379
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v13

    if-eq v0, v1, :cond_393

    .line 1385
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1386
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v21, v0

    .line 1389
    .local v21, oldW:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1393
    if-eqz v13, :cond_1af

    if-eqz v21, :cond_1af

    .line 1394
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_151

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_37a

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_37a

    :cond_151
    const/16 v30, 0x1

    move/from16 v18, v30

    .line 1396
    .local v18, oldAnim:Z
    :goto_155
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_170

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_380

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_380

    :cond_170
    const/16 v30, 0x1

    move/from16 v11, v30

    .line 1402
    .local v11, foundAnim:Z
    :goto_174
    if-eqz v11, :cond_1af

    if-eqz v18, :cond_1af

    .line 1403
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1407
    .local v19, oldI:I
    if-ltz v19, :cond_1af

    .line 1415
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_19b

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    move/from16 v30, v0

    if-eqz v30, :cond_19b

    .line 1419
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1425
    :cond_19b
    move v0, v12

    move/from16 v1, v19

    if-le v0, v1, :cond_386

    .line 1430
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1431
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1432
    move-object/from16 v13, v21

    .line 1433
    move/from16 v12, v19

    .line 1463
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1af
    :goto_1af
    if-eqz v13, :cond_423

    const/16 v30, 0x1

    move/from16 v26, v30

    .line 1464
    .local v26, visible:Z
    :goto_1b5
    if-eqz v26, :cond_250

    .line 1467
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v26

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-nez v30, :cond_429

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_429

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    move/from16 v30, v0

    :goto_1d8
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v30

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v30, v0

    move/from16 v0, v30

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .line 1485
    .local v17, maxLayer:I
    :goto_1f4
    if-lez v12, :cond_250

    .line 1486
    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/WindowManagerService$WindowState;

    .line 1487
    .local v29, wb:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_42d

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v13

    if-eq v0, v1, :cond_42d

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_42d

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_250

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v30, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_42d

    .line 1503
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_250
    if-nez v13, :cond_433

    if-eqz v24, :cond_433

    .line 1506
    move-object/from16 v13, v24

    .line 1507
    add-int/lit8 v12, v23, 0x1

    .line 1514
    .end local v5           #N:I
    :goto_258
    if-eqz v26, :cond_2c6

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_290

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    .line 1519
    :cond_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_2c6

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    .line 1527
    :cond_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1528
    .local v7, curTokenIndex:I
    :cond_2d0
    if-lez v7, :cond_485

    .line 1529
    add-int/lit8 v7, v7, -0x1

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1531
    .local v22, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-ne v0, v1, :cond_303

    .line 1532
    or-int/lit8 v6, v6, 0x4

    .line 1533
    if-nez v26, :cond_44a

    const/16 v30, 0x1

    :goto_2f5
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 1536
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1539
    :cond_303
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1540
    .local v8, curWallpaperIndex:I
    :goto_30d
    if-lez v8, :cond_2d0

    .line 1541
    add-int/lit8 v8, v8, -0x1

    .line 1542
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/WindowManagerService$WindowState;

    .line 1544
    .local v28, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v26, :cond_32f

    .line 1545
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v10

    move v3, v9

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 1550
    :cond_32f
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-eq v0, v1, :cond_34e

    .line 1551
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    .line 1556
    :try_start_341
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_34e
    .catch Landroid/os/RemoteException; {:try_start_341 .. :try_end_34e} :catch_489

    .line 1561
    :cond_34e
    :goto_34e
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1567
    move-object/from16 v0, v28

    move-object v1, v13

    if-ne v0, v1, :cond_454

    .line 1568
    add-int/lit8 v12, v12, -0x1

    .line 1569
    if-lez v12, :cond_44e

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v5

    .line 1571
    :goto_379
    goto :goto_30d

    .line 1394
    .end local v7           #curTokenIndex:I
    .end local v8           #curWallpaperIndex:I
    .end local v22           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v26           #visible:Z
    .end local v28           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #N:I
    .restart local v21       #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_37a
    const/16 v30, 0x0

    move/from16 v18, v30

    goto/16 :goto_155

    .line 1396
    .restart local v18       #oldAnim:Z
    :cond_380
    const/16 v30, 0x0

    move/from16 v11, v30

    goto/16 :goto_174

    .line 1439
    .restart local v11       #foundAnim:Z
    .restart local v19       #oldI:I
    :cond_386
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1440
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_1af

    .line 1446
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1af

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_3cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_419

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_419

    :cond_3cb
    const/16 v30, 0x1

    move/from16 v16, v30

    .line 1451
    .local v16, lowerAnimating:Z
    :goto_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_3ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_41e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_41e

    :cond_3ff
    const/16 v30, 0x1

    move/from16 v25, v30

    .line 1454
    .local v25, upperAnimating:Z
    :goto_403
    if-eqz v16, :cond_407

    if-nez v25, :cond_1af

    .line 1458
    :cond_407
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1459
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_1af

    .line 1448
    .end local v16           #lowerAnimating:Z
    .end local v25           #upperAnimating:Z
    :cond_419
    const/16 v30, 0x0

    move/from16 v16, v30

    goto :goto_3cf

    .line 1451
    .restart local v16       #lowerAnimating:Z
    :cond_41e
    const/16 v30, 0x0

    move/from16 v25, v30

    goto :goto_403

    .line 1463
    .end local v16           #lowerAnimating:Z
    :cond_423
    const/16 v30, 0x0

    move/from16 v26, v30

    goto/16 :goto_1b5

    .line 1473
    .restart local v26       #visible:Z
    :cond_429
    const/16 v30, 0x0

    goto/16 :goto_1d8

    .line 1496
    .restart local v17       #maxLayer:I
    .restart local v29       #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_42d
    move-object/from16 v13, v29

    .line 1497
    add-int/lit8 v12, v12, -0x1

    .line 1498
    goto/16 :goto_1f4

    .line 1511
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_433
    if-lez v12, :cond_445

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #N:I
    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v5

    :goto_443
    goto/16 :goto_258

    .restart local v5       #N:I
    :cond_445
    const/16 v30, 0x0

    move-object/from16 v13, v30

    goto :goto_443

    .line 1533
    .end local v5           #N:I
    .restart local v7       #curTokenIndex:I
    .restart local v22       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_44a
    const/16 v30, 0x0

    goto/16 :goto_2f5

    .line 1569
    .restart local v8       #curWallpaperIndex:I
    .restart local v28       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_44e
    const/16 v30, 0x0

    move-object/from16 v13, v30

    goto/16 :goto_379

    .line 1577
    :cond_454
    move-object v0, v15

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 1578
    .local v20, oldIndex:I
    if-ltz v20, :cond_472

    .line 1581
    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1582
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1583
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_472

    .line 1584
    add-int/lit8 v12, v12, -0x1

    .line 1593
    :cond_472
    move-object v0, v15

    move v1, v12

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1594
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 1595
    or-int/lit8 v6, v6, 0x2

    .line 1596
    goto/16 :goto_30d

    .end local v8           #curWallpaperIndex:I
    .end local v20           #oldIndex:I
    .end local v22           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v28           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_485
    move/from16 v30, v6

    .line 1599
    goto/16 :goto_fc

    .line 1557
    .restart local v8       #curWallpaperIndex:I
    .restart local v22       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v28       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :catch_489
    move-exception v30

    goto/16 :goto_34e
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v3, 0x1

    .line 2844
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 2857
    :goto_c
    return v1

    .line 2848
    :cond_d
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_17

    move v1, v3

    .line 2850
    goto :goto_c

    .line 2852
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2856
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 7
    .parameter "reason"

    .prologue
    .line 4240
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4241
    :try_start_3
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_22

    .line 4242
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 4243
    .local v1, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_24

    if-eqz v3, :cond_1f

    .line 4245
    :try_start_1a
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_27

    .line 4241
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 4250
    .end local v1           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_22
    :try_start_22
    monitor-exit v2

    .line 4251
    return-void

    .line 4250
    .end local v0           #i:I
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v3

    .line 4246
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/WindowManagerService$WindowState;
    :catch_27
    move-exception v3

    goto :goto_1f
.end method

.method computeForcedAppOrientationLocked()I
    .registers 3

    .prologue
    .line 3174
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 3175
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 3176
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 3178
    :cond_b
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .prologue
    .line 4965
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4966
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4967
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .registers 3

    .prologue
    .line 4971
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4972
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 4973
    const/4 v1, 0x0

    .line 4975
    :goto_c
    return-object v1

    :cond_d
    move-object v1, v0

    goto :goto_c
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .registers 14
    .parameter "config"

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 4979
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v8, :cond_9

    move v8, v9

    .line 5060
    :goto_8
    return v8

    .line 4983
    :cond_9
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v8, p1}, Lcom/android/server/InputManager;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 4986
    iget v8, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v8, v10, :cond_16

    iget v8, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-ne v8, v11, :cond_62

    :cond_16
    move v5, v10

    .line 4988
    .local v5, rotated:Z
    :goto_17
    if-eqz v5, :cond_64

    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v2, v8

    .line 4989
    .local v2, dw:I
    :goto_1c
    if-eqz v5, :cond_68

    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v0, v8

    .line 4991
    .local v0, dh:I
    :goto_21
    const/4 v4, 0x3

    .line 4992
    .local v4, orientation:I
    if-ge v2, v0, :cond_6c

    .line 4993
    const/4 v4, 0x1

    .line 4997
    :cond_25
    :goto_25
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4999
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5000
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5001
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-static {v1, v4, v8}, Landroid/content/res/CompatibilityInfo;->updateCompatibleScreenFrame(Landroid/util/DisplayMetrics;ILandroid/graphics/Rect;)V

    .line 5003
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    if-nez v8, :cond_53

    .line 5007
    move v3, v2

    .line 5008
    .local v3, longSize:I
    move v6, v0

    .line 5009
    .local v6, shortSize:I
    if-ge v3, v6, :cond_41

    .line 5010
    move v7, v3

    .line 5011
    .local v7, tmp:I
    move v3, v6

    .line 5012
    move v6, v7

    .line 5014
    .end local v7           #tmp:I
    :cond_41
    int-to-float v8, v3

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 5015
    int-to-float v8, v6

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v6, v8

    .line 5020
    const/16 v8, 0x1d6

    if-ge v3, v8, :cond_70

    .line 5023
    const/16 v8, 0x11

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5055
    .end local v3           #longSize:I
    .end local v6           #shortSize:I
    :cond_53
    :goto_53
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    iput v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 5057
    iput v10, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 5058
    iput v10, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 5059
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8, p1}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    move v8, v10

    .line 5060
    goto :goto_8

    .end local v0           #dh:I
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #dw:I
    .end local v4           #orientation:I
    .end local v5           #rotated:Z
    :cond_62
    move v5, v9

    .line 4986
    goto :goto_17

    .line 4988
    .restart local v5       #rotated:Z
    :cond_64
    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v2, v8

    goto :goto_1c

    .line 4989
    .restart local v2       #dw:I
    :cond_68
    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v0, v8

    goto :goto_21

    .line 4994
    .restart local v0       #dh:I
    .restart local v4       #orientation:I
    :cond_6c
    if-le v2, v0, :cond_25

    .line 4995
    const/4 v4, 0x2

    goto :goto_25

    .line 5027
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #longSize:I
    .restart local v6       #shortSize:I
    :cond_70
    const/16 v8, 0x320

    if-lt v3, v8, :cond_99

    const/16 v8, 0x258

    if-lt v6, v8, :cond_99

    .line 5030
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5042
    :goto_7b
    const/16 v8, 0x141

    if-gt v6, v8, :cond_83

    const/16 v8, 0x23a

    if-le v3, v8, :cond_8a

    .line 5043
    :cond_83
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    const/high16 v9, 0x1000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5047
    :cond_8a
    mul-int/lit8 v8, v3, 0x3

    div-int/lit8 v8, v8, 0x5

    sub-int v9, v6, v10

    if-lt v8, v9, :cond_a8

    .line 5049
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_53

    .line 5031
    :cond_99
    const/16 v8, 0x212

    if-lt v3, v8, :cond_a4

    const/16 v8, 0x190

    if-lt v6, v8, :cond_a4

    .line 5034
    iput v11, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_7b

    .line 5036
    :cond_a4
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_7b

    .line 5051
    :cond_a8
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_53
.end method

.method createWatermark()V
    .registers 9

    .prologue
    .line 10197
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;

    if-eqz v6, :cond_5

    .line 10223
    :cond_4
    :goto_4
    return-void

    .line 10201
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v6, "/system/etc/setup.conf"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10202
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 10204
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_d
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_3b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_44

    .line 10205
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_12
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10206
    .local v3, ind:Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 10207
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_31

    .line 10208
    const-string v6, "%"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 10209
    .local v5, toks:[Ljava/lang/String;
    if-eqz v5, :cond_31

    array-length v6, v5

    if-lez v6, :cond_31

    .line 10210
    new-instance v6, Lcom/android/server/WindowManagerService$Watermark;

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v6, p0, v7, v5}, Lcom/android/server/WindowManagerService$Watermark;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/SurfaceSession;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mWatermark:Lcom/android/server/WindowManagerService$Watermark;
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_56
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_31} :catch_5c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_59

    .line 10216
    .end local v5           #toks:[Ljava/lang/String;
    :cond_31
    if-eqz v2, :cond_5f

    .line 10218
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_38

    move-object v1, v2

    .line 10220
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 10219
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_38
    move-exception v6

    move-object v1, v2

    .line 10220
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4

    .line 10213
    .end local v3           #ind:Ljava/io/DataInputStream;
    .end local v4           #line:Ljava/lang/String;
    :catch_3b
    move-exception v6

    .line 10216
    :goto_3c
    if-eqz v1, :cond_4

    .line 10218
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_4

    .line 10219
    :catch_42
    move-exception v6

    goto :goto_4

    .line 10214
    :catch_44
    move-exception v6

    .line 10216
    :goto_45
    if-eqz v1, :cond_4

    .line 10218
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4

    .line 10219
    :catch_4b
    move-exception v6

    goto :goto_4

    .line 10216
    :catchall_4d
    move-exception v6

    :goto_4e
    if-eqz v1, :cond_53

    .line 10218
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 10220
    :cond_53
    :goto_53
    throw v6

    .line 10219
    :catch_54
    move-exception v7

    goto :goto_53

    .line 10216
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catchall_56
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4e

    .line 10214
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_59
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_45

    .line 10213
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    :catch_5c
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_3c

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #ind:Ljava/io/DataInputStream;
    .restart local v4       #line:Ljava/lang/String;
    :cond_5f
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public detectSafeMode()Z
    .registers 2

    .prologue
    .line 5564
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    .line 5565
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4180
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4183
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    .line 4184
    :try_start_15
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4185
    monitor-exit v0

    .line 4186
    return-void

    .line 4185
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v9, 0x1

    const-string v6, "    "

    const-string v8, " "

    .line 10227
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_38

    .line 10229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10453
    :goto_37
    return-void

    .line 10235
    :cond_38
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v6, p2}, Lcom/android/server/InputManager;->dump(Ljava/io/PrintWriter;)V

    .line 10236
    const-string v6, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10238
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 10239
    :try_start_45
    const-string v7, "Current Window Manager state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10240
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    .local v0, i:I
    :goto_52
    if-ltz v0, :cond_79

    .line 10241
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10242
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Window #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10243
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10244
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10240
    add-int/lit8 v0, v0, -0x1

    goto :goto_52

    .line 10246
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_79
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b0

    .line 10247
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10248
    const-string v7, "  Input method dialogs:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10249
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_93
    if-ltz v0, :cond_b0

    .line 10250
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10251
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  IM Dialog #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10249
    add-int/lit8 v0, v0, -0x1

    goto :goto_93

    .line 10254
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b0
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_f1

    .line 10255
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10256
    const-string v7, "  Remove pending for:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10257
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_ca
    if-ltz v0, :cond_f1

    .line 10258
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10259
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Remove #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10260
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10261
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10257
    add-int/lit8 v0, v0, -0x1

    goto :goto_ca

    .line 10264
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_f1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_136

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_136

    .line 10265
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10266
    const-string v7, "  Windows force removing:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10267
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_10f
    if-ltz v0, :cond_136

    .line 10268
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10269
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Removing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10270
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10271
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10267
    add-int/lit8 v0, v0, -0x1

    goto :goto_10f

    .line 10274
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_136
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_177

    .line 10275
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10276
    const-string v7, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10277
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_150
    if-ltz v0, :cond_177

    .line 10278
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10279
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Destroy #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10280
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10281
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10277
    add-int/lit8 v0, v0, -0x1

    goto :goto_150

    .line 10284
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_177
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1b8

    .line 10285
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10286
    const-string v7, "  Windows losing focus:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10287
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_191
    if-ltz v0, :cond_1b8

    .line 10288
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10289
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10290
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10291
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10287
    add-int/lit8 v0, v0, -0x1

    goto :goto_191

    .line 10294
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1b8
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1f9

    .line 10295
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10296
    const-string v7, "  Windows waiting to resize:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10297
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_1d2
    if-ltz v0, :cond_1f9

    .line 10298
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 10299
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Resizing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 10300
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10301
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10297
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d2

    .line 10304
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1f9
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_233

    .line 10305
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10306
    const-string v7, "  All active sessions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10307
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 10308
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    :goto_211
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_233

    .line 10309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$Session;

    .line 10310
    .local v3, s:Lcom/android/server/WindowManagerService$Session;
    const-string v7, "  Session "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10311
    const-string v7, "    "

    invoke-virtual {v3, p2, v7}, Lcom/android/server/WindowManagerService$Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_211

    .line 10452
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    .end local v3           #s:Lcom/android/server/WindowManagerService$Session;
    :catchall_230
    move-exception v7

    monitor-exit v6
    :try_end_232
    .catchall {:try_start_45 .. :try_end_232} :catchall_230

    throw v7

    .line 10314
    .restart local v0       #i:I
    :cond_233
    :try_start_233
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_270

    .line 10315
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10316
    const-string v7, "  All tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10317
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 10318
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    :goto_24f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_270

    .line 10319
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10320
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Token "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10321
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_24f

    .line 10324
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_270
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2a4

    .line 10325
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10326
    const-string v7, "  Window token list:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10327
    const/4 v0, 0x0

    :goto_283
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2a4

    .line 10328
    const-string v7, "  #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10329
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10327
    add-int/lit8 v0, v0, 0x1

    goto :goto_283

    .line 10332
    :cond_2a4
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2e5

    .line 10333
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10334
    const-string v7, "  Wallpaper tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10335
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_2be
    if-ltz v0, :cond_2e5

    .line 10336
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10337
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Wallpaper #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10338
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10339
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10335
    add-int/lit8 v0, v0, -0x1

    goto :goto_2be

    .line 10342
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_2e5
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_31a

    .line 10343
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10344
    const-string v7, "  Application tokens in Z order:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10345
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_2ff
    if-ltz v0, :cond_31a

    .line 10346
    const-string v7, "  App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10347
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10345
    add-int/lit8 v0, v0, -0x1

    goto :goto_2ff

    .line 10350
    :cond_31a
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_35b

    .line 10351
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10352
    const-string v7, "  Finishing start of application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10353
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_334
    if-ltz v0, :cond_35b

    .line 10354
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10355
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Finished Starting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10356
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10357
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10353
    add-int/lit8 v0, v0, -0x1

    goto :goto_334

    .line 10360
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_35b
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_39c

    .line 10361
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10362
    const-string v7, "  Exiting tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10363
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_375
    if-ltz v0, :cond_39c

    .line 10364
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10365
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10366
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10367
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10363
    add-int/lit8 v0, v0, -0x1

    goto :goto_375

    .line 10370
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_39c
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3dd

    .line 10371
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10372
    const-string v7, "  Exiting application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10373
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_3b6
    if-ltz v0, :cond_3dd

    .line 10374
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 10375
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 10376
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 10377
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 10373
    add-int/lit8 v0, v0, -0x1

    goto :goto_3b6

    .line 10380
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_3dd
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10381
    const-string v7, "  mCurrentFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10382
    const-string v7, "  mLastFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10383
    const-string v7, "  mFocusedApp="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10384
    const-string v7, "  mInputMethodTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10385
    const-string v7, "  mInputMethodWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10386
    const-string v7, "  mWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10387
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v7, :cond_43a

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v7, :cond_43a

    .line 10388
    const-string v7, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10389
    const-string v7, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10391
    :cond_43a
    const-string v7, "  mCurConfiguration="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10392
    const-string v7, "  mInTouchMode="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10393
    const-string v7, " mLayoutSeq="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 10394
    const-string v7, "  mSystemBooted="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10395
    const-string v7, " mDisplayEnabled="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 10396
    const-string v7, "  mLayoutNeeded="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10397
    const-string v7, " mBlurShown="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 10398
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    if-eqz v7, :cond_602

    .line 10399
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    invoke-virtual {v7, p2}, Lcom/android/server/WindowManagerService$DimAnimator;->printTo(Ljava/io/PrintWriter;)V

    .line 10403
    :goto_489
    const-string v7, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10404
    iget v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10405
    const-string v7, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10406
    iget v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 10407
    const-string v7, "  mLastWallpaperX="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 10408
    const-string v7, " mLastWallpaperY="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 10409
    const-string v7, "  mDisplayFrozen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10410
    const-string v7, " mWindowsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10411
    const-string v7, " mAppsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10412
    const-string v7, " mWaitingForConfig="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 10413
    const-string v7, "  mRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10414
    const-string v7, ", mForcedAppOrientation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10415
    const-string v7, ", mRequestedRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 10416
    const-string v7, "  mAnimationPending="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10417
    const-string v7, " mWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 10418
    const-string v7, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 10419
    const-string v7, "  mNextAppTransition=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10420
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10421
    const-string v7, ", mAppTransitionReady="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10422
    const-string v7, ", mAppTransitionRunning="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10423
    const-string v7, ", mAppTransitionTimeout="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 10424
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v7, :cond_56b

    .line 10425
    const-string v7, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10426
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10427
    const-string v7, ", mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10428
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10429
    const-string v7, ", mNextAppTransitionExit=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10430
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10432
    :cond_56b
    const-string v7, "  mStartingIconInTransition="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 10433
    const-string v7, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 10434
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v7, :cond_587

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v7, :cond_59b

    .line 10435
    :cond_587
    const-string v7, "  mLastEnterAnimToken="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 10436
    const-string v7, ", mLastEnterAnimParams="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10438
    :cond_59b
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5ad

    .line 10439
    const-string v7, "  mOpeningApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10441
    :cond_5ad
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5bf

    .line 10442
    const-string v7, "  mClosingApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10444
    :cond_5bf
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5d1

    .line 10445
    const-string v7, "  mToTopApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10447
    :cond_5d1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5e3

    .line 10448
    const-string v7, "  mToBottomApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 10450
    :cond_5e3
    const-string v7, "  DisplayWidth="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 10451
    const-string v7, " DisplayHeight="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 10452
    monitor-exit v6

    goto/16 :goto_37

    .line 10401
    :cond_602
    const-string v7, "  no DimAnimator "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_607
    .catchall {:try_start_233 .. :try_end_607} :catchall_230

    goto/16 :goto_489
.end method

.method dumpAppTokensLocked()V
    .registers 5

    .prologue
    .line 3886
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_3a

    .line 3887
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3889
    :cond_3a
    return-void
.end method

.method dumpWindowsLocked()V
    .registers 5

    .prologue
    .line 3892
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_36

    .line 3893
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3895
    :cond_36
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 3

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4410
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_9

    .line 4411
    monitor-exit v0

    .line 4417
    :goto_8
    return-void

    .line 4413
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 4414
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 4416
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->performEnableScreen()V

    goto :goto_8

    .line 4414
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public enableScreenIfNeededLocked()V
    .registers 4

    .prologue
    .line 4420
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    .line 4427
    :cond_4
    :goto_4
    return-void

    .line 4423
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v0, :cond_4

    .line 4426
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public executeAppTransition()V
    .registers 6

    .prologue
    .line 3307
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3309
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3312
    :cond_12
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3319
    :try_start_15
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_27

    .line 3320
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 3321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3322
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3325
    .end local v0           #origId:J
    :cond_27
    monitor-exit v2

    .line 3326
    return-void

    .line 3325
    :catchall_29
    move-exception v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 4220
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4222
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4224
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/WindowManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WindowManagerService$3;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4233
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;
    .registers 4
    .parameter "token"

    .prologue
    .line 2861
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2862
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v0, :cond_c

    .line 2863
    const/4 v1, 0x0

    .line 2865
    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    goto :goto_b
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .registers 15
    .parameter "willMove"

    .prologue
    .line 915
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 916
    .local v5, localmWindows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 917
    .local v0, N:I
    const/4 v8, 0x0

    .line 918
    .local v8, w:Lcom/android/server/WindowManagerService$WindowState;
    move v4, v0

    .line 919
    .local v4, i:I
    :cond_8
    if-lez v4, :cond_3b

    .line 920
    add-int/lit8 v4, v4, -0x1

    .line 921
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 925
    .restart local v8       #w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v8}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 933
    if-nez p1, :cond_3b

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3b

    if-lez v4, :cond_3b

    .line 936
    const/4 v11, 0x1

    sub-int v11, v4, v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 937
    .local v9, wb:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v12, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v11, v12, :cond_3b

    invoke-static {v9}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 938
    add-int/lit8 v4, v4, -0x1

    .line 939
    move-object v8, v9

    .line 946
    .end local v9           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3b
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 951
    if-eqz p1, :cond_97

    if-eqz v8, :cond_97

    .line 952
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 953
    .local v1, curTarget:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_97

    iget-object v11, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v11, :cond_97

    .line 959
    iget-object v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 960
    .local v7, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v3, 0x0

    .line 961
    .local v3, highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v2, 0x0

    .line 962
    .local v2, highestPos:I
    iget-boolean v11, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v11, :cond_55

    iget-object v11, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_66

    .line 963
    :cond_55
    const/4 v6, 0x0

    .line 964
    .local v6, pos:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 965
    :goto_5a
    if-ltz v6, :cond_66

    .line 966
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowState;

    .line 967
    .local v10, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v11, v7, :cond_75

    .line 981
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_66
    if-eqz v3, :cond_97

    .line 988
    iget v11, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_86

    .line 991
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 992
    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 993
    add-int/lit8 v11, v2, 0x1

    .line 1041
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_74
    return v11

    .line 970
    .restart local v1       #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v10       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_75
    iget-boolean v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-nez v11, :cond_83

    .line 971
    if-eqz v3, :cond_81

    iget v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_83

    .line 973
    :cond_81
    move-object v3, v10

    .line 974
    move v2, v6

    .line 977
    :cond_83
    add-int/lit8 v6, v6, -0x1

    .line 978
    goto :goto_5a

    .line 994
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_86
    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_97

    iget v11, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_97

    .line 1000
    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1001
    add-int/lit8 v11, v2, 0x1

    goto :goto_74

    .line 1008
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_97
    if-eqz v8, :cond_b0

    .line 1009
    if-eqz p1, :cond_a8

    .line 1019
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1020
    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v11, :cond_ab

    .line 1021
    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v11, v11, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1026
    :cond_a8
    :goto_a8
    add-int/lit8 v11, v4, 0x1

    goto :goto_74

    .line 1023
    :cond_ab
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_a8

    .line 1028
    :cond_b0
    if-eqz p1, :cond_b9

    .line 1038
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1039
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1041
    :cond_b9
    const/4 v11, -0x1

    goto :goto_74
.end method

.method public finishDrawingWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .registers 9
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2565
    .local v0, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2566
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2567
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2568
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_20

    .line 2569
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2571
    :cond_20
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2572
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2574
    :cond_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2b

    .line 2575
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2576
    return-void

    .line 2574
    .end local v2           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v4
.end method

.method public getAnimationScale(I)F
    .registers 3
    .parameter "which"

    .prologue
    .line 4297
    packed-switch p1, :pswitch_data_c

    .line 4301
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 4298
    :pswitch_5
    iget v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_4

    .line 4299
    :pswitch_8
    iget v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_4

    .line 4297
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .registers 4

    .prologue
    .line 4305
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .registers 5
    .parameter "token"

    .prologue
    .line 3212
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3213
    :try_start_3
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3214
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_11

    .line 3215
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    .line 3218
    :goto_10
    return v1

    :cond_11
    iget v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    monitor-exit v1

    move v1, v2

    goto :goto_10

    .line 3219
    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public getDPadKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4381
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4383
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4385
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4349
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4351
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4353
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, 0x201

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 3
    .parameter "deviceId"

    .prologue
    .line 4401
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .registers 2

    .prologue
    .line 4405
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v0}, Lcom/android/server/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4357
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4359
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4361
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4365
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4367
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4369
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x3

    .line 3028
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v6, v8, v11

    .line 3029
    .local v6, pos:I
    const/4 v0, 0x0

    .line 3030
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 3031
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 3032
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 3033
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 3034
    .local v3, lastFullscreen:Z
    :cond_10
    :goto_10
    if-ltz v6, :cond_56

    .line 3035
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3036
    .local v7, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 3039
    if-nez v1, :cond_26

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v8, :cond_26

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_10

    .line 3044
    :cond_26
    if-nez v2, :cond_3f

    .line 3046
    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_10

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_10

    .line 3049
    const/4 v2, 0x1

    .line 3050
    iget v0, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3051
    iget v4, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3063
    :cond_35
    iget v5, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3067
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 3068
    if-eqz v3, :cond_49

    if-eq v5, v9, :cond_49

    move v8, v5

    .line 3080
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_3e
    return v8

    .line 3052
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3f
    iget v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_35

    .line 3058
    if-eq v4, v9, :cond_35

    if-eqz v3, :cond_35

    move v8, v4

    .line 3060
    goto :goto_3e

    .line 3074
    .restart local v5       #or:I
    :cond_49
    if-eq v5, v10, :cond_4f

    if-eq v5, v9, :cond_4f

    move v8, v5

    .line 3076
    goto :goto_3e

    .line 3078
    :cond_4f
    if-ne v5, v9, :cond_54

    move v8, v11

    :goto_52
    or-int/2addr v1, v8

    .line 3079
    goto :goto_10

    .line 3078
    :cond_54
    const/4 v8, 0x0

    goto :goto_52

    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_56
    move v8, v10

    .line 3080
    goto :goto_3e
.end method

.method public getOrientationFromWindowsLocked()I
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 3004
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 3005
    .local v0, pos:I
    :cond_a
    if-ltz v0, :cond_31

    .line 3006
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3007
    .local v2, wtoken:Lcom/android/server/WindowManagerService$WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 3008
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_1c

    move v3, v5

    .line 3024
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1b
    return v3

    .line 3013
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v3, :cond_a

    .line 3016
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3017
    .local v1, req:I
    if-eq v1, v5, :cond_a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a

    move v3, v1

    .line 3021
    goto :goto_1b

    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_31
    move v3, v5

    .line 3024
    goto :goto_1b
.end method

.method public getPendingAppTransition()I
    .registers 2

    .prologue
    .line 3294
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 4572
    iget v0, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4325
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4327
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4329
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4333
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4335
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4337
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4309
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4311
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4313
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .registers 5
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4317
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4319
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4321
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/16 v1, -0x100

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/InputManager;->getSwitchState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4373
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4375
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4377
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .registers 5
    .parameter "sw"

    .prologue
    .line 4341
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4343
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4345
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const v2, 0x10004

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/InputManager;->getScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 2222
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2223
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2224
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_f

    .line 2225
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2226
    monitor-exit v1

    .line 2230
    :goto_e
    return-void

    .line 2228
    :cond_f
    iget-object v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2229
    monitor-exit v1

    goto :goto_e

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public hasKeys([I[Z)Z
    .registers 6
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 4389
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, -0x1

    const/16 v2, -0x100

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/InputManager;->hasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .registers 2

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public injectInputEventNoWait(Landroid/view/InputEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    .line 5522
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5523
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5524
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5526
    .local v6, ident:J
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v4, 0x0

    const/16 v5, 0x7530

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 5530
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5531
    invoke-direct {p0, v8}, Lcom/android/server/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 27
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5419
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 5420
    .local v3, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    .line 5422
    .local v5, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    .line 5423
    .local v7, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 5424
    .local v8, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 5425
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    .line 5426
    .local v10, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    .line 5427
    .local v11, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    .line 5428
    .local v12, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    .line 5430
    .local v14, source:I
    if-nez v14, :cond_28

    .line 5431
    const/16 v14, 0x101

    .line 5434
    :cond_28
    const-wide/16 v15, 0x0

    cmp-long v13, v5, v15

    if-nez v13, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 5435
    :cond_32
    const-wide/16 v15, 0x0

    cmp-long v13, v3, v15

    if-nez v13, :cond_39

    move-wide v3, v5

    .line 5437
    :cond_39
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v13, 0x8

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 5440
    .local v2, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 5441
    .local v17, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 5442
    .local v18, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 5444
    .local v21, ident:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    move-object v15, v0

    if-eqz p2, :cond_6a

    const/4 v13, 0x2

    move/from16 v19, v13

    :goto_56
    const/16 v20, 0x7530

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v23

    .line 5449
    .local v23, result:I
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5450
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->reportInjectionResult(I)Z

    move-result v13

    return v13

    .line 5444
    .end local v23           #result:I
    :cond_6a
    const/4 v13, 0x1

    move/from16 v19, v13

    goto :goto_56
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5465
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5466
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5467
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5469
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 5470
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1d

    .line 5471
    const/16 v0, 0x1002

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 5474
    :cond_1d
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    if-eqz p2, :cond_30

    const/4 v4, 0x2

    :goto_22
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 5479
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5480
    invoke-direct {p0, v8}, Lcom/android/server/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 5474
    .end local v8           #result:I
    :cond_30
    const/4 v4, 0x1

    goto :goto_22
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5495
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5496
    .local v2, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5497
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5499
    .local v6, ident:J
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 5500
    .local v1, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1e

    .line 5501
    const v0, 0x10004

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 5504
    :cond_1e
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    if-eqz p2, :cond_31

    const/4 v4, 0x2

    :goto_23
    const/16 v5, 0x7530

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/InputManager;->injectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v8

    .line 5509
    .local v8, result:I
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5510
    invoke-direct {p0, v8}, Lcom/android/server/WindowManagerService;->reportInjectionResult(I)Z

    move-result v0

    return v0

    .line 5504
    .end local v8           #result:I
    :cond_31
    const/4 v4, 0x1

    goto :goto_23
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 9
    .parameter "client"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8147
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 8150
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 8152
    .local v0, idx:I
    if-lez v0, :cond_2f

    .line 8153
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    sub-int v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 8154
    .local v1, imFocus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_2f

    .line 8155
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_2f

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_2f

    .line 8157
    monitor-exit v2

    move v2, v6

    .line 8162
    .end local v1           #imFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2e
    return v2

    .line 8161
    :cond_2f
    monitor-exit v2

    move v2, v5

    .line 8162
    goto :goto_2e

    .line 8161
    .end local v0           #idx:I
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v3
.end method

.method public isViewServerRunning()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4684
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 4692
    :goto_8
    return v0

    .line 4688
    :cond_9
    const-string v0, "android.permission.DUMP"

    const-string v1, "isViewServerRunning"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 4689
    goto :goto_8

    .line 4692
    :cond_15
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_8

    :cond_23
    move v0, v2

    goto :goto_8
.end method

.method final isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z
    .registers 3
    .parameter "wallpaperTarget"

    .prologue
    .line 1287
    if-eqz p1, :cond_10

    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method logWindowList(Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1127
    .local v0, N:I
    :goto_6
    if-lez v0, :cond_37

    .line 1128
    add-int/lit8 v0, v0, -0x1

    .line 1129
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1131
    :cond_37
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 10457
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_9

    .line 10458
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    :try_start_7
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_c

    .line 10459
    return-void

    .line 10457
    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v1

    .line 10458
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 4
    .parameter "inputChannelName"

    .prologue
    .line 4393
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "monitorInput()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4395
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4397
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v0, p1}, Lcom/android/server/InputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .registers 10
    .parameter "index"
    .parameter "token"

    .prologue
    .line 3990
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3992
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3995
    :cond_12
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3998
    :try_start_15
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3999
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_23

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 4000
    :cond_23
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    monitor-exit v3

    .line 4023
    :goto_4c
    return-void

    .line 4004
    :cond_4d
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4008
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4011
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 4014
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    .line 4017
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 4018
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4019
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4021
    :cond_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4022
    monitor-exit v3

    goto :goto_4c

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_72
    move-exception v4

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_15 .. :try_end_74} :catchall_72

    throw v4
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v8, -0x1

    .line 4125
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 4127
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4130
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4131
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4132
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4134
    .local v0, N:I
    const/4 v4, 0x0

    .line 4135
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v0, :cond_54

    .line 4136
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v5

    .line 4137
    .local v5, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_51

    .line 4138
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4139
    iget v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_4f

    .line 4140
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4141
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4142
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4143
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 4144
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    .line 4146
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    .line 4135
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 4150
    .end local v5           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_54
    iget v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_5c

    .line 4151
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4153
    :cond_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_1a .. :try_end_5d} :catchall_61

    .line 4154
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4155
    return-void

    .line 4153
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_61
    move-exception v6

    :try_start_62
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v7, -0x1

    .line 4094
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 4096
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4099
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4100
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4101
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4103
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v0, :cond_51

    .line 4104
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 4105
    .local v4, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_4e

    .line 4106
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4107
    iget v5, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_4e

    .line 4108
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4109
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4110
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4111
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    .line 4112
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 4103
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 4117
    .end local v4           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_51
    iget v5, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_5e

    .line 4118
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4120
    :cond_5e
    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_1a .. :try_end_5f} :catchall_63

    .line 4121
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4122
    return-void

    .line 4120
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_63
    move-exception v5

    :try_start_64
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .registers 9
    .parameter "pos"

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1136
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1138
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 1139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1138
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1146
    :cond_16
    if-ltz p1, :cond_44

    .line 1147
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1148
    .local v3, targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_32

    .line 1149
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 1150
    .local v5, wp:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v5, v6, :cond_32

    .line 1151
    add-int/lit8 p1, p1, 0x1

    .line 1155
    .end local v5           #wp:Lcom/android/server/WindowManagerService$WindowState;
    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_56

    .line 1156
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1157
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v3, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1158
    invoke-direct {p0, p1, v4}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1155
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1166
    .end local v3           #targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-ge v2, v0, :cond_56

    .line 1167
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1168
    .restart local v4       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1169
    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1166
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 1175
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_56
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .registers 15
    .parameter "needAssignLayers"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1178
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1179
    .local v6, imWin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1180
    .local v0, DN:I
    if-nez v6, :cond_12

    if-nez v0, :cond_12

    move v8, v9

    .line 1273
    :goto_11
    return v8

    .line 1184
    :cond_12
    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1185
    .local v5, imPos:I
    if-ltz v5, :cond_9b

    .line 1191
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1192
    .local v1, N:I
    if-ge v5, v1, :cond_67

    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v8

    .line 1197
    .local v4, firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_29
    if-eqz v6, :cond_69

    move-object v2, v6

    .line 1199
    .local v2, baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2c
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_41

    .line 1200
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1201
    .local v3, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v8, v3, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-gez v8, :cond_41

    move-object v2, v3

    .line 1204
    .end local v3           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_41
    if-ne v4, v2, :cond_79

    .line 1207
    add-int/lit8 v7, v5, 0x1

    .line 1208
    .local v7, pos:I
    :goto_45
    if-ge v7, v1, :cond_53

    .line 1209
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v8, :cond_73

    .line 1214
    :cond_53
    add-int/lit8 v7, v7, 0x1

    .line 1216
    :goto_55
    if-ge v7, v1, :cond_63

    .line 1217
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_76

    .line 1222
    :cond_63
    if-lt v7, v1, :cond_79

    move v8, v9

    .line 1224
    goto :goto_11

    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #pos:I
    :cond_67
    move-object v4, v12

    .line 1192
    goto :goto_29

    .line 1197
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_69
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v2, v8

    goto :goto_2c

    .line 1212
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #pos:I
    :cond_73
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 1220
    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 1228
    .end local v7           #pos:I
    :cond_79
    if-eqz v6, :cond_97

    .line 1233
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result v5

    .line 1238
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1239
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1244
    if-lez v0, :cond_8f

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1269
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_8f
    :goto_8f
    if-eqz p1, :cond_94

    .line 1270
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    :cond_94
    move v8, v11

    .line 1273
    goto/16 :goto_11

    .line 1246
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_97
    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f

    .line 1253
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9b
    if-eqz v6, :cond_ab

    .line 1255
    invoke-direct {p0, v9, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1256
    iput-object v12, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1257
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1262
    if-lez v0, :cond_8f

    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f

    .line 1264
    :cond_ab
    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_8f
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 660
    :catch_5
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 664
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    :cond_11
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .registers 6
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 8140
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null client"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8141
    :cond_a
    if-nez p2, :cond_14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "null inputContext"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8142
    :cond_14
    new-instance v0, Lcom/android/server/WindowManagerService$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$Session;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .line 8143
    .local v0, session:Lcom/android/server/WindowManagerService$Session;
    return-object v0
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .registers 6
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3299
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 3300
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 3301
    iput p2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    .line 3302
    iput p3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    .line 3304
    :cond_b
    return-void
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 5370
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5372
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5375
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5376
    :try_start_15
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 5377
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_24

    .line 5378
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$InputMonitor;->pauseDispatchingLw(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 5380
    :cond_24
    monitor-exit v1

    .line 5381
    return-void

    .line 5380
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public performEnableScreen()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 4430
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4431
    :try_start_4
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v7, :cond_a

    .line 4432
    monitor-exit v6

    .line 4477
    :goto_9
    return-void

    .line 4434
    :cond_a
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-nez v7, :cond_13

    .line 4435
    monitor-exit v6

    goto :goto_9

    .line 4470
    :catchall_10
    move-exception v7

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v7

    .line 4440
    :cond_13
    :try_start_13
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4441
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v0, :cond_3d

    .line 4442
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 4443
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_3a

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-nez v7, :cond_3a

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v7, :cond_38

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v7

    if-nez v7, :cond_3a

    .line 4445
    :cond_38
    monitor-exit v6

    goto :goto_9

    .line 4441
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 4449
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3d
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_10

    .line 4458
    :try_start_40
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 4459
    .local v4, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v4, :cond_5a

    .line 4461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4462
    .local v1, data:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4463
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v1, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_5a} :catch_6a

    .line 4470
    .end local v1           #data:Landroid/os/Parcel;
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_5a
    :goto_5a
    :try_start_5a
    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_10

    .line 4472
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 4475
    const/16 v6, -0x3e8

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v6, v10, v7}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    goto :goto_9

    .line 4467
    :catch_6a
    move-exception v7

    move-object v2, v7

    .line 4468
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_6c
    const-string v7, "WindowManager"

    const-string v8, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_10

    goto :goto_5a
.end method

.method public prepareAppTransition(I)V
    .registers 7
    .parameter "transit"

    .prologue
    .line 3260
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3262
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3265
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3269
    :try_start_15
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3270
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-nez v1, :cond_50

    .line 3272
    :cond_2a
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 3282
    :cond_2c
    :goto_2c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 3283
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 3284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 3285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3286
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3287
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3290
    :cond_4e
    monitor-exit v0

    .line 3291
    return-void

    .line 3273
    :cond_50
    const/16 v1, 0x1008

    if-ne p1, v1, :cond_60

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v1, v2, :cond_60

    .line 3276
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    goto :goto_2c

    .line 3290
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_15 .. :try_end_5f} :catchall_5d

    throw v1

    .line 3277
    :cond_60
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_2c

    :try_start_64
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v1, v2, :cond_2c

    .line 3280
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_5d

    goto :goto_2c
.end method

.method final rebuildAppWindowListLocked()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 8203
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8205
    .local v1, NW:I
    const/4 v4, -0x1

    .line 8206
    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .line 8209
    .local v5, numRemoved:I
    const/4 v2, 0x0

    .line 8210
    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_37

    .line 8211
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 8212
    .local v6, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v8, :cond_27

    .line 8213
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 8214
    .local v7, win:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v10, p0, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 8217
    add-int/lit8 v1, v1, -0x1

    .line 8218
    add-int/lit8 v5, v5, 0x1

    .line 8219
    goto :goto_a

    .line 8220
    .end local v7           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_27
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dd

    if-ne v8, v9, :cond_34

    sub-int v8, v2, v10

    if-ne v4, v8, :cond_34

    .line 8222
    move v4, v2

    .line 8224
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 8225
    goto :goto_a

    .line 8229
    .end local v6           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    .line 8230
    move v2, v4

    .line 8236
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8237
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_41
    if-ge v3, v0, :cond_52

    .line 8238
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowToken;

    invoke-direct {p0, v2, v8}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 8237
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 8242
    :cond_52
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8243
    const/4 v3, 0x0

    :goto_59
    if-ge v3, v0, :cond_6a

    .line 8244
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowToken;

    invoke-direct {p0, v2, v8}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 8243
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 8247
    :cond_6a
    sub-int/2addr v2, v4

    .line 8248
    if-eq v2, v5, :cond_8f

    .line 8249
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rebuild removed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " windows but added "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8252
    :cond_8f
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V
    .registers 17
    .parameter "win"
    .parameter "operation"

    .prologue
    .line 9757
    iget-object v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 9759
    .local v8, surface:Landroid/view/Surface;
    const/16 v10, 0x7918

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p2, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9762
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v10, :cond_2a

    .line 9763
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 9766
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9771
    .local v1, callingIdentity:J
    :try_start_2e
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9772
    .local v0, N:I
    const/4 v5, 0x0

    .line 9773
    .local v5, leakedSurface:Z
    const-string v10, "WindowManager"

    const-string v11, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9774
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3d
    if-ge v3, v0, :cond_100

    .line 9775
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 9776
    .local v9, ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_b6

    .line 9777
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b9

    .line 9778
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9783
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 9784
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 9785
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 9786
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9787
    add-int/lit8 v3, v3, -0x1

    .line 9788
    add-int/lit8 v0, v0, -0x1

    .line 9789
    const/4 v5, 0x1

    .line 9774
    :cond_b6
    :goto_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 9790
    :cond_b9
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v10, :cond_b6

    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v10, :cond_b6

    .line 9791
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9794
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 9795
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 9796
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 9797
    const/4 v5, 0x1

    goto :goto_b6

    .line 9802
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_100
    const/4 v4, 0x0

    .line 9803
    .local v4, killedApps:Z
    if-nez v5, :cond_150

    .line 9804
    const-string v10, "WindowManager"

    const-string v11, "No leaked surfaces; killing applicatons!"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9805
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 9806
    .local v6, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    :goto_110
    if-ge v3, v0, :cond_12c

    .line 9807
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 9808
    .restart local v9       #ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_129

    .line 9809
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v10, v10, Lcom/android/server/WindowManagerService$Session;->mPid:I

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v11, v11, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v6, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 9806
    :cond_129
    add-int/lit8 v3, v3, 0x1

    goto :goto_110

    .line 9812
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_12c
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_150

    .line 9813
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 9814
    .local v7, pids:[I
    const/4 v3, 0x0

    :goto_139
    array-length v10, v7

    if-ge v3, v10, :cond_145

    .line 9815
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    aput v10, v7, v3
    :try_end_142
    .catchall {:try_start_2e .. :try_end_142} :catchall_16f

    .line 9814
    add-int/lit8 v3, v3, 0x1

    goto :goto_139

    .line 9818
    :cond_145
    :try_start_145
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v11, "Free memory"

    invoke-interface {v10, v7, v11}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;)Z
    :try_end_14c
    .catchall {:try_start_145 .. :try_end_14c} :catchall_16f
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_14c} :catch_176

    move-result v10

    if-eqz v10, :cond_150

    .line 9819
    const/4 v4, 0x1

    .line 9826
    .end local v6           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v7           #pids:[I
    :cond_150
    :goto_150
    if-nez v5, :cond_154

    if-eqz v4, :cond_16b

    .line 9829
    :cond_154
    :try_start_154
    const-string v10, "WindowManager"

    const-string v11, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9830
    if-eqz v8, :cond_166

    .line 9831
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    .line 9832
    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 9833
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_166
    .catchall {:try_start_154 .. :try_end_166} :catchall_16f

    .line 9837
    :cond_166
    :try_start_166
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_16b
    .catchall {:try_start_166 .. :try_end_16b} :catchall_16f
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_16b} :catch_174

    .line 9842
    :cond_16b
    :goto_16b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9844
    return-void

    .line 9842
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #killedApps:Z
    .end local v5           #leakedSurface:Z
    :catchall_16f
    move-exception v10

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 9838
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #killedApps:Z
    .restart local v5       #leakedSurface:Z
    :catch_174
    move-exception v10

    goto :goto_16b

    .line 9821
    .restart local v6       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v7       #pids:[I
    :catch_176
    move-exception v10

    goto :goto_150
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 4189
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 4191
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4194
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4195
    :try_start_15
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4197
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_39

    .line 4205
    :goto_22
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_36

    if-eqz v2, :cond_39

    .line 4207
    :try_start_26
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_36
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_22

    .line 4208
    :catch_2c
    move-exception v2

    move-object v0, v2

    .line 4209
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_22

    .line 4213
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v2

    :cond_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 4214
    return-void
.end method

.method public relayoutWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .registers 42
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 2291
    const/4 v9, 0x0

    .line 2294
    .local v9, displayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2296
    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2297
    const/16 v26, 0x0

    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v24

    .line 2298
    .local v24, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v24, :cond_22

    .line 2299
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    .line 2559
    :goto_21
    return v25

    .line 2301
    :cond_22
    move/from16 v0, p4

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 2302
    move/from16 v0, p5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 2304
    if-eqz p3, :cond_3d

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2308
    :cond_3d
    const/4 v6, 0x0

    .line 2309
    .local v6, attrChanges:I
    const/4 v11, 0x0

    .line 2310
    .local v11, flagChanges:I
    if-eqz p3, :cond_68

    .line 2311
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v28, v0

    xor-int v11, v27, v28

    move v0, v11

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2312
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 2317
    :cond_68
    move v0, v6

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_7b

    .line 2318
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 2321
    :cond_7b
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x4000

    move/from16 v26, v0

    if-eqz v26, :cond_3b2

    const/16 v26, 0x1

    move/from16 v20, v26

    .line 2324
    .local v20, scaledWindow:Z
    :goto_93
    if-eqz v20, :cond_3c0

    .line 2327
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p4

    if-eq v0, v1, :cond_3b8

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_b3
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    .line 2329
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p5

    if-eq v0, v1, :cond_3bc

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_d7
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    .line 2335
    :goto_dd
    const v26, 0x20008

    and-int v26, v26, v11

    if-eqz v26, :cond_3d3

    const/16 v26, 0x1

    move/from16 v13, v26

    .line 2339
    .local v13, imMayMove:Z
    :goto_e8
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-ne v0, v1, :cond_100

    and-int/lit8 v26, v11, 0x8

    if-nez v26, :cond_100

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    move/from16 v26, v0

    if-nez v26, :cond_3d9

    :cond_100
    const/16 v26, 0x1

    move/from16 v12, v26

    .line 2343
    .local v12, focusMayChange:Z
    :goto_104
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-eq v0, v1, :cond_3df

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x10

    and-int v26, v26, v27

    if-eqz v26, :cond_3df

    const/16 v26, 0x1

    move/from16 v23, v26

    .line 2346
    .local v23, wallpaperMayMove:Z
    :goto_126
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    .line 2347
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .line 2348
    .local v16, oldVisibility:I
    move/from16 v0, p6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    .line 2349
    if-nez p6, :cond_441

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_152

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move/from16 v26, v0

    if-nez v26, :cond_441

    .line 2351
    :cond_152
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v26

    if-nez v26, :cond_3e5

    const/16 v26, 0x1

    move/from16 v9, v26

    .line 2352
    :goto_15c
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_174

    .line 2353
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2354
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 2356
    :cond_174
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move/from16 v26, v0

    if-eqz v26, :cond_191

    .line 2357
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 2358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2360
    :cond_191
    const/16 v26, 0x8

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a1

    .line 2361
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2363
    :cond_1a1
    if-eqz v9, :cond_236

    .line 2364
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1d6

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_1d6

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_1d6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v26, v0

    if-nez v26, :cond_1d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_1d6

    .line 2367
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2369
    :cond_1d6
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_1f0

    .line 2373
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    .line 2375
    :cond_1f0
    const/4 v8, 0x0

    .line 2376
    .local v8, diff:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_236

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    if-eqz v26, :cond_21d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_236

    .line 2379
    :cond_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2388
    .end local v8           #diff:I
    :cond_236
    and-int/lit8 v26, v6, 0x8

    if-eqz v26, :cond_23e

    .line 2390
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V
    :try_end_23d
    .catchall {:try_start_e .. :try_end_23d} :catchall_3d0

    .line 2391
    const/4 v9, 0x1

    .line 2394
    :cond_23e
    :try_start_23e
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .line 2395
    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_3eb

    .line 2396
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 2397
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 2398
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z
    :try_end_25b
    .catchall {:try_start_23e .. :try_end_25b} :catchall_3d0
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_25b} :catch_3f0

    .line 2415
    :goto_25b
    if-eqz v9, :cond_25e

    .line 2416
    const/4 v12, 0x1

    .line 2418
    :cond_25e
    :try_start_25e
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x7db

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_281

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    if-nez v26, :cond_281

    .line 2420
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2421
    const/4 v13, 0x1

    .line 2423
    :cond_281
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2e4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2e4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2e4

    .line 2429
    const v15, 0x480001

    .line 2433
    .local v15, mask:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 2434
    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const v27, -0x480002

    and-int v26, v26, v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v28, 0x480001

    and-int v27, v27, v28

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2492
    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_2e4
    :goto_2e4
    if-eqz v12, :cond_2f3

    .line 2494
    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v26

    if-eqz v26, :cond_2f3

    .line 2495
    const/4 v13, 0x0

    .line 2502
    :cond_2f3
    const/4 v5, 0x0

    .line 2504
    .local v5, assignLayers:Z
    if-eqz v13, :cond_305

    .line 2505
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v26

    if-nez v26, :cond_304

    if-eqz v9, :cond_305

    .line 2511
    :cond_304
    const/4 v5, 0x1

    .line 2514
    :cond_305
    if-eqz v23, :cond_310

    .line 2515
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v26

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_310

    .line 2516
    const/4 v5, 0x1

    .line 2520
    :cond_310
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2521
    move/from16 v0, p7

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 2522
    if-eqz v5, :cond_323

    .line 2523
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2525
    :cond_323
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v7

    .line 2526
    .local v7, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2527
    if-eqz v9, :cond_357

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    move/from16 v26, v0

    if-eqz v26, :cond_357

    .line 2528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/Display;->getHeight()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 2531
    :cond_357
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_368

    .line 2532
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2534
    :cond_368
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2535
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2536
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v14, v0

    .line 2550
    .local v14, inTouchMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 2551
    monitor-exit v25
    :try_end_39e
    .catchall {:try_start_25e .. :try_end_39e} :catchall_3d0

    .line 2553
    if-eqz v7, :cond_3a3

    .line 2554
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 2557
    :cond_3a3
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2559
    if-eqz v14, :cond_52e

    const/16 v25, 0x1

    :goto_3aa
    if-eqz v9, :cond_532

    const/16 v26, 0x2

    :goto_3ae
    or-int v25, v25, v26

    goto/16 :goto_21

    .line 2321
    .end local v5           #assignLayers:Z
    .end local v7           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v23           #wallpaperMayMove:Z
    :cond_3b2
    const/16 v26, 0x0

    move/from16 v20, v26

    goto/16 :goto_93

    .line 2327
    .restart local v20       #scaledWindow:Z
    :cond_3b8
    const/high16 v26, 0x3f80

    goto/16 :goto_b3

    .line 2329
    :cond_3bc
    const/high16 v26, 0x3f80

    goto/16 :goto_d7

    .line 2332
    :cond_3c0
    const/high16 v26, 0x3f80

    :try_start_3c2
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    goto/16 :goto_dd

    .line 2551
    .end local v6           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v20           #scaledWindow:Z
    .end local v24           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_3d0
    move-exception v26

    monitor-exit v25
    :try_end_3d2
    .catchall {:try_start_3c2 .. :try_end_3d2} :catchall_3d0

    throw v26

    .line 2335
    .restart local v6       #attrChanges:I
    .restart local v11       #flagChanges:I
    .restart local v20       #scaledWindow:Z
    .restart local v24       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3d3
    const/16 v26, 0x0

    move/from16 v13, v26

    goto/16 :goto_e8

    .line 2339
    .restart local v13       #imMayMove:Z
    :cond_3d9
    const/16 v26, 0x0

    move/from16 v12, v26

    goto/16 :goto_104

    .line 2343
    .restart local v12       #focusMayChange:Z
    :cond_3df
    const/16 v26, 0x0

    move/from16 v23, v26

    goto/16 :goto_126

    .line 2351
    .restart local v16       #oldVisibility:I
    .restart local v23       #wallpaperMayMove:Z
    :cond_3e5
    const/16 v26, 0x0

    move/from16 v9, v26

    goto/16 :goto_15c

    .line 2404
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_3eb
    :try_start_3eb
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V
    :try_end_3ee
    .catchall {:try_start_3eb .. :try_end_3ee} :catchall_3d0
    .catch Ljava/lang/Exception; {:try_start_3eb .. :try_end_3ee} :catch_3f0

    goto/16 :goto_25b

    .line 2406
    .end local v21           #surface:Landroid/view/Surface;
    :catch_3f0
    move-exception v26

    move-object/from16 v10, v26

    .line 2407
    .local v10, e:Ljava/lang/Exception;
    :try_start_3f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 2409
    const-string v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception thrown when creating surface for client "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2412
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2413
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    goto/16 :goto_21

    .line 2437
    .end local v10           #e:Ljava/lang/Exception;
    :cond_441
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2438
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_49e

    .line 2444
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_461

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_49e

    .line 2447
    :cond_461
    const/16 v22, 0x2002

    .line 2448
    .local v22, transit:I
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_477

    .line 2449
    const/16 v22, 0x5

    .line 2451
    :cond_477
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-nez v26, :cond_4cb

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v26

    if-eqz v26, :cond_4cb

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v26

    if-eqz v26, :cond_4cb

    .line 2453
    const/4 v12, 0x1

    .line 2454
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2474
    .end local v22           #transit:I
    :cond_49e
    :goto_49e
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4be

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x1000

    and-int v26, v26, v27

    if-eqz v26, :cond_4be

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_50f

    .line 2481
    :cond_4be
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    .line 2482
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V

    goto/16 :goto_2e4

    .line 2455
    .restart local v22       #transit:I
    :cond_4cb
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v26

    if-eqz v26, :cond_4da

    .line 2458
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    goto :goto_49e

    .line 2459
    :cond_4da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4f7

    .line 2463
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2464
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    goto :goto_49e

    .line 2466
    :cond_4f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_50b

    .line 2467
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2469
    :cond_50b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    goto :goto_49e

    .line 2484
    .end local v22           #transit:I
    :cond_50f
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2e4

    .line 2487
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 2488
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_52c
    .catchall {:try_start_3f3 .. :try_end_52c} :catchall_3d0

    goto/16 :goto_2e4

    .line 2559
    .restart local v5       #assignLayers:Z
    .restart local v7       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_52e
    const/16 v25, 0x0

    goto/16 :goto_3aa

    :cond_532
    const/16 v26, 0x0

    goto/16 :goto_3ae
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .registers 16
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    .line 3792
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3794
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3797
    :cond_13
    const/4 v1, 0x0

    .line 3798
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v11, 0x0

    .line 3799
    .local v11, startingToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v7, 0x0

    .line 3801
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3802
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 3803
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 3804
    .local v6, basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3805
    if-eqz v6, :cond_b3

    iget-object v1, v6, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_b3

    .line 3807
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 3808
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 3809
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3810
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3811
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 3812
    const/4 v7, 0x1

    .line 3822
    :cond_4d
    :goto_4d
    if-eqz v7, :cond_a9

    .line 3824
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3832
    :goto_54
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3833
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_63

    .line 3834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 3837
    :cond_63
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    .line 3838
    iget-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v0, :cond_6b

    .line 3839
    move-object v11, v1

    .line 3841
    :cond_6b
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3842
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_81

    .line 3844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3845
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3846
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/WindowManagerService$InputMonitor;->setFocusedAppLw(Lcom/android/server/WindowManagerService$AppWindowToken;)V

    .line 3852
    :cond_81
    :goto_81
    if-nez v7, :cond_88

    if-eqz v1, :cond_88

    .line 3853
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 3855
    :cond_88
    monitor-exit v12
    :try_end_89
    .catchall {:try_start_1d .. :try_end_89} :catchall_b0

    .line 3856
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3858
    if-eqz v11, :cond_9a

    .line 3861
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3862
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3864
    .end local v8           #m:Landroid/os/Message;
    :cond_9a
    return-void

    .line 3813
    :cond_9b
    :try_start_9b
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_4d

    .line 3814
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3815
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    .line 3816
    const/4 v7, 0x1

    goto :goto_4d

    .line 3829
    :cond_a9
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3830
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    goto :goto_54

    .line 3855
    .end local v6           #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_b0
    move-exception v0

    monitor-exit v12
    :try_end_b2
    .catchall {:try_start_9b .. :try_end_b2} :catchall_b0

    throw v0

    .line 3849
    .restart local v6       #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_b3
    :try_start_b3
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_b3 .. :try_end_cb} :catchall_b0

    goto :goto_81
.end method

.method public removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .registers 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2004
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2005
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2006
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_c

    .line 2007
    monitor-exit v1

    .line 2011
    :goto_b
    return-void

    .line 2009
    :cond_c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2010
    monitor-exit v1

    goto :goto_b

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public removeWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4899
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4900
    monitor-exit v0

    .line 4901
    return-void

    .line 4900
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 11
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2023
    .local v0, origId:J
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->disposeInputChannel()V

    .line 2035
    const/4 v3, 0x0

    .line 2040
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_57

    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 2043
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2045
    const/16 v2, 0x2002

    .line 2046
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v7, :cond_2c

    .line 2047
    const/4 v2, 0x5

    .line 2050
    :cond_2c
    invoke-direct {p0, p2, v2, v6}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2051
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2054
    .end local v2           #transit:I
    :cond_34
    iget-boolean v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v4, :cond_3e

    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 2057
    :cond_3e
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2058
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    .line 2059
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2060
    invoke-direct {p0, v7}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2061
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2062
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v4, :cond_53

    .line 2063
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2066
    :cond_53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2081
    :goto_56
    return-void

    .line 2071
    :cond_57
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2074
    if-eqz v3, :cond_71

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_71

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2077
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2079
    :cond_71
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2080
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .registers 14
    .parameter "token"

    .prologue
    .line 2890
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 2892
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2895
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2896
    .local v4, origId:J
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2897
    :try_start_19
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2898
    .local v7, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2899
    if-eqz v7, :cond_85

    .line 2900
    const/4 v2, 0x0

    .line 2901
    .local v2, delayed:Z
    iget-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_6c

    .line 2902
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 2904
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2905
    .local v0, N:I
    const/4 v1, 0x0

    .line 2907
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_38
    if-ge v3, v0, :cond_59

    .line 2908
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 2910
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 2911
    const/4 v2, 0x1

    .line 2914
    :cond_49
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_56

    .line 2915
    const/16 v9, 0x2002

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2917
    const/4 v1, 0x1

    .line 2907
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 2921
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_59
    if-eqz v1, :cond_65

    .line 2922
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2923
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2924
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2927
    :cond_65
    if-eqz v2, :cond_76

    .line 2928
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2934
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    :cond_6c
    :goto_6c
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v9}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 2938
    .end local v2           #delayed:Z
    :goto_71
    monitor-exit v8
    :try_end_72
    .catchall {:try_start_19 .. :try_end_72} :catchall_82

    .line 2939
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2940
    return-void

    .line 2929
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_76
    :try_start_76
    iget v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v9, v10, :cond_6c

    .line 2930
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 2938
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_82
    move-exception v9

    monitor-exit v8
    :try_end_84
    .catchall {:try_start_76 .. :try_end_84} :catchall_82

    throw v9

    .line 2936
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_85
    :try_start_85
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_85 .. :try_end_9d} :catchall_82

    goto :goto_71
.end method

.method requestAnimationLocked(J)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 9720
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_13

    .line 9721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 9722
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9724
    :cond_13
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .registers 5
    .parameter "_token"

    .prologue
    .line 5384
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5386
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5389
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5390
    :try_start_15
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 5391
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_24

    .line 5392
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$InputMonitor;->resumeDispatchingLw(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 5394
    :cond_24
    monitor-exit v1

    .line 5395
    return-void

    .line 5394
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v2
.end method

.method sendNewConfiguration()V
    .registers 3

    .prologue
    .line 4959
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 4962
    :goto_6
    return-void

    .line 4960
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 20
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne p1, v0, :cond_46

    .line 2259
    :cond_c
    move/from16 v9, p7

    .line 2260
    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2261
    .local v7, curTokenIndex:I
    :cond_14
    if-lez v7, :cond_44

    .line 2262
    add-int/lit8 v7, v7, -0x1

    .line 2263
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2264
    .local v10, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, v10, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2265
    .local v8, curWallpaperIndex:I
    :goto_26
    if-lez v8, :cond_14

    .line 2266
    add-int/lit8 v8, v8, -0x1

    .line 2267
    iget-object v0, v10, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/WindowManagerService$WindowState;

    .line 2269
    .local v11, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_32
    iget-object v0, v11, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_48

    .line 2272
    const/16 p7, 0x0

    goto :goto_26

    .line 2278
    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_44
    if-eqz v9, :cond_46

    .line 2283
    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_46
    const/4 v0, 0x0

    return-object v0

    .line 2273
    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :catch_48
    move-exception v0

    goto :goto_26
.end method

.method public setAnimationScale(IF)V
    .registers 5
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 4260
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4262
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4265
    :cond_12
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2b

    const/4 p2, 0x0

    .line 4267
    :cond_18
    :goto_18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4268
    packed-switch p1, :pswitch_data_42

    .line 4274
    :goto_1f
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4275
    return-void

    .line 4266
    :cond_2b
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_18

    const/high16 p2, 0x41a0

    goto :goto_18

    .line 4269
    :pswitch_34
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1f

    .line 4270
    :pswitch_3b
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1f

    .line 4268
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .registers 5
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 4278
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 4280
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4283
    :cond_13
    if-eqz p1, :cond_2d

    .line 4284
    array-length v0, p1

    if-lt v0, v2, :cond_21

    .line 4285
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 4287
    :cond_21
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2d

    .line 4288
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 4293
    :cond_2d
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4294
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .registers 8
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 2988
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2990
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2993
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2994
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 2995
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_35

    .line 2996
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    monitor-exit v1

    .line 3001
    :goto_34
    return-void

    .line 2999
    :cond_35
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3000
    monitor-exit v1

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .registers 8
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 3195
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3197
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3200
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3201
    :try_start_15
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3202
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_39

    .line 3203
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    monitor-exit v1

    .line 3209
    :goto_38
    return-void

    .line 3207
    :cond_39
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3208
    monitor-exit v1

    goto :goto_38

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V
    .registers 27
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 3331
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setAppStartingIcon()"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 3333
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3336
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3341
    :try_start_1d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v16

    .line 3342
    .local v16, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v16, :cond_40

    .line 3343
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    monitor-exit v17

    .line 3485
    :goto_3f
    return-void

    .line 3350
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v4, v0

    if-nez v4, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_57

    .line 3351
    :cond_52
    monitor-exit v17

    goto :goto_3f

    .line 3484
    .end local v16           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_54
    move-exception v4

    monitor-exit v17
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_54

    throw v4

    .line 3354
    .restart local v16       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_57
    :try_start_57
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v4, v0

    if-eqz v4, :cond_60

    .line 3355
    monitor-exit v17

    goto :goto_3f

    .line 3358
    :cond_60
    if-eqz p7, :cond_171

    .line 3359
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v15

    .line 3360
    .local v15, ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v15, :cond_171

    .line 3361
    iget-object v14, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3362
    .local v14, startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v14, :cond_147

    .line 3363
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    move v4, v0

    if-eqz v4, :cond_7d

    .line 3367
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3372
    :cond_7d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3376
    .local v12, origId:J
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3377
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 3378
    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3379
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3380
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 3381
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3382
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3383
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 3384
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 3385
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3389
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsChanged:Z

    .line 3390
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3391
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3392
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 3399
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_d9

    .line 3400
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 3402
    :cond_d9
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v4, :cond_e3

    .line 3403
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    .line 3405
    :cond_e3
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v4, :cond_f9

    .line 3406
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 3407
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3408
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3410
    :cond_f9
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v4, v0

    iget-boolean v5, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eq v4, v5, :cond_10c

    .line 3411
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3412
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3414
    :cond_10c
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_131

    .line 3415
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3416
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 3417
    iget v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 3418
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3419
    const/4 v4, 0x0

    iput v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 3420
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 3421
    invoke-virtual {v15}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 3424
    :cond_131
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3425
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3426
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3427
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3428
    monitor-exit v17

    goto/16 :goto_3f

    .line 3429
    .end local v12           #origId:J
    :cond_147
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v4, :cond_171

    .line 3435
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3436
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3437
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3442
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3443
    monitor-exit v17

    goto/16 :goto_3f

    .line 3450
    .end local v11           #m:Landroid/os/Message;
    .end local v14           #startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v15           #ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_171
    if-nez p8, :cond_176

    .line 3451
    monitor-exit v17

    goto/16 :goto_3f

    .line 3458
    :cond_176
    if-eqz p3, :cond_1b0

    .line 3459
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    move-object v0, v4

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    .line 3461
    .local v10, ent:Lcom/android/server/AttributeCache$Entry;
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_195

    .line 3463
    monitor-exit v17

    goto/16 :goto_3f

    .line 3465
    :cond_195
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a2

    .line 3467
    monitor-exit v17

    goto/16 :goto_3f

    .line 3469
    :cond_1a2
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1b0

    .line 3471
    monitor-exit v17

    goto/16 :goto_3f

    .line 3475
    .end local v10           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_1b0
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 3476
    new-instance v4, Lcom/android/server/WindowManagerService$StartingData;

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WindowManagerService$StartingData;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;II)V

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3483
    .restart local v11       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3484
    monitor-exit v17
    :try_end_1e1
    .catchall {:try_start_57 .. :try_end_1e1} :catchall_54

    goto/16 :goto_3f
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .registers 12
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3601
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppVisibility()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3603
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3608
    :cond_15
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3609
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 3610
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_38

    .line 3611
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    monitor-exit v8

    .line 3684
    :goto_37
    return-void

    .line 3629
    :cond_38
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_9d

    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v5, :cond_9d

    .line 3632
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eq v0, p2, :cond_51

    .line 3633
    monitor-exit v8

    goto :goto_37

    .line 3683
    .end local v1           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_4e
    move-exception v0

    monitor-exit v8
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_4e

    throw v0

    .line 3635
    .restart local v1       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_51
    if-nez p2, :cond_8e

    move v0, v4

    :goto_54
    :try_start_54
    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3639
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->setDummyAnimation()V

    .line 3640
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3641
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3642
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3643
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 3644
    if-eqz p2, :cond_90

    .line 3645
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3646
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 3647
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3652
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-eqz v0, :cond_8c

    .line 3653
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 3654
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3656
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_8c

    .line 3663
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3664
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3676
    :cond_8c
    :goto_8c
    monitor-exit v8

    goto :goto_37

    :cond_8e
    move v0, v3

    .line 3635
    goto :goto_54

    .line 3668
    :cond_90
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3672
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v0, :cond_8c

    .line 3673
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    goto :goto_8c

    .line 3679
    :cond_9d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3680
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 3681
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 3682
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3683
    monitor-exit v8
    :try_end_b0
    .catchall {:try_start_54 .. :try_end_b0} :catchall_4e

    goto :goto_37
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .registers 7
    .parameter "token"

    .prologue
    .line 3488
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3490
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3495
    :cond_12
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3496
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3497
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_35

    .line 3498
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    monitor-exit v1

    .line 3503
    :goto_34
    return-void

    .line 3501
    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3502
    monitor-exit v1

    goto :goto_34

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public setEventDispatching(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 5398
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 5400
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5403
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5404
    :try_start_15
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->setEventDispatchingLw(Z)V

    .line 5405
    monitor-exit v0

    .line 5406
    return-void

    .line 5405
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .registers 11
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3223
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setFocusedApp()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3225
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3228
    :cond_14
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3229
    const/4 v0, 0x0

    .line 3230
    .local v0, changed:Z
    if-nez p1, :cond_3d

    .line 3232
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_3b

    move v0, v7

    .line 3233
    :goto_1f
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3234
    if-eqz v0, :cond_2a

    .line 3235
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$InputMonitor;->setFocusedAppLw(Lcom/android/server/WindowManagerService$AppWindowToken;)V

    .line 3251
    :cond_2a
    :goto_2a
    if-eqz p2, :cond_39

    if-eqz v0, :cond_39

    .line 3252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3253
    .local v2, origId:J
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3256
    .end local v2           #origId:J
    :cond_39
    monitor-exit v4

    .line 3257
    :goto_3a
    return-void

    :cond_3b
    move v0, v6

    .line 3232
    goto :goto_1f

    .line 3238
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 3239
    .local v1, newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_60

    .line 3240
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    monitor-exit v4

    goto :goto_3a

    .line 3256
    .end local v1           #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_5d
    move-exception v5

    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_1a .. :try_end_5f} :catchall_5d

    throw v5

    .line 3243
    .restart local v1       #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_60
    :try_start_60
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v1, :cond_6f

    move v0, v7

    .line 3244
    :goto_65
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3246
    if-eqz v0, :cond_2a

    .line 3247
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v5, v1}, Lcom/android/server/WindowManagerService$InputMonitor;->setFocusedAppLw(Lcom/android/server/WindowManagerService$AppWindowToken;)V
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_5d

    goto :goto_2a

    :cond_6f
    move v0, v6

    .line 3243
    goto :goto_65
.end method

.method setHoldScreenLocked(Z)V
    .registers 4
    .parameter "holding"

    .prologue
    .line 9708
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 9709
    .local v0, state:Z
    if-eq p1, v0, :cond_f

    .line 9710
    if-eqz p1, :cond_10

    .line 9711
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9717
    :cond_f
    :goto_f
    return-void

    .line 9713
    :cond_10
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->screenOnStoppedLw()V

    .line 9714
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_f
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 4480
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4481
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 4482
    monitor-exit v0

    .line 4483
    return-void

    .line 4482
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1062
    iput p1, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1063
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1064
    .local v2, imw:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_23

    .line 1065
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1068
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1069
    .local v3, wi:I
    :goto_11
    if-lez v3, :cond_23

    .line 1070
    add-int/lit8 v3, v3, -0x1

    .line 1071
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 1072
    .local v0, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_11

    .line 1077
    .end local v0           #cw:Lcom/android/server/WindowManagerService$WindowState;
    .end local v3           #wi:I
    :cond_23
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1078
    .local v1, di:I
    :goto_29
    if-lez v1, :cond_3b

    .line 1079
    add-int/lit8 v1, v1, -0x1

    .line 1080
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1081
    .restart local v2       #imw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_29

    .line 1085
    :cond_3b
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"

    .prologue
    .line 2202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2204
    .local v0, origId:J
    :try_start_4
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2b

    .line 2205
    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2206
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_23

    .line 2207
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 2208
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2209
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2210
    iput p3, v2, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    .line 2211
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2212
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2214
    :cond_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_28

    .line 2216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2218
    return-void

    .line 2214
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_28
    move-exception v4

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v4
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 2216
    :catchall_2b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 3182
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3184
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3187
    :cond_12
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3188
    :try_start_15
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 3189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 3190
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3191
    monitor-exit v0

    .line 3192
    return-void

    .line 3191
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setRotation(IZI)V
    .registers 6
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4487
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "setRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4489
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4492
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    .line 4493
    return-void
.end method

.method public setRotationUnchecked(IZI)V
    .registers 9
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4502
    .local v1, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4503
    :try_start_7
    invoke-virtual {p0, p1, p3}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z

    move-result v0

    .line 4504
    .local v0, changed:Z
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_17

    .line 4506
    if-nez v0, :cond_10

    if-eqz p2, :cond_13

    .line 4507
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 4510
    :cond_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4511
    return-void

    .line 4504
    .end local v0           #changed:Z
    :catchall_17
    move-exception v4

    :try_start_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v4
.end method

.method public setRotationUncheckedLocked(II)Z
    .registers 13
    .parameter "rotation"
    .parameter "animFlags"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4523
    const/16 v3, -0x3e8

    if-ne p1, v3, :cond_87

    .line 4524
    iget p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 4530
    :goto_a
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    iget v5, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-interface {v3, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result p1

    .line 4533
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_8d

    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v3, p1, :cond_8d

    move v0, v7

    .line 4535
    .local v0, changed:Z
    :goto_1f
    if-eqz v0, :cond_a7

    .line 4541
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 4542
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 4543
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v9}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 4544
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v9}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4546
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 4547
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4548
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 4549
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting rotation to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    invoke-virtual {v3, v8, p1}, Lcom/android/server/InputManager;->setDisplayOrientation(II)V

    .line 4551
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_6c

    .line 4552
    invoke-static {v8, p1, p2}, Landroid/view/Surface;->setOrientation(III)V

    .line 4554
    :cond_6c
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v7

    .local v1, i:I
    :goto_74
    if-ltz v1, :cond_8f

    .line 4555
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4556
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_84

    .line 4557
    iput-boolean v7, v2, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 4554
    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_74

    .line 4526
    .end local v0           #changed:Z
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_87
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 4527
    iput p2, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    goto/16 :goto_a

    :cond_8d
    move v0, v8

    .line 4533
    goto :goto_1f

    .line 4560
    .restart local v0       #changed:Z
    .restart local v1       #i:I
    :cond_8f
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v7

    :goto_97
    if-ltz v1, :cond_a7

    .line 4562
    :try_start_99
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IRotationWatcher;

    invoke-interface {v3, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a4} :catch_a8

    .line 4560
    :goto_a4
    add-int/lit8 v1, v1, -0x1

    goto :goto_97

    .line 4568
    .end local v1           #i:I
    :cond_a7
    return v0

    .line 4563
    .restart local v1       #i:I
    :catch_a8
    move-exception v3

    goto :goto_a4
.end method

.method setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .registers 15
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 3507
    const/4 v2, 0x0

    .line 3509
    .local v2, delayed:Z
    iget-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-ne v7, p3, :cond_d

    .line 3510
    if-nez p3, :cond_44

    const/4 v7, 0x1

    :goto_8
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3511
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3514
    :cond_d
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3515
    iget-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-ne v7, p3, :cond_8b

    .line 3516
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3517
    .local v0, N:I
    const/4 v1, 0x0

    .line 3522
    .local v1, changed:Z
    const/4 v4, 0x0

    .line 3524
    .local v4, runningAppAnimation:Z
    const/4 v7, -0x1

    if-eq p4, v7, :cond_32

    .line 3525
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    sget-object v8, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v7, v8, :cond_28

    .line 3526
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3528
    :cond_28
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 3529
    const/4 v1, 0x1

    .line 3530
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_32

    .line 3531
    const/4 v4, 0x1

    move v2, v4

    .line 3535
    :cond_32
    const/4 v3, 0x0

    .local v3, i:I
    :goto_33
    if-ge v3, v0, :cond_6f

    .line 3536
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 3537
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v6, v7, :cond_46

    .line 3535
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3510
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_44
    const/4 v7, 0x0

    goto :goto_8

    .line 3541
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_46
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3542
    const/4 v2, 0x1

    .line 3547
    :cond_4d
    if-eqz p3, :cond_5f

    .line 3548
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v7

    if-nez v7, :cond_41

    .line 3549
    if-nez v4, :cond_5d

    .line 3550
    const/16 v7, 0x1001

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3553
    :cond_5d
    const/4 v1, 0x1

    goto :goto_41

    .line 3555
    :cond_5f
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 3556
    if-nez v4, :cond_6d

    .line 3557
    const/16 v7, 0x2002

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3560
    :cond_6d
    const/4 v1, 0x1

    goto :goto_41

    .line 3564
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6f
    if-nez p3, :cond_91

    const/4 v7, 0x1

    :goto_72
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 3565
    if-nez p3, :cond_93

    .line 3566
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3582
    :cond_7d
    :goto_7d
    if-eqz v1, :cond_8b

    .line 3583
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3584
    if-eqz p5, :cond_a6

    .line 3585
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3586
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3593
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v3           #i:I
    .end local v4           #runningAppAnimation:Z
    :cond_8b
    :goto_8b
    iget-object v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v7, :cond_90

    .line 3594
    const/4 v2, 0x1

    .line 3597
    :cond_90
    return v2

    .line 3564
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v3       #i:I
    .restart local v4       #runningAppAnimation:Z
    :cond_91
    const/4 v7, 0x0

    goto :goto_72

    .line 3570
    :cond_93
    iget-object v5, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3571
    .local v5, swin:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_7d

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v7, :cond_9f

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-eqz v7, :cond_7d

    .line 3573
    :cond_9f
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 3574
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_7d

    .line 3588
    .end local v5           #swin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a6
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMonitor:Lcom/android/server/WindowManagerService$InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    goto :goto_8b
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .registers 7
    .parameter "adj"

    .prologue
    .line 1605
    iput p1, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1606
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1607
    .local v0, curTokenIndex:I
    :cond_8
    if-lez v0, :cond_2c

    .line 1608
    add-int/lit8 v0, v0, -0x1

    .line 1609
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1610
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1611
    .local v1, curWallpaperIndex:I
    :goto_1a
    if-lez v1, :cond_8

    .line 1612
    add-int/lit8 v1, v1, -0x1

    .line 1613
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1614
    .local v3, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_1a

    .line 1619
    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2c
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/WindowManagerService$WindowState;FFFF)V
    .registers 7
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 2234
    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1e

    .line 2235
    :cond_c
    iput p2, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 2236
    iput p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 2237
    iput p4, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 2238
    iput p5, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 2239
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2240
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2243
    :cond_1e
    return-void
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z
    .registers 7
    .parameter "win"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 9736
    :try_start_2
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_18

    .line 9737
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 9738
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V

    .line 9739
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    if-eqz v1, :cond_18

    .line 9742
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    .line 9743
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_18} :catch_1a

    :cond_18
    move v1, v2

    .line 9753
    :goto_19
    return v1

    .line 9747
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 9748
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9751
    const-string v1, "show"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    move v1, v4

    .line 9753
    goto :goto_19
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .registers 10
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 3750
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3752
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3755
    :cond_12
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3756
    if-nez p2, :cond_25

    :try_start_17
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3758
    monitor-exit v3

    .line 3770
    :goto_24
    return-void

    .line 3761
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3762
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_2f

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_4c

    .line 3763
    :cond_2f
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    monitor-exit v3

    goto :goto_24

    .line 3769
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_49
    move-exception v4

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_49

    throw v4

    .line 3766
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_4c
    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3767
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 3768
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3769
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_49

    goto :goto_24
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V
    .registers 11
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 3730
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_42

    .line 3731
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_2c

    .line 3732
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 3733
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 3734
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_2c

    .line 3735
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3736
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3737
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3741
    :cond_2c
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3742
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_33
    if-ge v1, v0, :cond_42

    .line 3743
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3744
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v7, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 3742
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 3747
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_42
    return-void
.end method

.method public startViewServer(I)Z
    .registers 8
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    const-string v5, "WindowManager"

    const-string v4, "View server did not start"

    .line 4616
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v3

    .line 4645
    :goto_c
    return v1

    .line 4620
    :cond_d
    const-string v1, "android.permission.DUMP"

    const-string v2, "startViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v3

    .line 4621
    goto :goto_c

    .line 4624
    :cond_19
    const/16 v1, 0x400

    if-ge p1, v1, :cond_1f

    move v1, v3

    .line 4625
    goto :goto_c

    .line 4628
    :cond_1f
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v1, :cond_3d

    .line 4629
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 4631
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_32

    move-result v1

    goto :goto_c

    .line 4632
    :catch_32
    move-exception v1

    move-object v0, v1

    .line 4633
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_3b
    move v1, v3

    .line 4636
    goto :goto_c

    .line 4640
    :cond_3d
    :try_start_3d
    new-instance v1, Lcom/android/server/ViewServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ViewServer;-><init>(Lcom/android/server/WindowManagerService;I)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    .line 4641
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_49} :catch_4b

    move-result v1

    goto :goto_c

    .line 4642
    :catch_4b
    move-exception v1

    move-object v0, v1

    .line 4643
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 4645
    goto :goto_c
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .registers 8
    .parameter "token"
    .parameter "force"

    .prologue
    .line 3773
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 3775
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3778
    :cond_12
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3779
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3780
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_1f

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_21

    .line 3781
    :cond_1f
    monitor-exit v3

    .line 3789
    :goto_20
    return-void

    .line 3783
    :cond_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3786
    .local v0, origId:J
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, p2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3788
    monitor-exit v3

    goto :goto_20

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v4
.end method

.method public stopViewServer()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4662
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 4673
    :goto_8
    return v0

    .line 4666
    :cond_9
    const-string v0, "android.permission.DUMP"

    const-string v1, "stopViewServer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v2

    .line 4667
    goto :goto_8

    .line 4670
    :cond_15
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_20

    .line 4671
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->stop()Z

    move-result v0

    goto :goto_8

    :cond_20
    move v0, v2

    .line 4673
    goto :goto_8
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 5569
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 5570
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V
    .registers 11
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3688
    iget-boolean v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_43

    .line 3691
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3692
    .local v0, N:I
    const/4 v2, 0x0

    .line 3693
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_2c

    .line 3694
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 3695
    .local v3, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_29

    .line 3696
    iput-boolean v6, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 3697
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_28

    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_28

    .line 3698
    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 3700
    :cond_28
    const/4 v2, 0x1

    .line 3693
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3703
    .end local v3           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2c
    if-nez p3, :cond_30

    if-eqz v2, :cond_37

    .line 3705
    :cond_30
    iput-boolean v6, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 3706
    iget v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 3708
    :cond_37
    if-eqz p2, :cond_43

    .line 3709
    if-eqz v2, :cond_40

    .line 3710
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3711
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3713
    :cond_40
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 3716
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_43
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 11
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 3085
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 3087
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3090
    :cond_12
    const/4 v0, 0x0

    .line 3091
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3093
    .local v2, ident:J
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3094
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 3095
    if-eqz p2, :cond_2d

    .line 3096
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 3098
    .local v4, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_2d

    .line 3099
    const/16 v6, 0x80

    invoke-virtual {p0, v4, v6}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 3103
    .end local v4           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3121
    :cond_31
    :goto_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_65

    .line 3123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3124
    return-object v0

    .line 3105
    :cond_36
    if-eqz p1, :cond_31

    .line 3110
    :try_start_38
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3111
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    iget v7, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v7, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 3112
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 3113
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-eqz v6, :cond_31

    .line 3114
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 3115
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3116
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3117
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .end local v0           #config:Landroid/content/res/Configuration;
    .local v1, config:Landroid/content/res/Configuration;
    move-object v0, v1

    .end local v1           #config:Landroid/content/res/Configuration;
    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_31

    .line 3121
    :catchall_65
    move-exception v6

    monitor-exit v5
    :try_end_67
    .catchall {:try_start_38 .. :try_end_67} :catchall_65

    throw v6
.end method

.method updateOrientationFromAppTokensLocked()Z
    .registers 7

    .prologue
    .line 3142
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v4, :cond_6

    .line 3148
    const/4 v4, 0x0

    .line 3169
    :goto_5
    return v4

    .line 3151
    :cond_6
    const/4 v0, 0x0

    .line 3152
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3154
    .local v1, ident:J
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 3156
    .local v3, req:I
    iget v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_27

    .line 3157
    iput v3, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 3160
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 3161
    const/16 v4, -0x3e8

    iget v5, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_2c

    move-result v4

    if-eqz v4, :cond_27

    .line 3163
    const/4 v0, 0x1

    .line 3169
    :cond_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v0

    goto :goto_5

    .end local v3           #req:I
    :catchall_2c
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z
    .registers 25
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    .line 1623
    const/4 v11, 0x0

    .line 1624
    .local v11, changed:Z
    const/4 v13, 0x0

    .line 1625
    .local v13, rawChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_156

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    move/from16 v16, v3

    .line 1626
    .local v16, wpx:F
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_15c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    move/from16 v17, v3

    .line 1627
    .local v17, wpxs:F
    :goto_24
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int v10, v3, p2

    .line 1628
    .local v10, availw:I
    if-lez v10, :cond_162

    int-to-float v3, v10

    mul-float v3, v3, v16

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1629
    .local v12, offset:I
    :goto_40
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    move v3, v0

    if-eq v3, v12, :cond_166

    const/4 v3, 0x1

    move v11, v3

    .line 1630
    :goto_49
    if-eqz v11, :cond_50

    .line 1633
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    .line 1635
    :cond_50
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move v3, v0

    cmpl-float v3, v3, v16

    if-nez v3, :cond_62

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move v3, v0

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_6f

    .line 1636
    :cond_62
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 1637
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 1638
    const/4 v13, 0x1

    .line 1641
    :cond_6f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_16a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    move/from16 v18, v3

    .line 1642
    .local v18, wpy:F
    :goto_80
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_170

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    move/from16 v19, v3

    .line 1643
    .local v19, wpys:F
    :goto_91
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v9, v3, p3

    .line 1644
    .local v9, availh:I
    if-lez v9, :cond_176

    int-to-float v3, v9

    mul-float v3, v3, v18

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1645
    :goto_ad
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    move v3, v0

    if-eq v3, v12, :cond_ba

    .line 1648
    const/4 v11, 0x1

    .line 1649
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    .line 1651
    :cond_ba
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move v3, v0

    cmpl-float v3, v3, v18

    if-nez v3, :cond_cc

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move v3, v0

    cmpl-float v3, v3, v19

    if-eqz v3, :cond_d9

    .line 1652
    :cond_cc
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 1653
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 1654
    const/4 v13, 0x1

    .line 1657
    :cond_d9
    if-eqz v13, :cond_155

    .line 1662
    if-eqz p4, :cond_e3

    .line 1663
    :try_start_dd
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 1665
    :cond_e3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move v7, v0

    move/from16 v8, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 1668
    if-eqz p4, :cond_155

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    if-eqz v3, :cond_155

    .line 1670
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1671
    .local v14, start:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    move-wide v3, v0
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_113} :catch_17a

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    cmp-long v3, v3, v14

    if-gez v3, :cond_14f

    .line 1676
    :try_start_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v3, v0

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_124
    .catch Ljava/lang/InterruptedException; {:try_start_11a .. :try_end_124} :catch_17c
    .catch Landroid/os/RemoteException; {:try_start_11a .. :try_end_124} :catch_17a

    .line 1680
    :goto_124
    const-wide/16 v3, 0x96

    add-long/2addr v3, v14

    :try_start_127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_14f

    .line 1682
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1687
    :cond_14f
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :try_end_155
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_155} :catch_17a

    .line 1694
    .end local v14           #start:J
    :cond_155
    :goto_155
    return v11

    .line 1625
    .end local v9           #availh:I
    .end local v10           #availw:I
    .end local v12           #offset:I
    .end local v16           #wpx:F
    .end local v17           #wpxs:F
    .end local v18           #wpy:F
    .end local v19           #wpys:F
    :cond_156
    const/high16 v3, 0x3f00

    move/from16 v16, v3

    goto/16 :goto_13

    .line 1626
    .restart local v16       #wpx:F
    :cond_15c
    const/high16 v3, -0x4080

    move/from16 v17, v3

    goto/16 :goto_24

    .line 1628
    .restart local v10       #availw:I
    .restart local v17       #wpxs:F
    :cond_162
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_40

    .line 1629
    .restart local v12       #offset:I
    :cond_166
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_49

    .line 1641
    :cond_16a
    const/high16 v3, 0x3f00

    move/from16 v18, v3

    goto/16 :goto_80

    .line 1642
    .restart local v18       #wpy:F
    :cond_170
    const/high16 v3, -0x4080

    move/from16 v19, v3

    goto/16 :goto_91

    .line 1644
    .restart local v9       #availh:I
    .restart local v19       #wpys:F
    :cond_176
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_ad

    .line 1690
    :catch_17a
    move-exception v3

    goto :goto_155

    .line 1677
    .restart local v14       #start:J
    :catch_17c
    move-exception v3

    goto :goto_124
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;Z)Z
    .registers 13
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v9, 0x0

    .line 1708
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1709
    .local v4, dw:I
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 1711
    .local v3, dh:I
    const/4 v0, 0x0

    .line 1713
    .local v0, changed:Z
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1714
    .local v5, target:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_26

    .line 1715
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_56

    .line 1716
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 1720
    :cond_1c
    :goto_1c
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_61

    .line 1721
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 1727
    :cond_26
    :goto_26
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1728
    .local v1, curTokenIndex:I
    :cond_2c
    if-lez v1, :cond_6c

    .line 1729
    add-int/lit8 v1, v1, -0x1

    .line 1730
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1731
    .local v6, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1732
    .local v2, curWallpaperIndex:I
    :cond_3e
    :goto_3e
    if-lez v2, :cond_2c

    .line 1733
    add-int/lit8 v2, v2, -0x1

    .line 1734
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 1735
    .local v7, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {p0, v7, v4, v3, p2}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 1736
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 1737
    const/4 v0, 0x1

    .line 1739
    const/4 p2, 0x0

    goto :goto_3e

    .line 1717
    .end local v1           #curTokenIndex:I
    .end local v2           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_56
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1c

    .line 1718
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    goto :goto_1c

    .line 1722
    :cond_61
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_26

    .line 1723
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    goto :goto_26

    .line 1744
    .restart local v1       #curTokenIndex:I
    :cond_6c
    return v0
.end method

.method updateWallpaperVisibilityLocked()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1748
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/WindowManagerService;->isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    .line 1749
    .local v5, visible:Z
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1750
    .local v3, dw:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1752
    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1753
    .local v0, curTokenIndex:I
    :cond_1a
    if-lez v0, :cond_58

    .line 1754
    add-int/lit8 v0, v0, -0x1

    .line 1755
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1756
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-boolean v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-ne v7, v5, :cond_31

    .line 1757
    if-nez v5, :cond_56

    move v7, v9

    :goto_2d
    iput-boolean v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 1760
    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1763
    :cond_31
    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1764
    .local v1, curWallpaperIndex:I
    :cond_37
    :goto_37
    if-lez v1, :cond_1a

    .line 1765
    add-int/lit8 v1, v1, -0x1

    .line 1766
    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 1767
    .local v6, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_48

    .line 1768
    invoke-virtual {p0, v6, v3, v2, v8}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 1771
    :cond_48
    iget-boolean v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_37

    .line 1772
    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    .line 1777
    :try_start_4e
    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_53} :catch_54

    goto :goto_37

    .line 1778
    :catch_54
    move-exception v7

    goto :goto_37

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_56
    move v7, v8

    .line 1757
    goto :goto_2d

    .line 1783
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_58
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .registers 9
    .parameter "tokens"

    .prologue
    const/4 v4, 0x1

    const-string v6, "WindowManager"

    const-string v5, " @ "

    .line 2814
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v4

    .line 2815
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v4

    .line 2816
    .local v0, m:I
    :goto_13
    if-ltz v1, :cond_6f

    if-ltz v0, :cond_6f

    .line 2817
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2818
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v3, :cond_26

    .line 2819
    add-int/lit8 v0, v0, -0x1

    .line 2820
    goto :goto_13

    .line 2822
    :cond_26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_6a

    .line 2823
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tokens out of sync: external is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", internal is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_6a
    add-int/lit8 v1, v1, -0x1

    .line 2827
    add-int/lit8 v0, v0, -0x1

    .line 2828
    goto :goto_13

    .line 2829
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_6f
    :goto_6f
    if-ltz v1, :cond_9a

    .line 2830
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External token not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    add-int/lit8 v1, v1, -0x1

    goto :goto_6f

    .line 2833
    :cond_9a
    :goto_9a
    if-ltz v0, :cond_cf

    .line 2834
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2835
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-nez v3, :cond_cc

    .line 2836
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid internal token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_cc
    add-int/lit8 v0, v0, -0x1

    .line 2839
    goto :goto_9a

    .line 2840
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_cf
    return-void
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 10
    .parameter "client"

    .prologue
    .line 4758
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4759
    const/4 v6, 0x0

    .line 4792
    :goto_7
    return v6

    .line 4762
    :cond_8
    const/4 v5, 0x1

    .line 4764
    .local v5, result:Z
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 4766
    .local v2, focusedWindow:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v3, 0x0

    .line 4770
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 4771
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_59
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_4d

    .line 4773
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    if-eqz v2, :cond_39

    .line 4774
    :try_start_20
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4775
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 4776
    iget-object v6, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4778
    :cond_39
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 4779
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_66

    .line 4783
    if-eqz v4, :cond_6a

    .line 4785
    :try_start_43
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_49

    move-object v3, v4

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_47
    :goto_47
    move v6, v5

    .line 4792
    goto :goto_7

    .line 4786
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_49
    move-exception v1

    .line 4787
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    move-object v3, v4

    .line 4788
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_47

    .line 4780
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #e:Ljava/io/IOException;
    :catch_4d
    move-exception v6

    move-object v1, v6

    .line 4781
    .local v1, e:Ljava/lang/Exception;
    :goto_4f
    const/4 v5, 0x0

    .line 4783
    if-eqz v3, :cond_47

    .line 4785
    :try_start_52
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_47

    .line 4786
    :catch_56
    move-exception v1

    .line 4787
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 4788
    goto :goto_47

    .line 4783
    .end local v1           #e:Ljava/io/IOException;
    :catchall_59
    move-exception v6

    :goto_5a
    if-eqz v3, :cond_5f

    .line 4785
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 4788
    :cond_5f
    :goto_5f
    throw v6

    .line 4786
    :catch_60
    move-exception v1

    .line 4787
    .restart local v1       #e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_5f

    .line 4783
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catchall_63
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_5a

    .line 4780
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_66
    move-exception v6

    move-object v1, v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4f

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_6a
    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_47
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 14
    .parameter "client"

    .prologue
    .line 4705
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 4706
    const/4 v9, 0x0

    .line 4747
    :goto_7
    return v9

    .line 4709
    :cond_8
    const/4 v6, 0x1

    .line 4712
    .local v6, result:Z
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 4714
    :try_start_c
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/WindowManagerService$WindowState;

    .line 4715
    .local v8, windows:[Lcom/android/server/WindowManagerService$WindowState;
    monitor-exit v9
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_55

    .line 4717
    const/4 v4, 0x0

    .line 4721
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 4722
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_6c

    .line 4724
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2e
    array-length v1, v8

    .line 4725
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_30
    if-ge v3, v1, :cond_58

    .line 4726
    aget-object v7, v8, v3

    .line 4727
    .local v7, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4728
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 4729
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4730
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_52
    .catchall {:try_start_2e .. :try_end_52} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_52} :catch_85

    .line 4725
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 4715
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #windows:[Lcom/android/server/WindowManagerService$WindowState;
    :catchall_55
    move-exception v10

    :try_start_56
    monitor-exit v9
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v10

    .line 4733
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Lcom/android/server/WindowManagerService$WindowState;
    :cond_58
    :try_start_58
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4734
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_85

    .line 4738
    if-eqz v5, :cond_89

    .line 4740
    :try_start_62
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_68

    move-object v4, v5

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_66
    :goto_66
    move v9, v6

    .line 4747
    goto :goto_7

    .line 4741
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_68
    move-exception v2

    .line 4742
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    move-object v4, v5

    .line 4743
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_66

    .line 4735
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catch_6c
    move-exception v9

    move-object v2, v9

    .line 4736
    .local v2, e:Ljava/lang/Exception;
    :goto_6e
    const/4 v6, 0x0

    .line 4738
    if-eqz v4, :cond_66

    .line 4740
    :try_start_71
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_66

    .line 4741
    :catch_75
    move-exception v2

    .line 4742
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 4743
    goto :goto_66

    .line 4738
    .end local v2           #e:Ljava/io/IOException;
    :catchall_78
    move-exception v9

    :goto_79
    if-eqz v4, :cond_7e

    .line 4740
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 4743
    :cond_7e
    :goto_7e
    throw v9

    .line 4741
    :catch_7f
    move-exception v2

    .line 4742
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_7e

    .line 4738
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_82
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_79

    .line 4735
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_85
    move-exception v9

    move-object v2, v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_6e

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :cond_89
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_66
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    .line 4816
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 4817
    const/4 v14, 0x0

    .line 4888
    :cond_7
    :goto_7
    return v14

    .line 4820
    :cond_8
    const/4 v12, 0x1

    .line 4821
    .local v12, success:Z
    const/4 v5, 0x0

    .line 4822
    .local v5, data:Landroid/os/Parcel;
    const/4 v11, 0x0

    .line 4824
    .local v11, reply:Landroid/os/Parcel;
    const/4 v9, 0x0

    .line 4829
    .local v9, out:Ljava/io/BufferedWriter;
    const/16 v14, 0x20

    :try_start_e
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 4830
    .local v8, index:I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_1c

    .line 4831
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    .line 4833
    :cond_1c
    const/4 v14, 0x0

    move-object/from16 v0, p3

    move v1, v14

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4834
    .local v4, code:Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    long-to-int v7, v14

    .line 4837
    .local v7, hashCode:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_57

    .line 4838
    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 4843
    :goto_3b
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_f9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_41} :catch_bc

    move-result-object v13

    .line 4844
    .local v13, window:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v13, :cond_5a

    .line 4845
    const/4 v14, 0x0

    .line 4873
    if-eqz v5, :cond_4a

    .line 4874
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 4876
    :cond_4a
    if-eqz v11, :cond_4f

    .line 4877
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 4879
    :cond_4f
    if-eqz v9, :cond_7

    .line 4881
    :try_start_51
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_7

    .line 4882
    :catch_55
    move-exception v15

    goto :goto_7

    .line 4840
    .end local v13           #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_57
    :try_start_57
    const-string p3, ""

    goto :goto_3b

    .line 4848
    .restart local v13       #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 4849
    const-string v14, "android.view.IWindow"

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4850
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4851
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4852
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 4853
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 4857
    iget-object v14, v13, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v14}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 4859
    .local v3, binder:Landroid/os/IBinder;
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v3, v14, v5, v11, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4861
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    .line 4863
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v14

    if-nez v14, :cond_aa

    .line 4864
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_a1
    .catchall {:try_start_57 .. :try_end_a1} :catchall_f9
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_a1} :catch_bc

    .line 4865
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_a1
    const-string v14, "DONE\n"

    invoke-virtual {v10, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4866
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_10e
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a9} :catch_111

    move-object v9, v10

    .line 4873
    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    :cond_aa
    if-eqz v5, :cond_af

    .line 4874
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 4876
    :cond_af
    if-eqz v11, :cond_b4

    .line 4877
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 4879
    :cond_b4
    if-eqz v9, :cond_b9

    .line 4881
    :try_start_b6
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_10a

    .end local v3           #binder:Landroid/os/IBinder;
    .end local v4           #code:Ljava/lang/String;
    .end local v7           #hashCode:I
    .end local v8           #index:I
    .end local v13           #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b9
    :goto_b9
    move v14, v12

    .line 4888
    goto/16 :goto_7

    .line 4869
    :catch_bc
    move-exception v14

    move-object v6, v14

    .line 4870
    .local v6, e:Ljava/lang/Exception;
    :goto_be
    :try_start_be
    const-string v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not send command "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with parameters "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e6
    .catchall {:try_start_be .. :try_end_e6} :catchall_f9

    .line 4871
    const/4 v12, 0x0

    .line 4873
    if-eqz v5, :cond_ec

    .line 4874
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 4876
    :cond_ec
    if-eqz v11, :cond_f1

    .line 4877
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 4879
    :cond_f1
    if-eqz v9, :cond_b9

    .line 4881
    :try_start_f3
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f7

    goto :goto_b9

    .line 4882
    :catch_f7
    move-exception v14

    goto :goto_b9

    .line 4873
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_f9
    move-exception v14

    :goto_fa
    if-eqz v5, :cond_ff

    .line 4874
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 4876
    :cond_ff
    if-eqz v11, :cond_104

    .line 4877
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 4879
    :cond_104
    if-eqz v9, :cond_109

    .line 4881
    :try_start_106
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10c

    .line 4884
    :cond_109
    :goto_109
    throw v14

    .line 4882
    .restart local v3       #binder:Landroid/os/IBinder;
    .restart local v4       #code:Ljava/lang/String;
    .restart local v7       #hashCode:I
    .restart local v8       #index:I
    .restart local v13       #window:Lcom/android/server/WindowManagerService$WindowState;
    :catch_10a
    move-exception v14

    goto :goto_b9

    .end local v3           #binder:Landroid/os/IBinder;
    .end local v4           #code:Ljava/lang/String;
    .end local v7           #hashCode:I
    .end local v8           #index:I
    .end local v13           #window:Lcom/android/server/WindowManagerService$WindowState;
    :catch_10c
    move-exception v15

    goto :goto_109

    .line 4873
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v3       #binder:Landroid/os/IBinder;
    .restart local v4       #code:Ljava/lang/String;
    .restart local v7       #hashCode:I
    .restart local v8       #index:I
    .restart local v10       #out:Ljava/io/BufferedWriter;
    .restart local v13       #window:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_10e
    move-exception v14

    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    goto :goto_fa

    .line 4869
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_111
    move-exception v14

    move-object v6, v14

    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    goto :goto_be
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .parameter "window"
    .parameter "result"

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_19

    .line 2249
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 2250
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2252
    :cond_19
    monitor-exit v0

    .line 2253
    return-void

    .line 2252
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .parameter "window"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1699
    :try_start_3
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_19

    .line 1701
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 1702
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1704
    :cond_19
    monitor-exit v0

    .line 1705
    return-void

    .line 1704
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .registers 7
    .parameter "watcher"

    .prologue
    .line 4576
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4577
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/WindowManagerService$4;

    invoke-direct {v0, p0, v1}, Lcom/android/server/WindowManagerService$4;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;)V

    .line 4593
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4595
    :try_start_c
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4596
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_20

    .line 4601
    :goto_19
    :try_start_19
    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    monitor-exit v2

    return v3

    .line 4602
    :catchall_1d
    move-exception v3

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v3

    .line 4597
    :catch_20
    move-exception v3

    goto :goto_19
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;
    .registers 12
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v4, 0x0

    const-string v7, "WindowManager"

    const-string v6, "Requested window "

    const-string v5, "Failed looking up window"

    .line 8176
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 8179
    .local v1, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_3b

    .line 8180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8182
    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_32

    .line 8183
    throw v0

    .line 8185
    :cond_32
    const-string v2, "WindowManager"

    const-string v2, "Failed looking up window"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 8199
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :goto_3a
    return-object v2

    .line 8188
    :cond_3b
    if-eqz p1, :cond_7b

    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    if-eq v2, p1, :cond_7b

    .line 8189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8192
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_72

    .line 8193
    throw v0

    .line 8195
    :cond_72
    const-string v2, "WindowManager"

    const-string v2, "Failed looking up window"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 8196
    goto :goto_3a

    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_7b
    move-object v2, v1

    .line 8199
    goto :goto_3a
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;
    .registers 5
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    .line 8171
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method
