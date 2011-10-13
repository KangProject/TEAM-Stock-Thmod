.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$ScaleDetectorListener;,
        Landroid/webkit/WebView$DragTracker;,
        Landroid/webkit/WebView$DragTrackerHandler;,
        Landroid/webkit/WebView$PostScale;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$ExtendedZoomControls;
    }
.end annotation


# static fields
.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field private static final DEBUG_DRAG_TRACKER:Z = false

.field private static DEFAULT_MAX_ZOOM_SCALE:F = 0.0f

.field private static DEFAULT_MIN_ZOOM_SCALE:F = 0.0f

.field static DEFAULT_SCALE_PERCENT:I = 0x0

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x320

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field static final FIND_AGAIN:I = 0x7e

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final IMMEDIATE_REPAINT_MSG_ID:I = 0x7b

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x81

.field private static final LAST_PRIVATE_MSG_ID:I = 0xa

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MAX_SLOPE_FOR_DIAG:F = 1.5f

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static final MIN_BREAK_SNAP_CROSS_DISTANCE:I = 0x50

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MIN_SCROLL_AMOUNT_TO_DISABLE_DRAG_TRACKER:I = 0x4

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field static final MOVE_OUT_OF_PLUGIN:I = 0x6e

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NO_LEFTEDGE:I = -0x1

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field private static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field private static final PREVENT_DEFAULT_NO:I = 0x0

.field private static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field private static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field private static final RESUME_WEBCORE_PRIORITY:I = 0x7

.field static final RETURN_LABEL:I = 0x7d

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field static final SCROLL_BY_MSG_ID:I = 0x66

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field static final SET_ROOT_LAYER_MSG_ID:I = 0x7c

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field static final SPAWN_SCROLL_TO_MSG_ID:I = 0x67

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final SYNC_SCROLL_TO_MSG_ID:I = 0x68

.field private static final TAP_TIMEOUT:I = 0xc8

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x32

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x1f4

.field private static final ZOOM_CONTROLS_TIMEOUT:J

.field static mLogEvent:Z

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field static sMaxViewportWidth:I


# instance fields
.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mAutoRedraw:Z

.field private mBackgroundColor:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCurrentTouchInterval:I

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDefaultScale:F

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelayedDeleteRootLayer:Z

.field private mDoubleTapSlopSquare:I

.field mDragFromTextInput:Z

.field private mDragTracker:Landroid/webkit/WebView$DragTracker;

.field private mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mDrawSelectionPointer:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowLeft:Landroid/widget/EdgeGlow;

.field private mEdgeGlowRight:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field private mExtendSelection:Z

.field private mFindHeight:I

.field private mFindIsUp:Z

.field private mFocusSizeChanged:Z

.field private mForwardTouchEvents:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGotCenterDown:Z

.field private mGotKeyDown:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mInOverScrollMode:Z

.field mInZoomOverview:Z

.field private mInitialScaleInPercent:I

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInvActualScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mIsPaused:Z

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mListBoxDialog:Landroid/app/AlertDialog;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxZoomScale:F

.field private mMaximumFling:I

.field private mMinLockSnapReverseDistance:I

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mNativeClass:I

.field private mNavSlop:I

.field private mNeedToAdjustWebTextView:Z

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDeltaX:I

.field private mOverscrollDeltaY:I

.field private mOverscrollDistance:I

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPreventDefault:I

.field private mPreviewZoomOnly:Z

.field final mPrivateHandler:Landroid/os/Handler;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionStarted:Z

.field private mShiftIsPressed:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mSupportMultiTouch:Z

.field private mTextGeneration:I

.field mTextWrapScale:F

.field private mTitleBar:Landroid/view/View;

.field private mTitleShadow:Landroid/graphics/drawable/Drawable;

.field private mTouchMode:I

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field private mUserScroll:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field final mViewManager:Landroid/webkit/ViewManager;

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

.field private mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 542
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    .line 654
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 667
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v4

    const-string v1, "SCROLL_BY_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "SPAWN_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v5

    const-string v1, "SYNC_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MOVE_OUT_OF_PLUGIN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "IMMEDIATE_REPAINT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SET_ROOT_LAYER_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 707
    const/16 v0, 0x320

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 735
    const v0, 0x3c23d70a

    sput v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    .line 804
    sput-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 947
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 948
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 956
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 957
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V

    .line 967
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 983
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;

    .line 408
    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 450
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 464
    iput v6, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 480
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 491
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 502
    iput v6, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    .line 511
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 565
    iput-boolean v4, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 566
    iput-boolean v1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 576
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 715
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 718
    iput v1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 724
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 728
    const/16 v0, 0x320

    iput v0, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 738
    iput-boolean v1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 752
    iput-boolean v1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 754
    iput v1, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 772
    iput v1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    .line 773
    iput v1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    .line 807
    iput-wide v2, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 822
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 918
    new-instance v0, Landroid/webkit/WebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 3836
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 3837
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 3838
    iput v1, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 3839
    iput v1, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 4136
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5712
    iput-wide v2, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 5713
    iput-wide v2, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5714
    iput v5, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 5715
    iput v5, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 5716
    iput v1, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 5717
    iput v1, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 5718
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 5719
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 5720
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5721
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5730
    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5731
    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5732
    iput-boolean v1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 5733
    iput-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5734
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5735
    iput-wide v2, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 5736
    iput-wide v2, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 5742
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 984
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 986
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 987
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    .line 988
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 989
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 990
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    .line 992
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 993
    return-void
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2268
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 2269
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$10000(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    return-void
.end method

.method static synthetic access$10502(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$10602(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$10700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$11100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11400(Landroid/webkit/WebView;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$11402(Landroid/webkit/WebView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-object p1, p0, Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return p1
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mAnchorX:I

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$2202(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return p1
.end method

.method static synthetic access$2300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$2402(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mAnchorY:I

    return p1
.end method

.method static synthetic access$2500(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2502(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return p1
.end method

.method static synthetic access$2600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$2702(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return p1
.end method

.method static synthetic access$2800()F
    .locals 1

    .prologue
    .line 308
    sget v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3002(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3102(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/webkit/WebView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 308
    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebView;FFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600()J
    .locals 2

    .prologue
    .line 308
    sget-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$3700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return v0
.end method

.method static synthetic access$3702(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return p1
.end method

.method static synthetic access$3800(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return v0
.end method

.method static synthetic access$3802(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return p1
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$4002(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return p1
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;IIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/webkit/WebView;->mUserScroll:Z

    return v0
.end method

.method static synthetic access$5002(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    return p1
.end method

.method static synthetic access$5100(Landroid/webkit/WebView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return v0
.end method

.method static synthetic access$5402(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return p1
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetRootLayer(I)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    return v0
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mFindHeight:I

    return v0
.end method

.method static synthetic access$6100(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    return v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    return v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mInvActualScale:F

    return v0
.end method

.method static synthetic access$6702(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    return p1
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeCreate(I)V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebView;IIZJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 308
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$7502(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$7602(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$7702(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$7802(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$7902(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$8002(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$8100(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$8200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$8300(Landroid/webkit/WebView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$8600(Landroid/webkit/WebView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->doDoubleTap()V

    return-void
.end method

.method static synthetic access$9600(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$9700(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$9802(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$9900(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 308
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 2417
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 2419
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2424
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2425
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2426
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2427
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2434
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2435
    .local v0, ri:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 2437
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 2442
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 2443
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 2444
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 2445
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2407
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2408
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 2409
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2410
    iget-boolean v1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v1, :cond_0

    .line 2411
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2413
    :cond_0
    return-void
.end method

.method private cancelTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 5680
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_0

    .line 5681
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 5686
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 5687
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5688
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5692
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    .line 5693
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5694
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5695
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5696
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5699
    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_3

    .line 5700
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 5701
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5703
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5704
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5705
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5706
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5707
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5708
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5709
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 5710
    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "removeEvents"

    .prologue
    const/16 v2, 0x8d

    .line 5572
    invoke-direct {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5573
    if-eqz p3, :cond_0

    .line 5574
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5576
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5577
    .local v0, ted:Landroid/webkit/WebViewCore$TouchEventData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5578
    iput p2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5579
    const/4 v1, 0x3

    iput v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5580
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5581
    const/4 v1, 0x4

    iput v1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5583
    .end local v0           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1
    return-void
.end method

.method private centerFitRect(IIII)V
    .locals 22
    .parameter "docX"
    .parameter "docY"
    .parameter "docWidth"
    .parameter "docHeight"

    .prologue
    .line 6418
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v17

    .line 6419
    .local v17, viewWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    .line 6420
    .local v16, viewHeight:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 6422
    .local v15, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v18, v0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_1

    .line 6423
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v15, v0

    .line 6427
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 6428
    div-int/lit8 v18, p3, 0x2

    add-int v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v18

    div-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, p4, 0x2

    add-int v19, v19, p2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v19

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 6461
    :goto_1
    return-void

    .line 6424
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v18, v0

    cmpl-float v18, v15, v18

    if-lez v18, :cond_0

    .line 6425
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v15, v0

    goto :goto_0

    .line 6432
    :cond_2
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 6433
    .local v9, oldScreenX:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v13, v18, v15

    .line 6434
    .local v13, rectViewX:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v12, v18, v15

    .line 6435
    .local v12, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v6, v18, v15

    .line 6436
    .local v6, newMaxWidth:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v7, v18, v19

    .line 6438
    .local v7, newScreenX:F
    cmpl-float v18, v7, v13

    if-lez v18, :cond_5

    .line 6439
    move v7, v13

    .line 6443
    :cond_3
    :goto_2
    mul-float v18, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6445
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v10, v18, v19

    .line 6447
    .local v10, oldScreenY:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 6448
    .local v14, rectViewY:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v11, v18, v15

    .line 6449
    .local v11, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v18, v19

    .line 6450
    .local v5, newMaxHeight:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 6452
    .local v8, newScreenY:F
    cmpl-float v18, v8, v14

    if-lez v18, :cond_6

    .line 6453
    move v8, v14

    .line 6457
    :cond_4
    :goto_3
    mul-float v18, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6459
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto/16 :goto_1

    .line 6440
    .end local v5           #newMaxHeight:F
    .end local v8           #newScreenY:F
    .end local v10           #oldScreenY:F
    .end local v11           #rectViewHeight:F
    .end local v14           #rectViewY:F
    :cond_5
    sub-float v18, v6, v13

    sub-float v18, v18, v12

    cmpl-float v18, v7, v18

    if-lez v18, :cond_3

    .line 6441
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v6, v13

    sub-float v7, v18, v19

    goto/16 :goto_2

    .line 6454
    .restart local v5       #newMaxHeight:F
    .restart local v8       #newScreenY:F
    .restart local v10       #oldScreenY:F
    .restart local v11       #rectViewHeight:F
    .restart local v14       #rectViewY:F
    :cond_6
    sub-float v18, v5, v14

    sub-float v18, v18, v11

    cmpl-float v18, v8, v18

    if-lez v18, :cond_4

    .line 6455
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v5, v14

    sub-float v8, v18, v19

    goto :goto_3
.end method

.method private clearHelpers()V
    .locals 1

    .prologue
    .line 1301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1302
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 1303
    return-void
.end method

.method private clearTextEntry(Z)V
    .locals 1
    .parameter "disableFocusController"

    .prologue
    .line 1920
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 1922
    if-eqz p1, :cond_0

    .line 1923
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1926
    :cond_0
    return-void
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 3047
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3048
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 3049
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeMaxScrollX()I
    .locals 2

    .prologue
    .line 6007
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeMaxScrollY()I
    .locals 2

    .prologue
    .line 6011
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 2500
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 2501
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2508
    :goto_0
    return v0

    .line 2502
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2505
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_0

    .line 2508
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    .prologue
    .line 2534
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 2535
    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2542
    :goto_0
    return v0

    .line 2536
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 2539
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0

    .line 2542
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 3227
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3246
    :cond_0
    :goto_0
    return-void

    .line 3231
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 3232
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 3234
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 3236
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 3237
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 3239
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 3244
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 2219
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;
    .locals 3

    .prologue
    .line 6183
    new-instance v0, Landroid/webkit/WebView$ExtendedZoomControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6185
    .local v0, zoomControls:Landroid/webkit/WebView$ExtendedZoomControls;
    new-instance v1, Landroid/webkit/WebView$9;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 6194
    new-instance v1, Landroid/webkit/WebView$10;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$10;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 6203
    return-object v0
.end method

.method private didUpdateTextViewBounds(Z)Z
    .locals 9
    .parameter "allowIntersect"

    .prologue
    const/4 v8, 0x0

    .line 3674
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3675
    .local v0, contentBounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3676
    .local v1, vBox:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3677
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3681
    if-eqz p1, :cond_1

    invoke-static {v2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3683
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 3685
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 3688
    const/4 v3, 0x1

    .line 3696
    :goto_0
    return v3

    .line 3681
    :cond_1
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3695
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->remove()V

    move v3, v8

    .line 3696
    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1354
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 1355
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .locals 6
    .parameter "isTextView"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3915
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3919
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v1, v5

    .line 3920
    .local v1, zoom:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3921
    iput-boolean v4, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 3922
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 3923
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 3925
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v2, v4, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 3927
    :cond_0
    if-eqz p1, :cond_3

    .line 3928
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 3929
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3930
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3931
    if-eqz v1, :cond_1

    .line 3932
    invoke-direct {p0, v5}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    .line 3943
    :cond_1
    :goto_1
    return-void

    .end local v1           #zoom:Z
    :cond_2
    move v1, v4

    .line 3919
    goto :goto_0

    .line 3942
    .restart local v1       #zoom:Z
    :cond_3
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method private doDoubleTap()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 6496
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v7

    if-nez v7, :cond_1

    .line 6561
    :cond_0
    :goto_0
    return-void

    .line 6499
    :cond_1
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6500
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6501
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6502
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6503
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 6504
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v11}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 6506
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6507
    iget-object v7, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v9, p0, Landroid/webkit/WebView;->mAnchorY:I

    invoke-virtual {v7, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v3

    .line 6508
    .local v3, plugin:Landroid/webkit/ViewManager$ChildView;
    if-eqz v3, :cond_4

    .line 6509
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6510
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6512
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    iput v11, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 6513
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {p0, v7, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto :goto_0

    .line 6516
    :cond_3
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6517
    iget v7, v3, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v8, v3, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v9, v3, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v10, v3, Landroid/webkit/ViewManager$ChildView;->height:I

    invoke-direct {p0, v7, v8, v9, v10}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    goto :goto_0

    .line 6521
    :cond_4
    const/4 v6, 0x0

    .line 6522
    .local v6, zoomToDefault:Z
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_7

    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    .line 6524
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v10, v10}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 6525
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 6526
    .local v2, overviewScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    .line 6527
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6542
    .end local v2           #overviewScale:F
    :cond_5
    :goto_1
    if-eqz v6, :cond_0

    .line 6543
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6544
    iget v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v8, v9}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    .line 6545
    .local v0, left:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_6

    .line 6547
    if-ge v0, v12, :cond_b

    move v7, v11

    :goto_2
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v5, v7, v8

    .line 6551
    .local v5, viewLeft:I
    if-lez v5, :cond_c

    .line 6552
    int-to-float v7, v5

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6559
    .end local v5           #viewLeft:I
    :cond_6
    :goto_3
    iget v7, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v7, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto/16 :goto_0

    .line 6529
    .end local v0           #left:I
    :cond_7
    iget-boolean v7, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v7, :cond_a

    .line 6530
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 6531
    .local v1, newScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_9

    .line 6532
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6534
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_8

    iput v11, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 6535
    :cond_8
    invoke-direct {p0, v1, v10}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    goto :goto_1

    .line 6536
    :cond_9
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    .line 6537
    const/4 v6, 0x1

    goto :goto_1

    .line 6540
    .end local v1           #newScale:F
    :cond_a
    const/4 v6, 0x1

    goto :goto_1

    .line 6547
    .restart local v0       #left:I
    :cond_b
    sub-int v7, v0, v12

    goto :goto_2

    .line 6555
    .restart local v5       #viewLeft:I
    :cond_c
    invoke-virtual {p0, v5, v11}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 6556
    const/4 v7, 0x0

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    goto :goto_3
.end method

.method private doDrag(II)V
    .locals 12
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 5623
    or-int v0, p1, p2

    if-eqz v0, :cond_2

    .line 5624
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 5625
    .local v3, oldX:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 5626
    .local v4, oldY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 5627
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 5629
    .local v6, rangeY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_0

    .line 5631
    iput p1, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 5632
    iput p2, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 5635
    :cond_0
    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 5638
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5641
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5644
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5645
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    move v10, v9

    .line 5646
    .local v10, showPlusMinus:Z
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v0, :cond_3

    if-eqz v10, :cond_3

    .line 5647
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/webkit/WebView$ExtendedZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 5648
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5652
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v7, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5656
    .end local v10           #showPlusMinus:Z
    :cond_3
    return-void

    :cond_4
    move v10, v11

    .line 5645
    goto :goto_0

    .line 5650
    .restart local v10       #showPlusMinus:Z
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView$ExtendedZoomControls;->show(ZZ)V

    goto :goto_1
.end method

.method private doFling()V
    .locals 19

    .prologue
    .line 6022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    if-nez v2, :cond_1

    .line 6107
    :cond_0
    :goto_0
    return-void

    .line 6025
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v8

    .line 6026
    .local v8, maxX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v10

    .line 6028
    .local v10, maxY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaximumFling:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    move v0, v2

    float-to-int v0, v0

    move/from16 v17, v0

    .line 6030
    .local v17, vx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    move v0, v2

    float-to-int v0, v0

    move/from16 v18, v0

    .line 6032
    .local v18, vy:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v2, v0

    if-eqz v2, :cond_2

    .line 6033
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v2, v0

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 6034
    const/16 v18, 0x0

    .line 6041
    :cond_2
    :goto_1
    mul-int/lit8 v2, v17, 0x3

    div-int/lit8 v17, v2, 0x4

    .line 6042
    mul-int/lit8 v2, v18, 0x3

    div-int/lit8 v18, v2, 0x4

    .line 6044
    if-nez v8, :cond_3

    if-eqz v18, :cond_4

    :cond_3
    if-nez v10, :cond_6

    if-nez v17, :cond_6

    .line 6045
    :cond_4
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 6046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v2, v0

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v4, v0

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    .end local v8           #maxX:I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6049
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 6036
    .restart local v8       #maxX:I
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 6053
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v14

    .line 6054
    .local v14, currentVelocity:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v2, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-lez v2, :cond_8

    .line 6055
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v2, v0

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v4, v0

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v4, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-float v15, v2

    .line 6057
    .local v15, deltaR:F
    const v13, 0x40c90fdb

    .line 6058
    .local v13, circle:F
    const v2, 0x40b4f4ab

    cmpl-float v2, v15, v2

    if-gtz v2, :cond_7

    const v2, 0x3f20d97c

    cmpg-float v2, v15, v2

    if-gez v2, :cond_8

    .line 6059
    :cond_7
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v3, v0

    mul-float/2addr v3, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v4, v0

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    float-to-int v0, v0

    move/from16 v17, v0

    .line 6060
    move/from16 v0, v18

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v3, v0

    mul-float/2addr v3, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v4, v0

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    move v0, v2

    float-to-int v0, v0

    move/from16 v18, v0

    .line 6076
    .end local v13           #circle:F
    .end local v15           #deltaR:F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v2, v0

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v2, v0

    if-ne v2, v8, :cond_a

    :cond_9
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 6077
    const/16 v17, 0x0

    .line 6079
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v2, v0

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v2, v0

    if-ne v2, v10, :cond_c

    :cond_b
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 6080
    const/16 v18, 0x0

    .line 6083
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, v0

    if-ge v2, v3, :cond_10

    .line 6084
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    neg-int v3, v3

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    add-int/2addr v3, v8

    if-ne v2, v3, :cond_e

    .line 6085
    :cond_d
    const/16 v17, 0x0

    .line 6087
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    neg-int v3, v3

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    add-int/2addr v3, v10

    if-ne v2, v3, :cond_10

    .line 6088
    :cond_f
    const/16 v18, 0x0

    .line 6092
    :cond_10
    move/from16 v0, v17

    int-to-float v0, v0

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelX:F

    .line 6093
    move/from16 v0, v18

    int-to-float v0, v0

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelY:F

    .line 6094
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v2, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 6097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v4, v0

    move/from16 v0, v17

    neg-int v0, v0

    move v5, v0

    move/from16 v0, v18

    neg-int v0, v0

    move v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-nez v8, :cond_11

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v12, v0

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 6104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v16

    .line 6105
    .local v16, time:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 6106
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 6097
    .end local v16           #time:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v11, v0

    goto :goto_2
.end method

.method private doMotionUp(II)V
    .locals 3
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 6376
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6377
    const v0, 0x11206

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6379
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6380
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 6382
    :cond_1
    return-void
.end method

.method private doShortPress()V
    .locals 5

    .prologue
    .line 6349
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    .line 6373
    :cond_0
    :goto_0
    return-void

    .line 6352
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 6355
    const/4 v3, 0x7

    iput v3, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6356
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6358
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6359
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6360
    .local v1, contentY:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6361
    new-instance v2, Landroid/webkit/WebViewCore$MotionUpData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$MotionUpData;-><init>()V

    .line 6363
    .local v2, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitFramePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    .line 6364
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    .line 6365
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    .line 6366
    iput v0, v2, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    .line 6367
    iput v1, v2, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    .line 6368
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x92

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 6371
    .end local v2           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0
.end method

.method private doTrackball(J)V
    .locals 26
    .parameter "time"

    .prologue
    .line 5917
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    move-wide v10, v0

    sub-long/2addr v8, v10

    long-to-int v13, v8

    .line 5918
    .local v13, elapsed:I
    if-nez v13, :cond_0

    .line 5919
    const/16 v13, 0xc8

    .line 5921
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v23, v5, v6

    .line 5922
    .local v23, xRate:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v25, v5, v6

    .line 5923
    .local v25, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    .line 5924
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    .line 5925
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 5926
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 5930
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionX()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectX:I

    .line 5931
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionY()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectY:I

    .line 5932
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelection:Z

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5933
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 5935
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 5937
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 6004
    :cond_2
    :goto_0
    return-void

    .line 5940
    :cond_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 5941
    .local v11, ax:F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 5942
    .local v12, ay:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 5950
    .local v16, maxA:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move v5, v0

    sub-int v21, v5, v20

    .line 5951
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move v5, v0

    sub-int v14, v5, v19

    .line 5952
    .local v14, height:I
    if-gez v21, :cond_4

    const/16 v21, 0x0

    .line 5953
    :cond_4
    if-gez v14, :cond_5

    const/4 v14, 0x0

    .line 5954
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 5955
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 5956
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 5957
    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v0, v0

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5958
    .local v7, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    .line 5959
    .local v17, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v18, v0

    .line 5960
    .local v18, oldScrollY:I
    if-lez v7, :cond_b

    .line 5961
    cmpg-float v5, v11, v12

    if-gez v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    const/16 v5, 0x13

    move v6, v5

    .line 5965
    .local v6, selectKeyCode:I
    :goto_1
    const/16 v5, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 5972
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_10

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 5973
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v7, :cond_9

    .line 5974
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 5973
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 5961
    .end local v6           #selectKeyCode:I
    .end local v15           #i:I
    :cond_6
    const/16 v5, 0x14

    move v6, v5

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    const/16 v5, 0x15

    move v6, v5

    goto :goto_1

    :cond_8
    const/16 v5, 0x16

    move v6, v5

    goto :goto_1

    .line 5976
    .restart local v6       #selectKeyCode:I
    .restart local v15       #i:I
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 5980
    .end local v15           #i:I
    :cond_a
    :goto_3
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 5982
    .end local v6           #selectKeyCode:I
    :cond_b
    const/4 v5, 0x5

    if-lt v7, v5, :cond_2

    .line 5983
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v22

    .line 5984
    .local v22, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v24

    .line 5993
    .local v24, yMove:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v5, v0

    sub-int v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_c

    .line 5994
    const/16 v22, 0x0

    .line 5996
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v5, v0

    sub-int v5, v5, v18

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_d

    .line 5997
    const/16 v24, 0x0

    .line 5999
    :cond_d
    if-nez v22, :cond_e

    if-eqz v24, :cond_f

    .line 6000
    :cond_e
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 6002
    :cond_f
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_0

    .line 5977
    .end local v22           #xMove:I
    .end local v24           #yMove:I
    .restart local v6       #selectKeyCode:I
    :cond_10
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5978
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_3
.end method

.method private domChangedFocus()V
    .locals 2

    .prologue
    .line 2035
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2038
    :cond_0
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3465
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    if-eqz v1, :cond_2

    :cond_0
    move v1, v4

    :goto_1
    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 3468
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 3469
    return-void

    :cond_1
    move v0, v3

    .line 3465
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .locals 21
    .parameter "canvas"
    .parameter "color"
    .parameter "drawCursorRing"

    .prologue
    .line 3712
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 3713
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 3833
    :cond_0
    :goto_0
    return-void

    .line 3718
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_d

    const/16 v16, 0x1

    move/from16 v7, v16

    .line 3719
    .local v7, animateZoom:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    :cond_4
    const/16 v16, 0x1

    move/from16 v6, v16

    .line 3724
    .local v6, animateScroll:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 3725
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 3726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 3727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x9

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 3728
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 3730
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v16, v0

    if-nez v16, :cond_6

    .line 3731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x64

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3733
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 3736
    :cond_6
    if-eqz v7, :cond_11

    .line 3738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mZoomStart:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v9, v0

    .line 3739
    .local v9, interval:I
    const/16 v16, 0x1f4

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    .line 3740
    move v0, v9

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43fa

    div-float v10, v16, v17

    .line 3741
    .local v10, ratio:F
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v18, v18, v10

    add-float v17, v17, v18

    div-float v15, v16, v17

    .line 3743
    .local v15, zoomScale:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3763
    .end local v10           #ratio:F
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v16, v0

    mul-float v11, v15, v16

    .line 3764
    .local v11, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollX:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    add-float v16, v16, v17

    mul-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 3766
    .local v13, tx:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    add-int v13, v16, v17

    .line 3768
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v12

    .line 3769
    .local v12, titleHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move v0, v12

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    mul-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v17, v0

    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 3772
    .local v14, ty:I
    if-gt v14, v12, :cond_10

    const/16 v16, 0x0

    move v0, v14

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    :goto_4
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v17, v0

    add-int v14, v16, v17

    .line 3775
    move v0, v13

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3776
    move-object/from16 v0, p1

    move v1, v15

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3777
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_8

    .line 3781
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 3784
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 3792
    .end local v9           #interval:I
    .end local v11           #scale:F
    .end local v12           #titleHeight:I
    .end local v13           #tx:I
    .end local v14           #ty:I
    .end local v15           #zoomScale:F
    :cond_8
    :goto_5
    const/4 v5, 0x0

    .line 3795
    .local v5, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v16, v0

    if-eqz v16, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 3796
    const/4 v5, 0x1

    .line 3799
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3801
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v16, v0

    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    if-eqz v5, :cond_12

    :cond_a
    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 3804
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 3806
    const/4 v8, 0x0

    .line 3807
    .local v8, extras:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13

    .line 3808
    const/4 v8, 0x1

    .line 3817
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->drawExtras(Landroid/graphics/Canvas;IZ)V

    .line 3819
    const/16 v16, 0x3

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 3820
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 3821
    const/16 v16, 0x5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3824
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 3825
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 3829
    if-nez v7, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 3830
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    goto/16 :goto_0

    .line 3718
    .end local v5           #UIAnimationsRunning:Z
    .end local v6           #animateScroll:Z
    .end local v7           #animateZoom:Z
    .end local v8           #extras:I
    :cond_d
    const/16 v16, 0x0

    move/from16 v7, v16

    goto/16 :goto_1

    .line 3719
    .restart local v7       #animateZoom:Z
    :cond_e
    const/16 v16, 0x0

    move/from16 v6, v16

    goto/16 :goto_2

    .line 3745
    .restart local v6       #animateScroll:Z
    .restart local v9       #interval:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move v15, v0

    .line 3747
    .restart local v15       #zoomScale:F
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScale:F

    .line 3748
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 3750
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3751
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 3752
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 3753
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 3757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    goto/16 :goto_3

    .line 3772
    .restart local v11       #scale:F
    .restart local v12       #titleHeight:I
    .restart local v13       #tx:I
    .restart local v14       #ty:I
    :cond_10
    sub-int v16, v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-static/range {v16 .. v18}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v16

    add-int v16, v16, v12

    goto/16 :goto_4

    .line 3789
    .end local v9           #interval:I
    .end local v11           #scale:F
    .end local v12           #titleHeight:I
    .end local v13           #tx:I
    .end local v14           #ty:I
    .end local v15           #zoomScale:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_5

    .line 3801
    .restart local v5       #UIAnimationsRunning:Z
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 3809
    .restart local v8       #extras:I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 3810
    const/4 v8, 0x2

    .line 3811
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectY:I

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->nativeSetSelectionPointer(ZFII)V

    goto/16 :goto_7

    .line 3814
    :cond_14
    if-eqz p3, :cond_b

    .line 3815
    const/4 v8, 0x3

    goto/16 :goto_7
.end method

.method private drawEdgeGlows(Landroid/graphics/Canvas;)Z
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 3567
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3568
    .local v3, scrollX:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3569
    .local v4, scrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    .line 3570
    .local v5, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 3572
    .local v0, height:I
    const/4 v1, 0x0

    .line 3573
    .local v1, invalidateForGlow:Z
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3576
    .local v2, restoreCount:I
    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3577
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {v6, v7, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3578
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3579
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3581
    .end local v2           #restoreCount:I
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3584
    .restart local v2       #restoreCount:I
    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3585
    const/high16 v6, 0x4334

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3586
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {v6, v7, v0}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3587
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3588
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3590
    .end local v2           #restoreCount:I
    :cond_1
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3591
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3593
    .restart local v2       #restoreCount:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3594
    neg-int v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x3fc0

    mul-float/2addr v6, v7

    int-to-float v7, v4

    sub-float/2addr v6, v7

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3595
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7, v5}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3596
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3597
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3599
    .end local v2           #restoreCount:I
    :cond_2
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3600
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 3602
    .restart local v2       #restoreCount:I
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3603
    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    int-to-float v6, v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v5

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3605
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual {v6, v7, v5}, Landroid/widget/EdgeGlow;->setSize(II)V

    .line 3606
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeGlow;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3607
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3609
    .end local v2           #restoreCount:I
    :cond_3
    return v1
.end method

.method private drawExtras(Landroid/graphics/Canvas;IZ)V
    .locals 1
    .parameter "canvas"
    .parameter "extras"
    .parameter "animationsRunning"

    .prologue
    .line 3703
    if-eqz p3, :cond_0

    .line 3704
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 3706
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeDrawExtras(Landroid/graphics/Canvas;I)V

    .line 3707
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 3708
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1346
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 1347
    return-void
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 1822
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 1823
    .local v0, finalY:I
    add-int v2, v0, p1

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 1824
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    move v2, v3

    .line 1827
    :goto_0
    return v2

    .line 1825
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 1826
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v3, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 1827
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 2912
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 2938
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3424
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 7706
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 7707
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 7714
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    .line 7709
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7710
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 7711
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 7719
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 7720
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 7729
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 7722
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7723
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 7724
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private getTitleHeight()I
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 1232
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1233
    .local v0, height:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 1234
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1236
    :cond_0
    return v0
.end method

.method private getVisibleTitleHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1219
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 1814
    if-eqz p1, :cond_0

    .line 1815
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1816
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6a

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1819
    :cond_0
    return-void

    .line 1816
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 3947
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3950
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3951
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .locals 1
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    .line 5075
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inEditingMode()Z
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 5086
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1027
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1028
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1029
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1030
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1031
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1033
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1034
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 1035
    .local v2, slop:I
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 1036
    iput v2, p0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    .line 1037
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 1038
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    .line 1039
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1042
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1044
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1045
    iput v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1046
    iput v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1047
    const/high16 v3, 0x3f80

    div-float/2addr v3, v1

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1048
    iput v1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1049
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1050
    const/high16 v3, 0x3e80

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1051
    sget v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1052
    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1053
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 1054
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    .line 1055
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 1056
    return-void
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 2261
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    .line 2262
    return-void
.end method

.method private isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z
    .locals 6
    .parameter "view"

    .prologue
    .line 6389
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    .line 6390
    .local v2, viewWidth:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    .line 6391
    .local v1, viewHeight:I
    int-to-float v3, v2

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 6393
    .local v0, scale:F
    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 6394
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6398
    :cond_0
    :goto_0
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 6399
    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v1

    if-gt v3, v4, :cond_2

    .line 6405
    const/4 v3, 0x1

    .line 6408
    :goto_1
    return v3

    .line 6395
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 6396
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_0

    .line 6408
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 5901
    packed-switch p1, :pswitch_data_0

    .line 5911
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5903
    :pswitch_0
    const/4 v0, 0x2

    .line 5909
    :goto_0
    return v0

    .line 5905
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 5907
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 5909
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 5901
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPluginHandleNavKey(IJZ)V
    .locals 13
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"

    .prologue
    .line 7746
    if-eqz p4, :cond_0

    .line 7747
    const/4 v5, 0x0

    .line 7748
    .local v5, keyEventAction:I
    const/16 v12, 0x67

    .line 7749
    .local v12, eventHubAction:I
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 7754
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    or-int/lit8 v1, v1, 0x0

    or-int/lit8 v8, v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 7759
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7760
    return-void

    .line 7751
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    .end local v12           #eventHubAction:I
    :cond_0
    const/4 v5, 0x1

    .line 7752
    .restart local v5       #keyEventAction:I
    const/16 v12, 0x68

    .restart local v12       #eventHubAction:I
    goto :goto_0

    .line 7754
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCreate(I)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDrawExtras(Landroid/graphics/Canvas;I)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations()Z
.end method

.method private native nativeExtendSelection(II)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindIndex()I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateTextSize()I
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBlockLeftEdge(IIF)I
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeHitSelection(II)Z
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(II)V
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRecordButtons(ZZZ)V
.end method

.method private native nativeResetSelection()V
.end method

.method private native nativeSelectAll()V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSelectionX()I
.end method

.method private native nativeSelectionY()I
.end method

.method private native nativeSetExtendSelection()V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetFollowedLink(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetRootLayer(I)V
.end method

.method private native nativeSetSelectionPointer(ZFII)V
.end method

.method private native nativeSetSelectionRegion(Z)V
.end method

.method private native nativeStartSelection(II)Z
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeWordSelection(II)Z
.end method

.method private navHandledKey(IIZJ)Z
    .locals 11
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 7765
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_0

    .line 7766
    const/4 v8, 0x0

    .line 7814
    :goto_0
    return v8

    .line 7768
    :cond_0
    iput-wide p4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 7769
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    .line 7770
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    move v1, v8

    .line 7777
    .local v1, keyHandled:Z
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v8, :cond_3

    :cond_1
    move v8, v1

    .line 7778
    goto :goto_0

    .line 7770
    .end local v1           #keyHandled:Z
    :cond_2
    const/4 v8, 0x0

    move v1, v8

    goto :goto_1

    .line 7780
    .restart local v1       #keyHandled:Z
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7781
    .local v0, contentCursorRingBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v1

    goto :goto_0

    .line 7782
    :cond_4
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 7783
    .local v6, viewCursorRingBounds:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 7784
    .local v7, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 7785
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7786
    .local v5, outset:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 7787
    .local v3, maxXScroll:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    .line 7788
    .local v4, maxYScroll:I
    neg-int v8, v3

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 7789
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v1

    .line 7790
    goto :goto_0

    .line 7793
    :cond_5
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7795
    .local v2, maxH:I
    if-lez v2, :cond_7

    .line 7796
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 7804
    :cond_6
    :goto_2
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v1

    goto :goto_0

    .line 7798
    :cond_7
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    neg-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 7800
    if-gez v2, :cond_6

    .line 7801
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_2

    .line 7805
    :cond_8
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v1

    .line 7806
    goto/16 :goto_0

    .line 7812
    :cond_9
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 7813
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebView;->mUserScroll:Z

    move v8, v1

    .line 7814
    goto/16 :goto_0
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 6566
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 6567
    return-void
.end method

.method private static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 2082
    if-ge p2, p1, :cond_1

    .line 2084
    const/4 p0, 0x0

    .line 2093
    :cond_0
    :goto_0
    return p0

    .line 2086
    :cond_1
    if-gez p0, :cond_2

    .line 2087
    const/4 p0, 0x0

    goto :goto_0

    .line 2089
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 2090
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 2098
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    move v0, p1

    .line 2099
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_0
.end method

.method private pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 2104
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    move v0, p1

    .line 2105
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3055
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3060
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3061
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 3062
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v3, p1, v0

    .line 3063
    .local v3, dx:I
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v4, p2, v0

    .line 3065
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 3066
    const/4 v0, 0x0

    .line 3078
    :goto_0
    return v0

    .line 3068
    :cond_0
    if-eqz p3, :cond_2

    .line 3070
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 3072
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 3073
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3078
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3070
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 3075
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 3076
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private recordNewContentSize(IIZ)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 2276
    or-int v2, p1, p2

    if-nez v2, :cond_0

    .line 2305
    :goto_0
    return-void

    .line 2281
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v2, p1, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v2, p2, :cond_4

    .line 2283
    :cond_1
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2284
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2287
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v2, :cond_4

    .line 2289
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2290
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2291
    .local v1, oldY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2292
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2293
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_3

    .line 2294
    :cond_2
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2296
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2299
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 2300
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2304
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_4
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 6
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 1495
    const-string v3, "scrollX"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1496
    .local v1, sx:I
    const-string v3, "scrollY"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1497
    .local v2, sy:I
    const-string v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 1498
    .local v0, scale:F
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 1499
    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 1500
    iput v1, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 1501
    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 1502
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 1503
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 1507
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1508
    div-float v3, v4, v0

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1509
    const-string v3, "textwrapScale"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1510
    const-string v3, "overview"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 1511
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 1512
    return-void
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 5873
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 5874
    .local v1, xMove:I
    move v0, v1

    .line 5875
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 5876
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 5877
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 5882
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 5883
    return v1

    .line 5879
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 5880
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 5887
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 5888
    .local v1, yMove:I
    move v0, v1

    .line 5889
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 5890
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 5891
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 5896
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 5897
    return v1

    .line 5893
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 5894
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private sendMotionUp(IIIII)V
    .locals 3
    .parameter "touchGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 7694
    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 7695
    .local v0, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 7696
    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    .line 7697
    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    .line 7698
    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    .line 7699
    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    .line 7700
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7701
    return-void
.end method

.method private sendMoveFocus(II)V
    .locals 4
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 7663
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7665
    return-void
.end method

.method private sendMoveMouse(IIII)V
    .locals 3
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 7669
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7671
    return-void
.end method

.method private sendMoveMouseIfLatest(Z)V
    .locals 3
    .parameter "removeFocus"

    .prologue
    .line 7684
    if-eqz p1, :cond_0

    .line 7685
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 7687
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x88

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7689
    return-void
.end method

.method private sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 2377
    iget-boolean v3, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 2402
    :goto_0
    return-object v3

    .line 2379
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2380
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 2382
    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2383
    new-instance v1, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2384
    .local v1, pos:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x6b

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 2386
    iput-object v2, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 2388
    .end local v1           #pos:Landroid/graphics/Point;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2389
    .local v0, globalRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2399
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x74

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2400
    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    :cond_2
    move-object v3, v2

    .line 2402
    goto :goto_0
.end method

.method private sendViewSizeZoom()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2464
    iget-boolean v4, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v4, :cond_0

    move v4, v6

    .line 2496
    :goto_0
    return v4

    .line 2466
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    .line 2467
    .local v3, viewWidth:I
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2468
    .local v2, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2477
    .local v1, newHeight:I
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v2, v4, :cond_1

    iget-boolean v4, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v4, :cond_1

    .line 2478
    const/4 v1, 0x0

    .line 2481
    :cond_1
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v2, v4, :cond_2

    iget v4, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-eq v1, v4, :cond_4

    .line 2482
    :cond_2
    new-instance v0, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v0}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2483
    .local v0, data:Landroid/webkit/WebView$ViewSizeData;
    iput v2, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2484
    iput v1, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2485
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2486
    iget v4, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2487
    iget v4, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v4, :cond_3

    move v4, v7

    :goto_1
    iput-boolean v4, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2488
    iget v4, p0, Landroid/webkit/WebView;->mAnchorX:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2489
    iget v4, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    .line 2490
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x69

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2491
    iput v2, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 2492
    iput v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2493
    iput v6, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v6, p0, Landroid/webkit/WebView;->mAnchorX:I

    move v4, v7

    .line 2494
    goto :goto_0

    :cond_3
    move v4, v6

    .line 2487
    goto :goto_1

    .end local v0           #data:Landroid/webkit/WebView$ViewSizeData;
    :cond_4
    move v4, v6

    .line 2496
    goto :goto_0
.end method

.method private setActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4543
    if-eqz p1, :cond_2

    .line 4544
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4547
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4548
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4549
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4550
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4551
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4585
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4586
    return-void

    .line 4557
    :cond_1
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_0

    .line 4563
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4574
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4576
    :cond_4
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 4577
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4578
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4579
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 4580
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_5

    .line 4581
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4583
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    goto :goto_0
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 3084
    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 3108
    :goto_0
    return v1

    .line 3091
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    .line 3092
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    .line 3093
    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_3

    .line 3095
    if-eqz p2, :cond_1

    .line 3096
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3097
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3098
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3099
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 3106
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, v2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 3108
    :cond_3
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setContentScrollTo(II)Z
    .locals 6
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3154
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    move v2, v4

    .line 3203
    :goto_0
    return v2

    .line 3164
    :cond_0
    or-int v2, p1, p2

    if-nez v2, :cond_1

    .line 3168
    const/4 v0, 0x0

    .line 3169
    .local v0, vx:I
    const/4 v1, 0x0

    .line 3181
    .local v1, vy:I
    :goto_1
    if-nez p1, :cond_3

    if-ne p2, v5, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 3184
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 3188
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3189
    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    :goto_2
    move v2, v4

    .line 3195
    goto :goto_0

    .line 3171
    .end local v0           #vx:I
    .end local v1           #vy:I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3172
    .restart local v0       #vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .restart local v1       #vy:I
    goto :goto_1

    .line 3191
    :cond_2
    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_2

    .line 3197
    :cond_3
    invoke-direct {p0, v0, v1, v4, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3200
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-eq v2, v0, :cond_4

    if-gez p1, :cond_5

    :cond_4
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v2, v1, :cond_6

    if-ltz p2, :cond_6

    :cond_5
    move v2, v5

    .line 3201
    goto :goto_0

    :cond_6
    move v2, v4

    .line 3203
    goto :goto_0
.end method

.method private setNewZoomScale(FZZ)V
    .locals 10
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"

    .prologue
    const/high16 v9, 0x3f80

    .line 2309
    iget v5, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5

    .line 2310
    iget p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 2312
    iget v5, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 2316
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 2317
    iput p1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 2319
    const/4 v5, 0x0

    iput v5, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2321
    :cond_1
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    .line 2322
    :cond_2
    iget-boolean v5, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v5, :cond_6

    .line 2325
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_3

    .line 2326
    iget-object v5, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v5, v6, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 2328
    :cond_3
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2329
    div-float v5, v9, p1

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2330
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 2370
    :cond_4
    :goto_1
    return-void

    .line 2313
    :cond_5
    iget v5, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    .line 2314
    iget p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_0

    .line 2335
    :cond_6
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2336
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2337
    .local v1, oldY:I
    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float v2, p1, v5

    .line 2338
    .local v2, ratio:F
    int-to-float v5, v0

    mul-float/2addr v5, v2

    sub-float v6, v2, v9

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 2339
    .local v3, sx:F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    sub-float v6, v2, v9

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 2343
    .local v4, sy:F
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_7

    .line 2344
    iget-object v5, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v5, v6, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 2346
    :cond_7
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2347
    div-float v5, v9, p1

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2350
    iget-object v5, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v5}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 2355
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2356
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2359
    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v5, :cond_8

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v5, :cond_9

    .line 2360
    :cond_8
    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2367
    :goto_2
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_1

    .line 2365
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_2
.end method

.method private shouldForwardTouchEvent()Z
    .locals 2

    .prologue
    .line 5080
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sign(F)I
    .locals 2
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 4793
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private spawnContentScrollTo(II)V
    .locals 4
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 3209
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    .line 3217
    :goto_0
    return-void

    .line 3214
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3215
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 3216
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private startDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5598
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 5600
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5601
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v2, :cond_0

    .line 5602
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 5604
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 5605
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v2, v4, :cond_2

    .line 5611
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 5612
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDoubleTapToastCount()I

    move-result v0

    .line 5613
    .local v0, count:I
    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    .line 5614
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 5615
    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v3, 0x10402e4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5620
    .end local v0           #count:I
    :cond_2
    return-void
.end method

.method private startTouch(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 5587
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5588
    iput p2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5589
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5590
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5591
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5592
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    if-eqz v0, :cond_0

    .line 5593
    new-instance v0, Landroid/webkit/WebView$DragTrackerHandler;

    iget-object v1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/webkit/WebView$DragTrackerHandler;-><init>(Landroid/webkit/WebView;FFLandroid/webkit/WebView$DragTracker;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    .line 5595
    :cond_0
    return-void
.end method

.method private stopTouch()V
    .locals 1

    .prologue
    .line 5659
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_0

    .line 5660
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 5665
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 5666
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5667
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5671
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    .line 5672
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5673
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5674
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5675
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 5677
    :cond_2
    return-void
.end method

.method private updateSelection()V
    .locals 7

    .prologue
    .line 6263
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 6272
    :goto_0
    return-void

    .line 6267
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6268
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6269
    .local v1, contentY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v3, v0, v3

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v4, v1, v4

    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6271
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 3
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    .line 7320
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v0, :cond_0

    .line 7323
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    .line 7325
    :cond_0
    return-void
.end method

.method private updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1011
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v0, v5

    .line 1013
    .local v0, canZoomIn:Z
    :goto_1
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v2, :cond_2

    move v1, v5

    .line 1014
    .local v1, canZoomOut:Z
    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 1017
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0           #canZoomIn:Z
    .end local v1           #canZoomOut:Z
    :cond_1
    move v0, v4

    .line 1012
    goto :goto_1

    .restart local v0       #canZoomIn:Z
    :cond_2
    move v1, v4

    .line 1013
    goto :goto_2

    .line 1021
    .restart local v1       #canZoomOut:Z
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1022
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method

.method private updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .locals 6
    .parameter "restoreState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"
    .parameter "updateZoomOverview"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7618
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    .line 7619
    iget-boolean v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    if-eqz v1, :cond_3

    .line 7620
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p3, v1, :cond_2

    .line 7621
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7622
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 7623
    if-eqz p4, :cond_0

    .line 7624
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 7625
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7640
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_0
    :goto_1
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_5

    .line 7641
    sget v1, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 7645
    :goto_2
    return-void

    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_1
    move v1, v3

    .line 7625
    goto :goto_0

    .line 7629
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_2
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7630
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 7633
    :cond_3
    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7634
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 7637
    :cond_4
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 7638
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 7643
    :cond_5
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_2
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 7736
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7737
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2240
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2241
    .local v1, scale:F
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 2242
    .local v0, dy:I
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 2246
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2251
    iget v8, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2252
    .local v8, scale:F
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    .line 2253
    .local v7, dy:I
    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 2258
    return-void
.end method

.method private viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 2154
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 2180
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 2189
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private zoomWithPreview(FZ)Z
    .locals 5
    .parameter "scale"
    .parameter "updateTextWrapScale"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 6110
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 6111
    .local v0, oldScale:F
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 6112
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 6115
    iget v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 6116
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 6119
    :cond_0
    invoke-direct {p0, p1, p2, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 6121
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 6123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 6124
    div-float v1, v3, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 6125
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v3, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 6126
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 6127
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6128
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6129
    const/4 v1, 0x1

    .line 6131
    :goto_0
    return v1

    :cond_1
    move v1, v4

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 3361
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 3362
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 3363
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 3364
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3365
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 3400
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3401
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
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
    .line 3387
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb8

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3388
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1745
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1746
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1747
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1748
    monitor-exit v0

    move v1, v2

    .line 1750
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 1752
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    .line 1750
    goto :goto_1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v3, 0x0

    .line 1791
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1792
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1793
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1794
    monitor-exit v0

    move v2, v3

    .line 1797
    :goto_0
    return v2

    .line 1796
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int v1, v2, p1

    .line 1797
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 1799
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #newIndex:I
    :cond_1
    move v2, v3

    .line 1797
    goto :goto_1
.end method

.method public canGoForward()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1767
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1768
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1769
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1770
    monitor-exit v0

    move v1, v3

    .line 1772
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    move v1, v4

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 1774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v3

    .line 1772
    goto :goto_1
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1904
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->copyContentPicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_0
.end method

.method centerKeyPressOnTextField()V
    .locals 4

    .prologue
    .line 6344
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6346
    return-void
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v3, 0x0

    .line 2791
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6f

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2793
    return-void

    :cond_0
    move v2, v3

    .line 2791
    goto :goto_0
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 2800
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2801
    const/4 v0, 0x0

    .line 2802
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 2804
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 2810
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 2811
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2812
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 2945
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    .line 2946
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 2950
    :goto_0
    return-void

    .line 2948
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    .line 2949
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 2819
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2820
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1888
    iput v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 1889
    iput v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 1890
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1891
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 2530
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 2514
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 2517
    .local v1, range:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2518
    .local v2, scrollX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 2519
    .local v0, overscrollRight:I
    if-gez v2, :cond_1

    .line 2520
    sub-int/2addr v1, v2

    .line 2525
    :cond_0
    :goto_0
    return v1

    .line 2521
    :cond_1
    if-le v2, v0, :cond_0

    .line 2522
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    .line 2994
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2995
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2996
    .local v3, oldX:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2997
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 2998
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 2999
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3001
    if-ne v3, v10, :cond_0

    if-eq v4, v11, :cond_3

    .line 3002
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 3003
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 3004
    .local v6, rangeY:I
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    iget v7, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 3008
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_3

    .line 3009
    if-gtz v6, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 3010
    :cond_1
    if-gez v11, :cond_5

    if-ltz v4, :cond_5

    .line 3011
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3012
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3013
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3023
    :cond_2
    :goto_0
    if-lez v5, :cond_3

    .line 3024
    if-gez v10, :cond_6

    if-ltz v3, :cond_6

    .line 3025
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3026
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3027
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3038
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3039
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3044
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_4
    :goto_2
    return-void

    .line 3015
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #rangeX:I
    .restart local v6       #rangeY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_5
    if-le v11, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 3016
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3017
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3018
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_0

    .line 3029
    :cond_6
    if-le v10, v5, :cond_3

    if-gt v3, v5, :cond_3

    .line 3030
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3031
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3032
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_1

    .line 3042
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 2569
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 2564
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 2548
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    .line 2551
    .local v1, range:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2552
    .local v2, scrollY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    .line 2553
    .local v0, overscrollBottom:I
    if-gez v2, :cond_1

    .line 2554
    sub-int/2addr v1, v2

    .line 2559
    :cond_0
    :goto_0
    return v1

    .line 2555
    :cond_1
    if-le v2, v0, :cond_0

    .line 2556
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 2199
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 2207
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 2215
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 7

    .prologue
    .line 4475
    const/4 v1, 0x0

    .line 4476
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 4477
    .local v3, selection:Ljava/lang/String;
    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 4481
    iget-object v4, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v5, 0x10402f2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 4484
    const/4 v1, 0x1

    .line 4486
    :try_start_0
    const-string v4, "clipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 4488
    .local v0, clip:Landroid/text/IClipboard;
    invoke-interface {v0, v3}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4493
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4494
    return v1

    .line 4489
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 4490
    .local v2, e:Landroid/os/RemoteException;
    const-string/jumbo v4, "webview"

    const-string v5, "Clipboard failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .locals 3

    .prologue
    .line 3869
    new-instance v1, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    .line 3870
    .local v1, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    .line 3871
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 3872
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 3873
    .local v0, position:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 3874
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 3875
    return-object v1
.end method

.method public debugDump()V
    .locals 2

    .prologue
    .line 7828
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 7829
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 7830
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3886
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 3887
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    .line 3889
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3891
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1311
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1312
    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1313
    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1314
    iput-object v2, p0, Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;

    .line 1316
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_1

    .line 1319
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1320
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1322
    monitor-enter p0

    .line 1323
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1324
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1325
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 1326
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1329
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1332
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 1333
    :try_start_1
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1334
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1336
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_1
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_2

    .line 1337
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 1338
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 1340
    :cond_2
    return-void

    .line 1326
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1334
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method dismissZoomControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6464
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_2

    .line 6467
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_0

    .line 6468
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 6470
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    .line 6471
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    .line 6488
    :cond_1
    :goto_0
    return-void

    .line 6475
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 6476
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6477
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_1

    .line 6478
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 6481
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 6482
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6484
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    .line 6485
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 4755
    const/4 v0, 0x1

    .line 4759
    .local v0, dispatch:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4760
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 4761
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 4774
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 4775
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4778
    :goto_1
    return v1

    .line 4763
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    if-nez v1, :cond_3

    .line 4768
    const/4 v0, 0x0

    .line 4770
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 4778
    goto :goto_1
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 3338
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3339
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 2986
    if-nez p1, :cond_0

    .line 2990
    :goto_0
    return-void

    .line 2989
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 3554
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3555
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3556
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3558
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 3448
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 3451
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3453
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 3843
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 7840
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 7841
    return-void
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 4100
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 4101
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 4110
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaa

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4111
    return-void

    :cond_0
    move v2, v3

    .line 4110
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 4120
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xab

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4121
    return-void

    :cond_0
    move v2, v3

    .line 4120
    goto :goto_0
.end method

.method public dumpV8Counters()V
    .locals 2

    .prologue
    .line 4131
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 4132
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 0

    .prologue
    .line 4428
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 4429
    return-void
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 3330
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3331
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 3440
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3442
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3444
    return-void

    .line 3442
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 3
    .parameter "find"

    .prologue
    const/4 v2, 0x0

    .line 2853
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    move v1, v2

    .line 2858
    :goto_0
    return v1

    .line 2854
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 2856
    .local v0, result:I
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2857
    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    move v1, v0

    .line 2858
    goto :goto_0

    .end local v0           #result:I
    :cond_1
    move v0, v2

    .line 2854
    goto :goto_1
.end method

.method public findIndex()I
    .locals 1

    .prologue
    .line 2878
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2879
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFindIndex()I

    move-result v0

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 2842
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 2844
    :goto_0
    return-void

    .line 2843
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 11
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 6016
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 6018
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6019
    return-void
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 2778
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2779
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 2709
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 2717
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getDragTracker()Landroid/webkit/WebView$DragTracker;
    .locals 1

    .prologue
    .line 4982
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2684
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2685
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 10

    .prologue
    const/4 v6, 0x7

    const-string v9, "tel:"

    const-string v8, "mailto:"

    const-string v7, "geo:0,0?q="

    .line 1987
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_0

    .line 1988
    const/4 v5, 0x0

    .line 2029
    :goto_0
    return-object v5

    .line 1991
    :cond_0
    new-instance v2, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 1992
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1993
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1994
    const/16 v5, 0x9

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2015
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    .line 2016
    .local v4, type:I
    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_3

    .line 2019
    :cond_2
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2020
    .local v0, contentX:I
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2021
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2022
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2023
    if-nez v4, :cond_8

    const/4 v5, 0x5

    :goto_2
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2026
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v3           #text:Ljava/lang/String;
    :cond_3
    move-object v5, v2

    .line 2029
    goto :goto_0

    .line 1996
    .end local v4           #type:I
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v3

    .line 1997
    .restart local v3       #text:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1998
    const-string v5, "tel:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1999
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2000
    const-string v5, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2001
    :cond_5
    const-string v5, "mailto:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2002
    const/4 v5, 0x4

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2003
    const-string v5, "mailto:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2004
    :cond_6
    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2005
    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2006
    const-string v5, "geo:0,0?q="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2008
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2009
    invoke-static {v2, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2010
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2023
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v4       #type:I
    :cond_8
    const/16 v5, 0x8

    goto :goto_2
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1297
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2664
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2665
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 2702
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1933
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4501
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const-string v0, ""

    .line 4502
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 3374
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2674
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2675
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2693
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2694
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2651
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2652
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 1228
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    .prologue
    .line 7864
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 2

    .prologue
    .line 1199
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 1200
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 1202
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 3313
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 3294
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 3264
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 6737
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 6

    .prologue
    .line 6215
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v4, :cond_0

    .line 6216
    new-instance v4, Landroid/widget/ZoomButtonsController;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 6217
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-virtual {v4, v5}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 6221
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v4}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v1

    .line 6222
    .local v1, controls:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6223
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 6224
    move-object v0, v3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v0

    .line 6225
    .local v2, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6228
    .end local v1           #controls:Landroid/view/View;
    .end local v2           #frameParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v4
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6150
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6151
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6152
    const/4 v0, 0x0

    .line 6179
    :goto_0
    return-object v0

    .line 6154
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-nez v0, :cond_1

    .line 6155
    invoke-direct {p0}, Landroid/webkit/WebView;->createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    .line 6162
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 6163
    new-instance v0, Landroid/webkit/WebView$8;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 6179
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 1759
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1760
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 1810
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    .line 1811
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 1781
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1782
    return-void
.end method

.method inAnimateZoom()Z
    .locals 2

    .prologue
    .line 3661
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initiateTextFieldDrag(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 6295
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6308
    :goto_0
    return-void

    .line 6298
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 6299
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 6300
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 6301
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6302
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 6303
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6305
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 6306
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6307
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method public invokeZoomPicker()V
    .locals 4

    .prologue
    .line 1954
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1955
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :goto_0
    return-void

    .line 1958
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1959
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1960
    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 1962
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1963
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 2770
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1680
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 1706
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1707
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :goto_0
    return-void

    .line 1710
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1711
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 1712
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1713
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 1714
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 1715
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 1716
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 1717
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1718
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1641
    if-nez p1, :cond_0

    .line 1645
    :goto_0
    return-void

    .line 1644
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1628
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1629
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 1630
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 1631
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 1632
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1633
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1634
    return-void
.end method

.method moveSelection(FF)V
    .locals 12
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v11, -0x10

    const/4 v10, 0x0

    const/16 v9, 0x10

    .line 5837
    iget v7, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v7, :cond_0

    .line 5870
    :goto_0
    return-void

    .line 5839
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 5840
    .local v6, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 5841
    .local v0, height:I
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5842
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5843
    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int v1, v6, v7

    .line 5844
    .local v1, maxX:I
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int v2, v0, v7

    .line 5845
    .local v2, maxY:I
    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v7, v9

    iget v8, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5847
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v7, v9

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5859
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 5860
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ge v7, v8, :cond_1

    move v3, v11

    .line 5863
    .local v3, scrollX:I
    :goto_1
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v8, p0, Landroid/webkit/WebView;->mScrollY:I

    if-ge v7, v8, :cond_3

    move v4, v11

    .line 5866
    .local v4, scrollY:I
    :goto_2
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 5867
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5868
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 5869
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 5860
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_1
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    sub-int v8, v1, v9

    if-le v7, v8, :cond_2

    move v3, v9

    goto :goto_1

    :cond_2
    move v3, v10

    goto :goto_1

    .line 5863
    .restart local v3       #scrollX:I
    :cond_3
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    sub-int v8, v2, v9

    if-le v7, v8, :cond_4

    move v4, v9

    goto :goto_2

    :cond_4
    move v4, v10

    goto :goto_2
.end method

.method native nativeClearCursor()V
.end method

.method native nativeCursorMatchesFocus()Z
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method public notifyFindDialogDismissed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2956
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 2967
    :goto_0
    return-void

    .line 2959
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 2960
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 2961
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 2965
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 2966
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public notifySelectDialogDismissed()V
    .locals 1

    .prologue
    .line 4455
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 4456
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4457
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 4507
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 4508
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4509
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4524
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4531
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 3905
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3906
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3907
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 4513
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 4514
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 4515
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4516
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 4517
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    .line 3474
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3550
    :goto_0
    return-void

    .line 3481
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_1

    .line 3482
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 3486
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 3487
    .local v10, saveCount:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3489
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 3490
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 3491
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10804b7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3494
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3496
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 3497
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3498
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3499
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3502
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v12, 0x0

    .line 3503
    .local v12, top:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v9

    .line 3504
    .local v9, right:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v12, v0

    .line 3506
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3507
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3508
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    neg-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v0, v12, v0

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v0, v9, v0

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 3510
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 3511
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3513
    const/high16 v1, -0x4080

    const/4 v0, 0x1

    sub-int v0, v12, v0

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3515
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v12, v9, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3517
    .end local v7           #bottom:I
    .end local v9           #right:I
    .end local v12           #top:I
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3518
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3520
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-nez v0, :cond_8

    .line 3521
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 3531
    :cond_5
    :goto_1
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3534
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v11

    .line 3535
    .local v11, titleH:I
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_6

    if-nez v11, :cond_6

    .line 3536
    const/high16 v0, 0x40a0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 3538
    .local v8, height:I
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3540
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3546
    .end local v8           #height:I
    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3547
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->onDrawSubstitute()V

    .line 3549
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    goto/16 :goto_0

    .line 3523
    .end local v11           #titleH:I
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$DragTrackerHandler;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3525
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 3527
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3528
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    goto :goto_1
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2577
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-gez v0, :cond_0

    .line 2578
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr p4, v0

    .line 2580
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2581
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2582
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4620
    if-eqz p1, :cond_1

    .line 4623
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4624
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4625
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4626
    invoke-direct {p0, v2, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4646
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4647
    return-void

    .line 4636
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4637
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 4638
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_2

    .line 4639
    invoke-direct {p0, v1, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4641
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 4643
    :cond_3
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4540
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x13

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4158
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    move v0, v3

    .line 4284
    :goto_0
    return v0

    .line 4174
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    .line 4176
    goto :goto_0

    .line 4179
    :cond_2
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_4

    .line 4181
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4182
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4188
    :cond_4
    :goto_1
    if-lt p1, v4, :cond_d

    if-gt p1, v5, :cond_d

    .line 4190
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4191
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4192
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v0, v2

    .line 4193
    goto :goto_0

    .line 4183
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_4

    .line 4184
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    goto :goto_1

    .line 4195
    :cond_6
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_b

    .line 4196
    const/16 v0, 0x15

    if-ne p1, v0, :cond_7

    move v7, v1

    .line 4198
    .local v7, xRate:I
    :goto_2
    if-ne p1, v4, :cond_9

    move v8, v1

    .line 4200
    .local v8, yRate:I
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 4201
    .local v6, multiplier:I
    mul-int v0, v7, v6

    int-to-float v0, v0

    mul-int v1, v8, v6

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    move v0, v2

    .line 4202
    goto :goto_0

    .line 4196
    .end local v6           #multiplier:I
    .end local v7           #xRate:I
    .end local v8           #yRate:I
    :cond_7
    if-ne p1, v5, :cond_8

    move v7, v2

    goto :goto_2

    :cond_8
    move v7, v3

    goto :goto_2

    .line 4198
    .restart local v7       #xRate:I
    :cond_9
    const/16 v0, 0x14

    if-ne p1, v0, :cond_a

    move v8, v2

    goto :goto_3

    :cond_a
    move v8, v3

    goto :goto_3

    .line 4204
    .end local v7           #xRate:I
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4205
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    move v0, v2

    .line 4206
    goto/16 :goto_0

    :cond_c
    move v0, v3

    .line 4209
    goto/16 :goto_0

    .line 4212
    :cond_d
    const/16 v0, 0x17

    if-ne p1, v0, :cond_11

    .line 4213
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4214
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 4215
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_e

    move v0, v2

    .line 4216
    goto/16 :goto_0

    .line 4218
    :cond_e
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 4219
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4223
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    :goto_4
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    move v0, v2

    .line 4224
    goto/16 :goto_0

    :cond_f
    move v0, v3

    .line 4223
    goto :goto_4

    :cond_10
    move v0, v3

    .line 4227
    goto/16 :goto_0

    .line 4230
    :cond_11
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_12

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_12

    .line 4233
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 4234
    iput-boolean v3, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4237
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4238
    packed-switch p1, :pswitch_data_0

    .line 4256
    :cond_13
    :goto_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4259
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4263
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4265
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4266
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 4267
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 4240
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_5

    .line 4244
    :pswitch_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_14

    move v0, v2

    :goto_6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_5

    :cond_14
    move v0, v3

    goto :goto_6

    .line 4248
    :pswitch_2
    const/16 v0, 0xe

    if-ne p1, v0, :cond_15

    move v0, v2

    :goto_7
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_5

    :cond_15
    move v0, v3

    goto :goto_7

    .line 4251
    :pswitch_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    move v0, v2

    .line 4252
    goto/16 :goto_0

    .line 4269
    :cond_16
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4272
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4273
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4274
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 4275
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 4280
    :cond_17
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4282
    :cond_18
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v0, v2

    .line 4284
    goto/16 :goto_0

    .line 4238
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 4141
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4143
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4144
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4146
    const/4 v0, 0x1

    .line 4148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 4298
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    move v4, v6

    .line 4390
    :goto_0
    return v4

    .line 4303
    :cond_0
    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4304
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v2

    .line 4305
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4307
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4308
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 4309
    goto :goto_0

    .line 4316
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v6

    .line 4317
    goto :goto_0

    .line 4320
    :cond_3
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_4

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_5

    .line 4322
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4323
    iput-boolean v6, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 4330
    :cond_5
    const/16 v4, 0x13

    if-lt p1, v4, :cond_8

    const/16 v4, 0x16

    if-gt p1, v4, :cond_8

    .line 4332
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4333
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v4, v8

    .line 4334
    goto :goto_0

    .line 4324
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4325
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    move v4, v8

    .line 4326
    goto :goto_0

    :cond_7
    move v4, v6

    .line 4338
    goto :goto_0

    .line 4341
    :cond_8
    const/16 v4, 0x17

    if-ne p1, v4, :cond_f

    .line 4343
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4344
    iput-boolean v6, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 4346
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v4, :cond_a

    .line 4347
    iget-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v4, :cond_9

    .line 4348
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 4349
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_1
    move v4, v8

    .line 4355
    goto/16 :goto_0

    .line 4351
    :cond_9
    iput-boolean v8, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4352
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 4353
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 4359
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 4362
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v6

    .line 4363
    goto/16 :goto_0

    .line 4365
    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    .line 4366
    .local v0, data:Landroid/webkit/WebViewCore$CursorData;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x87

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4367
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 4368
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4369
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4370
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 4371
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4372
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_c
    move v4, v8

    .line 4374
    goto/16 :goto_0

    .line 4376
    :cond_d
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 4377
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetFollowedLink(Z)V

    .line 4378
    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 4379
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x76

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_e
    move v4, v8

    .line 4382
    goto/16 :goto_0

    .line 4386
    .end local v0           #data:Landroid/webkit/WebViewCore$CursorData;
    .end local v3           #visibleRect:Landroid/graphics/Rect;
    :cond_f
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v4

    if-nez v4, :cond_10

    .line 4388
    :cond_10
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v8

    .line 4390
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6608
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 6610
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 6611
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 6612
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 6613
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 6615
    .local v7, widthSize:I
    move v4, v3

    .line 6616
    .local v4, measuredHeight:I
    move v5, v7

    .line 6619
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    .line 6620
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 6624
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    .line 6625
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 6626
    move v4, v0

    .line 6627
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    .line 6630
    if-le v4, v3, :cond_0

    .line 6631
    move v4, v3

    .line 6632
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 6638
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_1

    .line 6639
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 6642
    :cond_1
    if-nez v6, :cond_3

    .line 6643
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 6644
    move v5, v1

    .line 6649
    :goto_1
    monitor-enter p0

    .line 6650
    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 6651
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6652
    return-void

    .line 6636
    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_0

    .line 6646
    :cond_3
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_1

    .line 6651
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 10
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 2587
    iput-boolean v9, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 2588
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 2589
    .local v0, maxX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v1

    .line 2590
    .local v1, maxY:I
    if-nez v0, :cond_8

    .line 2592
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 2596
    :cond_0
    :goto_0
    if-ltz p2, :cond_1

    if-le p2, v1, :cond_2

    .line 2597
    :cond_1
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 2600
    :cond_2
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2601
    .local v2, oldX:I
    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2603
    .local v3, oldY:I
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    .line 2607
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    if-ne v3, v6, :cond_7

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v2, v6, :cond_7

    .line 2610
    if-lez v0, :cond_4

    .line 2611
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    add-int v4, v2, v6

    .line 2612
    .local v4, pulledToX:I
    if-gez v4, :cond_a

    .line 2613
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2614
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2615
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2623
    :cond_3
    :goto_1
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 2626
    .end local v4           #pulledToX:I
    :cond_4
    if-gtz v1, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v6

    if-nez v6, :cond_7

    .line 2627
    :cond_5
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    add-int v5, v3, v6

    .line 2628
    .local v5, pulledToY:I
    if-gez v5, :cond_b

    .line 2629
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2630
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2631
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 2639
    :cond_6
    :goto_2
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 2642
    .end local v5           #pulledToY:I
    :cond_7
    return-void

    .line 2593
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    :cond_8
    if-ltz p1, :cond_9

    if-le p1, v0, :cond_0

    .line 2594
    :cond_9
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    goto :goto_0

    .line 2617
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v4       #pulledToX:I
    :cond_a
    if-le v4, v0, :cond_3

    .line 2618
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2619
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2620
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_1

    .line 2633
    .end local v4           #pulledToX:I
    .restart local v5       #pulledToY:I
    :cond_b
    if-le v5, v1, :cond_6

    .line 2634
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 2635
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2636
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_2
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 3117
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3121
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v0, :cond_0

    .line 3123
    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3126
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3128
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2747
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 2748
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 2749
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2751
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 2758
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 2759
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 2760
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2762
    :cond_0
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 8
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const-string/jumbo v7, "username"

    const-string v6, "password"

    const-string v5, "host"

    .line 1098
    const/4 v1, 0x0

    .line 1099
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 1101
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :goto_0
    return v1

    .line 1103
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1105
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1110
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1112
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1117
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10402e3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402ed

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402ee

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402ef

    new-instance v5, Landroid/webkit/WebView$4;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402f0

    new-instance v5, Landroid/webkit/WebView$3;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$2;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1145
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v3, 0x0

    .line 4741
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 4742
    iget-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    .line 4743
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 4746
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 4747
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 4748
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 4751
    .end local v0           #titleHeight:I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v3, 0x0

    .line 4692
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 4694
    iget v2, p0, Landroid/webkit/WebView;->mZoomScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 4696
    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 4697
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 4698
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 4699
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 4705
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 4706
    .local v1, newMaxViewportWidth:I
    sget v2, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v1, v2, :cond_1

    .line 4707
    sput v1, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 4711
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-nez v2, :cond_2

    .line 4716
    const/high16 v2, 0x3f80

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 4719
    iget v2, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    if-lez v2, :cond_2

    .line 4721
    iget v2, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float v0, v2, v3

    .line 4722
    .local v0, initialScale:F
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 4723
    iput v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 4728
    .end local v0           #initialScale:F
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 4736
    new-instance v2, Landroid/webkit/WebView$PostScale;

    if-eq p1, p3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, p0, v3}, Landroid/webkit/WebView$PostScale;-><init>(Landroid/webkit/WebView;Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 4737
    return-void

    .line 4716
    :cond_3
    iget v4, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    goto :goto_0

    .line 4736
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .parameter "ev"

    .prologue
    .line 5091
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5092
    :cond_0
    const/4 v5, 0x0

    .line 5568
    :goto_0
    return v5

    .line 5102
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 5106
    .local v20, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    move v5, v0

    if-eqz v5, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_d

    .line 5107
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    move v5, v0

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v6, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_c

    .line 5108
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5109
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5110
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5111
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    move v5, v0

    if-nez v5, :cond_3

    .line 5112
    const/4 v5, 0x1

    goto :goto_0

    .line 5114
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5117
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v27

    .line 5118
    .local v27, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v28

    .line 5119
    .local v28, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v12, v5, 0xff

    .line 5120
    .local v12, action:I
    const/4 v5, 0x5

    if-ne v12, v5, :cond_9

    .line 5121
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 5122
    const/4 v12, 0x0

    .line 5147
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v27, v5

    if-lez v5, :cond_6

    .line 5148
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v27, v0

    .line 5150
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v28, v5

    if-lez v5, :cond_7

    .line 5151
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v28, v0

    .line 5154
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move v5, v0

    sub-float v22, v5, v27

    .line 5155
    .local v22, fDeltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move v5, v0

    sub-float v23, v5, v28

    .line 5156
    .local v23, fDeltaY:F
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 5157
    .local v17, deltaX:I
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v18, v0

    .line 5158
    .local v18, deltaY:I
    move/from16 v0, v27

    float-to-int v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    .line 5159
    .local v15, contentX:I
    move/from16 v0, v28

    float-to-int v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    .line 5161
    .local v16, contentY:I
    packed-switch v12, :pswitch_data_0

    .line 5568
    :cond_8
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5123
    .end local v15           #contentX:I
    .end local v16           #contentY:I
    .end local v17           #deltaX:I
    .end local v18           #deltaY:I
    .end local v22           #fDeltaX:F
    .end local v23           #fDeltaY:F
    :cond_9
    const/4 v5, 0x6

    if-ne v12, v5, :cond_a

    .line 5125
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5126
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    goto :goto_1

    .line 5127
    :cond_a
    const/4 v5, 0x2

    if-ne v12, v5, :cond_5

    .line 5129
    const/4 v5, 0x0

    cmpg-float v5, v27, v5

    if-ltz v5, :cond_b

    const/4 v5, 0x0

    cmpg-float v5, v28, v5

    if-gez v5, :cond_5

    .line 5130
    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5135
    .end local v12           #action:I
    .end local v27           #x:F
    .end local v28           #y:F
    :cond_c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5138
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .line 5139
    .restart local v12       #action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    .line 5140
    .restart local v27       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    .restart local v28       #y:F
    goto/16 :goto_1

    .line 5163
    .restart local v15       #contentX:I
    .restart local v16       #contentY:I
    .restart local v17       #deltaX:I
    .restart local v18       #deltaY:I
    .restart local v22       #fDeltaX:F
    .restart local v23       #fDeltaY:F
    :pswitch_0
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5164
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_11

    .line 5169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5170
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5171
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5207
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1a

    .line 5209
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5213
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_17

    .line 5214
    :cond_10
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 5221
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 5222
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5223
    .local v26, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5224
    move v0, v15

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5225
    move/from16 v0, v16

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5226
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_19

    .line 5230
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5231
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5232
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5233
    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5173
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 5174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5175
    mul-int v5, v17, v17

    mul-int v6, v18, v18

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    move v6, v0

    if-ge v5, v6, :cond_12

    .line 5176
    const/4 v5, 0x6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_3

    .line 5179
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 5180
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5181
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_5
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_3

    :cond_13
    const/4 v5, 0x0

    goto :goto_5

    .line 5186
    :cond_14
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 5187
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5188
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_6
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 5191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x62

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5193
    sget-boolean v5, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v5, v0

    sub-long v5, v20, v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-gez v5, :cond_15

    .line 5194
    const v5, 0x111d6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v8, v0

    sub-long v8, v20, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5197
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 5198
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5199
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 5203
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3

    .line 5188
    :cond_16
    const/4 v5, 0x0

    goto :goto_6

    .line 5215
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_18

    .line 5216
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 5218
    :cond_18
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 5237
    .restart local v26       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5238
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 5239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v12, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5245
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_2

    .line 5249
    :pswitch_1
    const/16 v24, 0x0

    .line 5250
    .local v24, firstMove:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-nez v5, :cond_1b

    mul-int v5, v17, v17

    mul-int v6, v18, v18

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    move v6, v0

    if-lt v5, v6, :cond_1b

    .line 5252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5254
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 5255
    const/16 v24, 0x1

    .line 5256
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1b

    .line 5257
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5261
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_1e

    if-nez v24, :cond_1c

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-wide v5, v0

    sub-long v5, v20, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    move v7, v0

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1e

    .line 5263
    :cond_1c
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 5264
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5265
    .restart local v26       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5266
    move v0, v15

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5267
    move/from16 v0, v16

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5268
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5269
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5270
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_1d

    .line 5271
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5272
    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 5276
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5277
    if-eqz v24, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 5278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v12, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5283
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x7

    if-eq v5, v6, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    .line 5289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_1f

    .line 5290
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    move v5, v0

    if-eqz v5, :cond_20

    .line 5300
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 5301
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_2

    .line 5305
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_24

    .line 5307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 5310
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_22

    .line 5314
    :cond_21
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_2

    .line 5321
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-nez v5, :cond_23

    .line 5323
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 5324
    .local v13, ax:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 5325
    .local v14, ay:I
    int-to-float v5, v13

    const/high16 v6, 0x3fc0

    int-to-float v7, v14

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_28

    .line 5326
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5327
    if-lez v17, :cond_27

    const/4 v5, 0x1

    :goto_7
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 5334
    .end local v13           #ax:I
    .end local v14           #ay:I
    :cond_23
    :goto_8
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 5335
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5336
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5337
    const/16 v22, 0x0

    .line 5338
    const/16 v23, 0x0

    .line 5339
    const/16 v17, 0x0

    .line 5340
    const/16 v18, 0x0

    .line 5342
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 5345
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    if-eqz v5, :cond_25

    .line 5346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView$DragTrackerHandler;->dragTo(FF)V

    .line 5350
    :cond_25
    const/16 v19, 0x0

    .line 5351
    .local v19, done:Z
    const/16 v25, 0x0

    .line 5352
    .local v25, keepScrollBarsVisible:Z
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2a

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2a

    .line 5353
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5354
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5355
    const/16 v19, 0x1

    move/from16 v25, v19

    .line 5414
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->doDrag(II)V

    .line 5416
    if-eqz v25, :cond_8

    .line 5417
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_26

    .line 5418
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5419
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5422
    :cond_26
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 5426
    if-nez v19, :cond_37

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5327
    .end local v19           #done:Z
    .end local v25           #keepScrollBarsVisible:Z
    .restart local v13       #ax:I
    .restart local v14       #ay:I
    :cond_27
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 5328
    :cond_28
    int-to-float v5, v14

    const/high16 v6, 0x3fc0

    int-to-float v7, v13

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_23

    .line 5329
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5330
    if-lez v18, :cond_29

    const/4 v5, 0x1

    :goto_a
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    goto/16 :goto_8

    :cond_29
    const/4 v5, 0x0

    goto :goto_a

    .line 5357
    .end local v13           #ax:I
    .end local v14           #ay:I
    .restart local v19       #done:Z
    .restart local v25       #keepScrollBarsVisible:Z
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2d

    .line 5358
    :cond_2b
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 5359
    .restart local v13       #ax:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 5360
    .restart local v14       #ay:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_32

    .line 5362
    int-to-float v5, v14

    const/high16 v6, 0x3fc0

    int-to-float v7, v13

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2c

    const/16 v5, 0x50

    if-le v14, v5, :cond_2c

    .line 5364
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5367
    :cond_2c
    int-to-float v5, v13

    const/high16 v6, 0x3fc0

    int-to-float v7, v14

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v5, v0

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    neg-int v5, v5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_2d

    .line 5371
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5388
    .end local v13           #ax:I
    .end local v14           #ay:I
    :cond_2d
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    if-eqz v5, :cond_2e

    .line 5389
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_35

    .line 5390
    const/16 v18, 0x0

    .line 5395
    :cond_2e
    :goto_d
    or-int v5, v17, v18

    if-eqz v5, :cond_36

    .line 5396
    if-eqz v17, :cond_2f

    .line 5397
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5399
    :cond_2f
    if-eqz v18, :cond_30

    .line 5400
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5402
    :cond_30
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5410
    :goto_e
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 5411
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_9

    .line 5367
    .restart local v13       #ax:I
    .restart local v14       #ay:I
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_2d

    goto :goto_b

    .line 5375
    :cond_32
    int-to-float v5, v13

    const/high16 v6, 0x3fc0

    int-to-float v7, v14

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_33

    const/16 v5, 0x50

    if-le v13, v5, :cond_33

    .line 5377
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 5380
    :cond_33
    int-to-float v5, v14

    const/high16 v6, 0x3fc0

    int-to-float v7, v13

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v5, v0

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    neg-int v5, v5

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_2d

    .line 5384
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    goto :goto_c

    .line 5380
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-le v0, v1, :cond_2d

    goto :goto_f

    .line 5392
    .end local v13           #ax:I
    .end local v14           #ay:I
    :cond_35
    const/16 v17, 0x0

    goto :goto_d

    .line 5406
    :cond_36
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 5407
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 5408
    const/16 v25, 0x1

    goto :goto_e

    .line 5426
    :cond_37
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 5432
    .end local v19           #done:Z
    .end local v24           #firstMove:Z
    .end local v25           #keepScrollBarsVisible:Z
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 5433
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5434
    .restart local v26       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v12

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5435
    move v0, v15

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5436
    move/from16 v0, v16

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5438
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_38

    .line 5440
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5441
    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5443
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5445
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_39
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 5446
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    packed-switch v5, :pswitch_data_1

    .line 5554
    :cond_3a
    :goto_10
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_2

    .line 5448
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5450
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_3d

    .line 5451
    :cond_3b
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 5452
    .restart local v26       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x200

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 5453
    move v0, v15

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 5454
    move/from16 v0, v16

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 5455
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 5456
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 5457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_3c

    .line 5458
    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 5459
    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 5461
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_10

    .line 5462
    .end local v26           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3a

    .line 5463
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doDoubleTap()V

    .line 5464
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_10

    .line 5470
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5472
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_41

    .line 5473
    const-string/jumbo v5, "webview"

    const-string v6, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_40

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    if-gtz v5, :cond_3e

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v5

    if-lez v5, :cond_40

    .line 5479
    :cond_3e
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 5483
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 5486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5514
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5518
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-wide v5, v0

    sub-long v5, v20, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_45

    .line 5519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_3f

    .line 5520
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5530
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5531
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_10

    .line 5493
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_10

    .line 5497
    :cond_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_43

    .line 5498
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 5499
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 5501
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_10

    .line 5504
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_44

    .line 5505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_10

    .line 5509
    :cond_44
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_10

    .line 5534
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v7, v0

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 5537
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5541
    :cond_46
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5542
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5549
    :pswitch_7
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 5550
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 5551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_10

    .line 5558
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_47

    .line 5559
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v7, v0

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 5561
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5563
    :cond_47
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 5564
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_2

    .line 5161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 5446
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 5755
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 5756
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 5757
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_1
    move v2, v4

    .line 5833
    :goto_0
    return v2

    .line 5760
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    .line 5761
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_3

    move v2, v4

    .line 5762
    goto :goto_0

    .line 5764
    :cond_3
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5765
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_4

    move v2, v5

    .line 5766
    goto :goto_0

    .line 5768
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_1
    invoke-direct {p0, v2, v4, v4}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5769
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5771
    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 5778
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_6
    move v2, v5

    .line 5779
    goto :goto_0

    :cond_7
    move v2, v5

    .line 5768
    goto :goto_1

    .line 5781
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_b

    .line 5783
    iget-object v2, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5784
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 5785
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 5786
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_a

    .line 5787
    iget-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v2, :cond_9

    .line 5788
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 5789
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_2
    move v2, v4

    .line 5795
    goto :goto_0

    .line 5791
    :cond_9
    iput-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5792
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 5793
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_2

    :cond_a
    move v2, v5

    .line 5802
    goto :goto_0

    .line 5804
    :cond_b
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v2, :cond_c

    move v2, v5

    .line 5806
    goto :goto_0

    .line 5808
    :cond_c
    iget-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-eqz v2, :cond_d

    move v2, v4

    .line 5810
    goto/16 :goto_0

    .line 5812
    :cond_d
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_e

    move v2, v4

    .line 5814
    goto/16 :goto_0

    .line 5817
    :cond_e
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5818
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_f

    .line 5823
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 5824
    iput v5, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v5, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 5826
    :cond_f
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5830
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 5831
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 5832
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doTrackball(J)V

    move v2, v4

    .line 5833
    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 4592
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 4593
    if-eqz p1, :cond_0

    .line 4594
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    .line 4598
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 4599
    return-void

    .line 4596
    :cond_0
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 1182
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 1190
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1863
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    move v2, v4

    .line 1879
    :goto_0
    return v2

    .line 1866
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 1867
    if-eqz p1, :cond_1

    .line 1868
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v3

    invoke-direct {p0, v2, v3, v5, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 1871
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1873
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2

    .line 1874
    const/16 v2, 0x18

    sub-int v1, v0, v2

    .line 1878
    .local v1, y:I
    :goto_1
    iput-boolean v5, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 1879
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v4, v1, v5, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 1876
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 1879
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1836
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    move v2, v3

    .line 1853
    :goto_0
    return v2

    .line 1839
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 1840
    if-eqz p1, :cond_1

    .line 1842
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2, v3, v4, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 1845
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1847
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2

    .line 1848
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x18

    .line 1852
    .local v1, y:I
    :goto_1
    iput-boolean v4, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 1853
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v3, v1, v4, v3}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 1850
    .end local v1           #y:I
    :cond_2
    neg-int v2, v0

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 1853
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 6721
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 6722
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 6723
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 6725
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 6726
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 6731
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 6732
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 6734
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 2726
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2727
    return-void
.end method

.method public performLongClick()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3625
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v5

    .line 3657
    :goto_0
    return v3

    .line 3626
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3628
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 3629
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 3633
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3634
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v3

    goto :goto_0

    .line 3631
    :cond_1
    invoke-direct {p0, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    goto :goto_1

    .line 3639
    :cond_2
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    .line 3640
    goto :goto_0

    .line 3646
    :cond_3
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_0

    .line 3647
    :cond_4
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 3648
    .local v1, x:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 3649
    .local v2, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 3650
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_6

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3651
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 3652
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 3653
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionStart(Landroid/webkit/WebView;)V

    :cond_5
    move v3, v6

    .line 3654
    goto :goto_0

    .line 3656
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    move v3, v5

    .line 3657
    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 1656
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1658
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 1659
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 1660
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 1661
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1662
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1666
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_0
    return-void

    .line 1664
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method rebuildWebTextView()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3960
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4035
    :cond_0
    :goto_0
    return-void

    .line 3963
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    .line 3966
    .local v0, alreadyThere:Z
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3967
    :cond_2
    if-eqz v0, :cond_0

    .line 3968
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_0

    .line 3974
    :cond_3
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v8, :cond_4

    .line 3975
    new-instance v8, Landroid/webkit/WebTextView;

    iget-object v9, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, p0}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 3977
    iput v13, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 3979
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v13, v9}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 3981
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3982
    .local v7, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 3985
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3986
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 3987
    .local v6, vBox:Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 3988
    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3989
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 3991
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v5

    .line 3992
    .local v5, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v3

    .line 3993
    .local v3, nodePointer:I
    if-eqz v0, :cond_7

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4001
    if-eqz v5, :cond_6

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTextGeneration()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne v8, v9, :cond_6

    .line 4003
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v5}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4034
    :cond_6
    :goto_1
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto/16 :goto_0

    .line 4006
    :cond_7
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x5

    :goto_2
    invoke-virtual {v8, v9}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 4010
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v3}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    .line 4011
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebTextView;->setType(I)V

    .line 4012
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 4013
    .local v4, paddingRect:Landroid/graphics/Rect;
    if-eqz v4, :cond_8

    .line 4016
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    iget v10, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 4022
    :cond_8
    if-nez v5, :cond_9

    .line 4026
    const-string v5, ""

    .line 4028
    :cond_9
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v8, v5}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4029
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 4030
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4031
    iget-object v8, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v8}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_1

    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #paddingRect:Landroid/graphics/Rect;
    :cond_a
    move v9, v13

    .line 4006
    goto :goto_2
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3431
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 1735
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1736
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1737
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1738
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 3413
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3414
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 3
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 6711
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 6712
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 6713
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 6714
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 6715
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 6716
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 6717
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 6718
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 20
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 6658
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6661
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v18

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6666
    .local v5, content:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 6667
    iget v15, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v11

    .line 6668
    .local v11, screenTop:I
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    .line 6669
    .local v8, screenBottom:I
    sub-int v6, v8, v11

    .line 6670
    .local v6, height:I
    const/4 v13, 0x0

    .line 6672
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_3

    .line 6673
    div-int/lit8 v7, v6, 0x3

    .line 6674
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    mul-int/lit8 v16, v7, 0x2

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 6677
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    .line 6687
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_0
    :goto_0
    iget v15, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v9

    .line 6688
    .local v9, screenLeft:I
    iget v15, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 6689
    .local v10, screenRight:I
    sub-int v14, v10, v9

    .line 6690
    .local v14, width:I
    const/4 v12, 0x0

    .line 6692
    .local v12, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_5

    .line 6693
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_4

    .line 6694
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 6702
    :cond_1
    :goto_1
    or-int v15, v13, v12

    if-eqz v15, :cond_7

    .line 6703
    if-nez p3, :cond_6

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v15

    .line 6706
    :goto_3
    return v15

    .line 6681
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    add-int v16, v11, v7

    sub-int v13, v15, v16

    goto :goto_0

    .line 6683
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_0

    .line 6684
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    goto :goto_0

    .line 6696
    .restart local v9       #screenLeft:I
    .restart local v10       #screenRight:I
    .restart local v12       #scrollXDelta:I
    .restart local v14       #width:I
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_1

    .line 6698
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_1

    .line 6699
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_1

    .line 6703
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 6706
    :cond_7
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 6571
    const/4 v6, 0x0

    .line 6572
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6573
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    :cond_0
    :goto_0
    move v7, v6

    .line 6603
    .end local v6           #result:Z
    .local v7, result:Z
    :goto_1
    return v7

    .line 6576
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 6577
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6581
    const/4 v1, 0x0

    .line 6582
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    move v7, v6

    .line 6596
    .end local v6           #result:Z
    .restart local v7       #result:Z
    goto :goto_1

    .line 6584
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :sswitch_0
    const/16 v1, 0x13

    .line 6598
    :goto_2
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6599
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_0

    .line 6587
    :sswitch_1
    const/16 v1, 0x14

    .line 6588
    goto :goto_2

    .line 6590
    :sswitch_2
    const/16 v1, 0x15

    .line 6591
    goto :goto_2

    .line 6593
    :sswitch_3
    const/16 v1, 0x16

    .line 6594
    goto :goto_2

    .line 6582
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 4
    .parameter "hrefMsg"

    .prologue
    .line 2052
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2055
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x89

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;I)V
    .locals 5
    .parameter "name"
    .parameter "nodePointer"

    .prologue
    .line 4046
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4047
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4048
    .local v1, update:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 4049
    new-instance v2, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v1}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4051
    .local v2, updater:Landroid/webkit/WebView$RequestFormData;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4052
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4054
    .end local v0           #t:Ljava/lang/Thread;
    .end local v1           #update:Landroid/os/Message;
    .end local v2           #updater:Landroid/webkit/WebView$RequestFormData;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2070
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    .line 2078
    :goto_0
    return-void

    .line 2071
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2072
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2073
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2074
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2075
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2077
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method requestLabel(II)V
    .locals 2
    .parameter "framePointer"
    .parameter "nodePointer"

    .prologue
    .line 4063
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4065
    return-void
.end method

.method requestListBox([Ljava/lang/String;[II)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 7657
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7659
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[I)V
    .locals 7
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 7612
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[ILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7614
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 5749
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 5750
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 1522
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v3, v4

    .line 1556
    :goto_0
    return v3

    .line 1525
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 1526
    goto :goto_0

    .line 1529
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1530
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1531
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1553
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1554
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 12
    .parameter "inState"

    .prologue
    const/4 v9, 0x0

    const-string v11, "index"

    const-string v10, "history"

    .line 1574
    const/4 v6, 0x0

    .line 1575
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 1617
    :goto_0
    return-object v8

    .line 1578
    :cond_0
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "history"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1579
    const-string v8, "certificate"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1582
    iget-object v8, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v8}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1583
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1587
    .local v3, index:I
    monitor-enter v5

    .line 1588
    :try_start_0
    const-string v8, "history"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1590
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1593
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 1594
    :cond_1
    monitor-exit v5

    move-object v8, v9

    goto :goto_0

    .line 1596
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 1597
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1598
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 1601
    monitor-exit v5

    move-object v8, v9

    goto :goto_0

    .line 1603
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 1604
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 1596
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1607
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 1609
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 1610
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 1615
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_5
    move-object v8, v6

    .line 1617
    goto :goto_0

    .line 1610
    .restart local v3       #index:I
    .restart local v5       #list:Landroid/webkit/WebBackForwardList;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 2734
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2735
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"

    .prologue
    .line 1455
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1456
    :cond_0
    const/4 v2, 0x0

    .line 1491
    :goto_0
    return v2

    .line 1458
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 1461
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1462
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1486
    const-string v2, "scrollX"

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1487
    const-string v2, "scrollY"

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1488
    const-string v2, "scale"

    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1489
    const-string v2, "textwrapScale"

    iget v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1490
    const-string v2, "overview"

    iget-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1491
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v9, 0x0

    .line 1403
    if-nez p1, :cond_0

    move-object v7, v9

    .line 1443
    :goto_0
    return-object v7

    .line 1408
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1409
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 1410
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 1413
    .local v6, size:I
    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v7, v9

    .line 1414
    goto :goto_0

    .line 1416
    :cond_2
    const-string v7, "index"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1421
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1422
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 1423
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_3

    .line 1426
    const-string/jumbo v7, "webview"

    const-string v8, "saveState: Unexpected null history item."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 1427
    goto :goto_0

    .line 1429
    :cond_3
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 1430
    .local v1, data:[B
    if-nez v1, :cond_4

    move-object v7, v9

    .line 1434
    goto :goto_0

    .line 1436
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1438
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1439
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    .line 1440
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    move-object v7, v5

    .line 1443
    goto :goto_0
.end method

.method scrollFocusedTextInput(FI)V
    .locals 4
    .parameter "xPercent"
    .parameter "y"

    .prologue
    .line 6280
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 6289
    :cond_0
    :goto_0
    return-void

    .line 6283
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    invoke-direct {p0, p2}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v2

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 4435
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 4442
    :cond_0
    :goto_0
    return-void

    .line 4436
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4437
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 4438
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectAll()V

    .line 4439
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 4440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4441
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public selectDialogIsUp()Z
    .locals 1

    .prologue
    .line 4448
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return v0
.end method

.method public selectionDone()V
    .locals 2

    .prologue
    .line 4463
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v1, :cond_1

    .line 4464
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 4465
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionDone(Landroid/webkit/WebView;)V

    .line 4466
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4467
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    .line 4469
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 7823
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 7824
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 7825
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 1255
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1256
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3274
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 3275
    return-void
.end method

.method public setDragTracker(Landroid/webkit/WebView$DragTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 4987
    iput-object p1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    .line 4988
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 2131
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2145
    :goto_0
    return-void

    .line 2132
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2133
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 2135
    :cond_1
    if-eqz p1, :cond_2

    .line 2136
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2139
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2140
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080512

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    .line 2144
    :cond_2
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public setFindDialogHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 2976
    iput p1, p0, Landroid/webkit/WebView;->mFindHeight:I

    .line 2977
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 3
    .parameter "isUp"

    .prologue
    .line 2865
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 2866
    if-eqz p1, :cond_0

    .line 2867
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 2870
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 2872
    :goto_0
    return-void

    .line 2871
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_0
.end method

.method setFocusControllerInactive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4610
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 4612
    :goto_0
    return-void

    .line 4611
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 4654
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    .line 4655
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 4662
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 4664
    :cond_0
    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1166
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1167
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0
    .parameter "scaleInPercent"

    .prologue
    .line 1945
    iput p1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 1946
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1366
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 3614
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 3615
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 3617
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3618
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 5745
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 5746
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v3, 0x0

    .line 1375
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x77

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1377
    return-void

    :cond_0
    move v2, v3

    .line 1375
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 1384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1385
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    const-string v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1388
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1060
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1061
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1062
    iget-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_0

    .line 1063
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1064
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x108024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1065
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x108024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1066
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1067
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1068
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1069
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1077
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 1072
    :cond_1
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1073
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1074
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1075
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    goto :goto_0
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3322
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 3323
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1152
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 1154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1158
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1159
    return-void

    .line 1156
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 3900
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3901
    return-void
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 7850
    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 7851
    return-void
.end method

.method public setUpSelect()V
    .locals 3

    .prologue
    .line 4401
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    .line 4421
    :cond_0
    :goto_0
    return-void

    .line 4402
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4403
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v1, :cond_0

    .line 4404
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 4405
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 4407
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4408
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 4409
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4410
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4411
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4412
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 4420
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    goto :goto_0

    .line 4413
    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 4414
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4415
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_1

    .line 4417
    :cond_3
    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 4418
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_1
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1174
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 1175
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3305
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 3306
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3284
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 3285
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 3254
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3255
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 1727
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1728
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1729
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3848
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 3866
    :cond_0
    :goto_0
    return-void

    .line 3849
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3850
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 3851
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 3852
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3853
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3854
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3855
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 3856
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 3857
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_3

    .line 3858
    :cond_2
    iput-boolean v3, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 3859
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x83

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3861
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    .line 3863
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 6315
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 6323
    :goto_0
    return v1

    .line 6318
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    .line 6319
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getTop()I

    move-result v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6321
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6322
    .local v0, result:Z
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    move v1, v0

    .line 6323
    goto :goto_0
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 6332
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6338
    :goto_0
    return-void

    .line 6335
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6336
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6337
    .local v1, y:I
    iget v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_0
.end method

.method updateCachedTextfield(Ljava/lang/String;)V
    .locals 1
    .parameter "updatedText"

    .prologue
    .line 7860
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 7861
    return-void
.end method

.method updateDefaultZoomDensity(I)V
    .locals 7
    .parameter "zoomDensity"

    .prologue
    const/high16 v6, 0x42c8

    .line 1080
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 1082
    .local v0, density:F
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1083
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    div-float v1, v0, v2

    .line 1085
    .local v1, scaleFactor:F
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1086
    mul-float v2, v6, v0

    float-to-int v2, v2

    sput v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1087
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1088
    const/high16 v2, 0x3e80

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1089
    iput v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1090
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1091
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1092
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZ)V

    .line 1094
    .end local v1           #scaleFactor:F
    :cond_0
    return-void
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 996
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 997
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 998
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    .line 1000
    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    .line 1002
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v2, :cond_2

    .line 1003
    new-instance v2, Landroid/view/ScaleGestureDetector;

    new-instance v3, Landroid/webkit/WebView$ScaleDetectorListener;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1008
    :cond_0
    :goto_1
    return-void

    .line 998
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1005
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_0

    .line 1006
    iput-object v4, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    goto :goto_1
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 2163
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 2172
    invoke-direct {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 6237
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6238
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6240
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6241
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6242
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6243
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6244
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f00

    .line 6253
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6255
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6256
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6257
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6258
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6259
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->zoomWithPreview(FZ)Z

    move-result v0

    return v0
.end method
