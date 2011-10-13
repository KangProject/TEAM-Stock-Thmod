.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I = null

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field protected static final FIRST_STATE_SET:[I = null

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field protected static final LAST_STATE_SET:[I = null

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field protected static final MIDDLE_STATE_SET:[I = null

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PADDING_FROM_BGDRAWABLE:I = 0x10000000

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FIRST_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_LAST_STATE_SET:[I = null

.field protected static final PRESSED_MIDDLE_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SINGLE_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final SINGLE_STATE_SET:[I = null

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field private static final VIEW_STATE_SETS:[[I = null

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field static sInstanceCount:J

.field private static sTags:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTagsLock:Ljava/lang/Object;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mBGDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDrawableState:[I

.field private mDrawingCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingCacheBackgroundColor:I

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHasPerformedLongPress:Z

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field protected mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field protected mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMirror:Z

.field private mNextFocusDownId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOverScrollMode:I

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field private mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 619
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    sput-boolean v0, Landroid/view/View;->$assertionsDisabled:Z

    .line 677
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 828
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 979
    new-array v0, v3, [I

    sput-object v0, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 988
    new-array v0, v4, [I

    const v1, 0x101009e

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 997
    new-array v0, v4, [I

    const v1, 0x101009c

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1006
    new-array v0, v4, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1016
    new-array v0, v4, [I

    const v1, 0x10100a7

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1025
    new-array v0, v4, [I

    const v1, 0x101009d

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1034
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1042
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1050
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1058
    sget-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1066
    sget-object v0, Landroid/view/View;->FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1074
    sget-object v0, Landroid/view/View;->SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1084
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1093
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1102
    sget-object v0, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1111
    sget-object v0, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1122
    sget-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1132
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1141
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1151
    sget-object v0, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1160
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1170
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1180
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1191
    sget-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1200
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1210
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1220
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1232
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1242
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1254
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1265
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1278
    sget-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/view/View;->stateSetUnion([I[I)[I

    move-result-object v0

    sput-object v0, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1284
    const/16 v0, 0x20

    new-array v0, v0, [[I

    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x4

    sget-object v2, Landroid/view/View;->FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/View;->ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/view/View;->PRESSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1324
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->LAST_STATE_SET:[I

    .line 1330
    new-array v0, v4, [I

    const v1, 0x10100a4

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->FIRST_STATE_SET:[I

    .line 1336
    new-array v0, v4, [I

    const v1, 0x10100a5

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->MIDDLE_STATE_SET:[I

    .line 1342
    new-array v0, v4, [I

    const v1, 0x10100a3

    aput v1, v0, v3

    sput-object v0, Landroid/view/View;->SINGLE_STATE_SET:[I

    .line 1348
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/view/View;->PRESSED_LAST_STATE_SET:[I

    .line 1354
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/view/View;->PRESSED_FIRST_STATE_SET:[I

    .line 1360
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/view/View;->PRESSED_MIDDLE_STATE_SET:[I

    .line 1366
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/view/View;->PRESSED_SINGLE_STATE_SET:[I

    .line 1373
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1383
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    .line 1882
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/View;->sInstanceCount:J

    return-void

    :cond_0
    move v0, v3

    .line 619
    goto/16 :goto_0

    .line 677
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 828
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
    .end array-data

    .line 1348
    :array_2
    .array-data 0x4
        0xa6t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1354
    :array_3
    .array-data 0x4
        0xa4t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1360
    :array_4
    .array-data 0x4
        0xa5t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 1366
    :array_5
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1417
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1748
    iput v2, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 1752
    iput v2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 1754
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1802
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 1811
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 1817
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 1823
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 1829
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 1832
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 1863
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 1869
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 2231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, -0x8000

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1417
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1748
    iput v2, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 1752
    iput v2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 1754
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1802
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 1811
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 1817
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 1823
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 1829
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 1832
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 1863
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 1869
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 1891
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 1892
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 1893
    const/high16 v0, 0x1800

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 1896
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 1897
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1898
    return-void

    :cond_0
    move-object v0, v1

    .line 1892
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1917
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1918
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 32
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1939
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1941
    sget-object v28, Lcom/android/internal/R$styleable;->View:[I

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move/from16 v3, p3

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1944
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 1946
    .local v8, background:Landroid/graphics/drawable/Drawable;
    const/4 v14, -0x1

    .line 1947
    .local v14, leftPadding:I
    const/16 v22, -0x1

    .line 1948
    .local v22, topPadding:I
    const/16 v18, -0x1

    .line 1949
    .local v18, rightPadding:I
    const/4 v9, -0x1

    .line 1951
    .local v9, bottomPadding:I
    const/16 v16, -0x1

    .line 1953
    .local v16, padding:I
    const/16 v24, 0x0

    .line 1954
    .local v24, viewFlagValues:I
    const/16 v23, 0x0

    .line 1956
    .local v23, viewFlagMasks:I
    const/16 v21, 0x0

    .line 1958
    .local v21, setScrollContainer:Z
    const/16 v26, 0x0

    .line 1959
    .local v26, x:I
    const/16 v27, 0x0

    .line 1961
    .local v27, y:I
    const/16 v19, 0x0

    .line 1963
    .local v19, scrollbarStyle:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move v15, v0

    .line 1964
    .local v15, overScrollMode:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 1965
    .local v5, N:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v5, :cond_2

    .line 1966
    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 1967
    .local v7, attr:I
    packed-switch v7, :pswitch_data_0

    .line 1965
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1969
    :pswitch_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1970
    goto :goto_1

    .line 1972
    :pswitch_2
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 1973
    goto :goto_1

    .line 1975
    :pswitch_3
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    .line 1976
    goto :goto_1

    .line 1978
    :pswitch_4
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v22

    .line 1979
    goto :goto_1

    .line 1981
    :pswitch_5
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 1982
    goto :goto_1

    .line 1984
    :pswitch_6
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 1985
    goto :goto_1

    .line 1987
    :pswitch_7
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v26

    .line 1988
    goto :goto_1

    .line 1990
    :pswitch_8
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v27

    .line 1991
    goto :goto_1

    .line 1993
    :pswitch_9
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto :goto_1

    .line 1996
    :pswitch_a
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto :goto_1

    .line 1999
    :pswitch_b
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2000
    or-int/lit8 v24, v24, 0x2

    .line 2001
    or-int/lit8 v23, v23, 0x2

    goto/16 :goto_1

    .line 2005
    :pswitch_c
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2006
    or-int/lit8 v24, v24, 0x1

    .line 2007
    or-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 2011
    :pswitch_d
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2012
    const v28, 0x40001

    or-int v24, v24, v28

    .line 2013
    const v28, 0x40001

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2017
    :pswitch_e
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2018
    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x4000

    move/from16 v24, v0

    .line 2019
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x4000

    move/from16 v23, v0

    goto/16 :goto_1

    .line 2023
    :pswitch_f
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2024
    const/high16 v28, 0x20

    or-int v24, v24, v28

    .line 2025
    const/high16 v28, 0x20

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2029
    :pswitch_10
    const/16 v28, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-nez v28, :cond_0

    .line 2030
    const/high16 v28, 0x1

    or-int v24, v24, v28

    .line 2031
    const/high16 v28, 0x1

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2035
    :pswitch_11
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2036
    const/high16 v28, 0x40

    or-int v24, v24, v28

    .line 2037
    const/high16 v28, 0x40

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2041
    :pswitch_12
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    .line 2042
    .local v25, visibility:I
    if-eqz v25, :cond_0

    .line 2043
    sget-object v28, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v28, v28, v25

    or-int v24, v24, v28

    .line 2044
    or-int/lit8 v23, v23, 0xc

    goto/16 :goto_1

    .line 2048
    .end local v25           #visibility:I
    :pswitch_13
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 2049
    .local v10, cacheQuality:I
    if-eqz v10, :cond_0

    .line 2050
    sget-object v28, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v28, v28, v10

    or-int v24, v24, v28

    .line 2051
    const/high16 v28, 0x18

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2055
    .end local v10           #cacheQuality:I
    :pswitch_14
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2058
    :pswitch_15
    const/16 v28, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-nez v28, :cond_0

    .line 2059
    const v28, -0x8000001

    and-int v24, v24, v28

    .line 2060
    const/high16 v28, 0x800

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2064
    :pswitch_16
    const/16 v28, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-nez v28, :cond_0

    .line 2065
    const v28, -0x10000001

    and-int v24, v24, v28

    .line 2066
    const/high16 v28, 0x1000

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2070
    :pswitch_17
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .line 2071
    .local v20, scrollbars:I
    if-eqz v20, :cond_0

    .line 2072
    or-int v24, v24, v20

    .line 2073
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x300

    move/from16 v23, v0

    .line 2074
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 2078
    .end local v20           #scrollbars:I
    :pswitch_18
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 2079
    .local v11, fadingEdge:I
    if-eqz v11, :cond_0

    .line 2080
    or-int v24, v24, v11

    .line 2081
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x3000

    move/from16 v23, v0

    .line 2082
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 2086
    .end local v11           #fadingEdge:I
    :pswitch_19
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 2087
    if-eqz v19, :cond_0

    .line 2088
    const/high16 v28, 0x300

    and-int v28, v28, v19

    or-int v24, v24, v28

    .line 2089
    const/high16 v28, 0x300

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2093
    :pswitch_1a
    const/16 v21, 0x1

    .line 2094
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2095
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_1

    .line 2099
    :pswitch_1b
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2100
    const/high16 v28, 0x400

    or-int v24, v24, v28

    .line 2101
    const/high16 v28, 0x400

    or-int v23, v23, v28

    goto/16 :goto_1

    .line 2105
    :pswitch_1c
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 2106
    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    .line 2107
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    goto/16 :goto_1

    .line 2111
    :pswitch_1d
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_1

    .line 2114
    :pswitch_1e
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_1

    .line 2117
    :pswitch_1f
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_1

    .line 2120
    :pswitch_20
    const/16 v28, -0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_1

    .line 2123
    :pswitch_21
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_1

    .line 2126
    :pswitch_22
    const/16 v28, 0x0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_1

    .line 2129
    :pswitch_23
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 2130
    new-instance v28, Ljava/lang/IllegalStateException;

    const-string v29, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 2134
    :cond_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2135
    .local v12, handlerName:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 2136
    new-instance v28, Landroid/view/View$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 2170
    .end local v12           #handlerName:Ljava/lang/String;
    :pswitch_24
    const/16 v28, 0x1

    move-object v0, v6

    move v1, v7

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto/16 :goto_1

    .line 2175
    .end local v7           #attr:I
    :cond_2
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2177
    if-eqz v8, :cond_3

    .line 2178
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2181
    :cond_3
    if-ltz v16, :cond_4

    .line 2182
    move/from16 v14, v16

    .line 2183
    move/from16 v22, v16

    .line 2184
    move/from16 v18, v16

    .line 2185
    move/from16 v9, v16

    .line 2192
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v28, v0

    const/high16 v29, 0x1000

    and-int v17, v28, v29

    .line 2193
    .local v17, paddingFromDrawable:I
    if-ltz v14, :cond_b

    move/from16 v28, v14

    :goto_2
    if-ltz v22, :cond_c

    move/from16 v29, v22

    :goto_3
    if-ltz v18, :cond_d

    move/from16 v30, v18

    :goto_4
    if-ltz v9, :cond_e

    move/from16 v31, v9

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2200
    if-gez v14, :cond_5

    if-gez v22, :cond_5

    if-gez v18, :cond_5

    if-gez v9, :cond_5

    .line 2202
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v28, v0

    or-int v28, v28, v17

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2205
    :cond_5
    if-eqz v23, :cond_6

    .line 2206
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 2210
    :cond_6
    if-eqz v19, :cond_7

    .line 2211
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 2214
    :cond_7
    if-nez v26, :cond_8

    if-eqz v27, :cond_9

    .line 2215
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 2218
    :cond_9
    if-nez v21, :cond_a

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x200

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 2219
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 2222
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 2224
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2225
    return-void

    .line 2193
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v28, v0

    goto :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v29, v0

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v30, v0

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    goto :goto_5

    .line 1967
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_19
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_b
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_11
        :pswitch_21
        :pswitch_22
        :pswitch_15
        :pswitch_1b
        :pswitch_1a
        :pswitch_16
        :pswitch_23
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method static synthetic access$302(Landroid/view/View;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Landroid/view/View;->postCheckForLongClick(I)V

    return-void
.end method

.method private static captureViewInfo(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .parameter "subTag"
    .parameter "v"

    .prologue
    .line 3851
    if-eqz p1, :cond_0

    const-string v0, "debug.captureview"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3855
    :cond_0
    :goto_0
    return-void

    .line 3854
    :cond_1
    invoke-static {p0, p1}, Landroid/view/ViewDebug;->dumpCapturedView(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private computeOpaqueFlags()V
    .locals 3

    .prologue
    .line 5383
    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 5384
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5389
    :goto_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5390
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x300

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 5392
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5396
    :goto_1
    return-void

    .line 5386
    .end local v0           #flags:I
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 5394
    .restart local v0       #flags:I
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_1
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    const/16 v3, 0x20

    .line 8364
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8365
    .local v1, spaces:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 8366
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8368
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static findViewShouldExist(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "childViewId"

    .prologue
    .line 3591
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3592
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_0

    .line 3593
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_0
    return-object v0
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 8562
    move v0, p0

    .line 8563
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8564
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8566
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 8575
    :goto_0
    return v0

    .line 8568
    :sswitch_0
    move v0, p0

    .line 8569
    goto :goto_0

    .line 8572
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 8566
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 5

    .prologue
    .line 3801
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3802
    .local v1, ancestor:Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 3803
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 3804
    .local v2, vgAncestor:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 3805
    const/4 v3, 0x1

    .line 3810
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :goto_1
    return v3

    .line 3807
    .restart local v2       #vgAncestor:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3809
    goto :goto_0

    .line 3810
    .end local v2           #vgAncestor:Landroid/view/ViewGroup;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 8936
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8937
    .local v0, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initScrollCache()V
    .locals 2

    .prologue
    .line 2456
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    .line 2457
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2459
    :cond_0
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5154
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static mergeDrawableStates([I[I)[I
    .locals 5
    .parameter "baseState"
    .parameter "additionalState"

    .prologue
    .line 7627
    array-length v0, p0

    .line 7628
    .local v0, N:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 7629
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_0

    .line 7630
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7632
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7633
    return-object p0
.end method

.method private postCheckForLongClick(I)V
    .locals 3
    .parameter "delayOffset"

    .prologue
    .line 8890
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 8892
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_0

    .line 8893
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 8895
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 8896
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8898
    return-void
.end method

.method private static printFlags(I)Ljava/lang/String;
    .locals 5
    .parameter "flags"

    .prologue
    const-string v4, " "

    .line 7141
    const-string v1, ""

    .line 7142
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 7143
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7145
    add-int/lit8 v0, v0, 0x1

    .line 7148
    :cond_0
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_0

    .line 7166
    :goto_0
    return-object v1

    .line 7150
    :sswitch_0
    if-lez v0, :cond_1

    .line 7151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7153
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7155
    goto :goto_0

    .line 7157
    :sswitch_1
    if-lez v0, :cond_2

    .line 7158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7160
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7162
    goto :goto_0

    .line 7148
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .locals 5
    .parameter "privateFlags"

    .prologue
    const-string v4, " "

    .line 7177
    const-string v1, ""

    .line 7178
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 7180
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 7181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7182
    add-int/lit8 v0, v0, 0x1

    .line 7185
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 7186
    if-lez v0, :cond_1

    .line 7187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7189
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7190
    add-int/lit8 v0, v0, 0x1

    .line 7193
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 7194
    if-lez v0, :cond_3

    .line 7195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7197
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7198
    add-int/lit8 v0, v0, 0x1

    .line 7201
    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 7202
    if-lez v0, :cond_5

    .line 7203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7205
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7206
    add-int/lit8 v0, v0, 0x1

    .line 7209
    :cond_6
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    .line 7210
    if-lez v0, :cond_7

    .line 7211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7213
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7214
    add-int/lit8 v0, v0, 0x1

    .line 7217
    :cond_8
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a

    .line 7218
    if-lez v0, :cond_9

    .line 7219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7221
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7224
    :cond_a
    return-object v1
.end method

.method private recomputePadding()V
    .locals 5

    .prologue
    .line 5765
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x1000

    and-int v0, v1, v2

    .line 5766
    .local v0, paddingFromDrawable:I
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v4, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 5767
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5768
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 4578
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 4579
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4581
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 4597
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_0

    .line 4598
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4599
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4601
    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 1

    .prologue
    .line 4587
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_0

    .line 4588
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4589
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4591
    :cond_0
    return-void
.end method

.method private resetPressedState()V
    .locals 2

    .prologue
    .line 2890
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2901
    :cond_0
    :goto_0
    return-void

    .line 2894
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2895
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2897
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    .line 2898
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 8535
    move v0, p0

    .line 8536
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8537
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8538
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 8549
    :goto_0
    return v0

    .line 8540
    :sswitch_0
    move v0, p0

    .line 8541
    goto :goto_0

    .line 8543
    :sswitch_1
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8544
    goto :goto_0

    .line 8546
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 8538
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static setTagInternal(Landroid/view/View;ILjava/lang/Object;)V
    .locals 4
    .parameter "view"
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8204
    const/4 v1, 0x0

    .line 8205
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8206
    :try_start_0
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-nez v2, :cond_1

    .line 8207
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    .line 8211
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8213
    if-nez v1, :cond_0

    .line 8214
    new-instance v1, Landroid/util/SparseArray;

    .end local v1           #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 8215
    .restart local v1       #tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v2, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8216
    :try_start_1
    sget-object v3, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8217
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8220
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8221
    return-void

    .line 8209
    :cond_1
    :try_start_2
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    goto :goto_0

    .line 8211
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 8217
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private static stateSetUnion([I[I)[I
    .locals 14
    .parameter "stateSet1"
    .parameter "stateSet2"

    .prologue
    const/4 v13, 0x1

    .line 8902
    array-length v8, p0

    .line 8903
    .local v8, stateSet1Length:I
    array-length v9, p1

    .line 8904
    .local v9, stateSet2Length:I
    add-int v11, v8, v9

    new-array v7, v11, [I

    .line 8905
    .local v7, newSet:[I
    const/4 v4, 0x0

    .line 8906
    .local v4, k:I
    const/4 v1, 0x0

    .line 8907
    .local v1, i:I
    const/4 v3, 0x0

    .line 8910
    .local v3, j:I
    sget-object v0, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #k:I
    .local v5, k:I
    :goto_0
    if-ge v2, v6, :cond_2

    aget v10, v0, v2

    .line 8911
    .local v10, viewState:I
    if-ge v1, v8, :cond_0

    aget v11, p0, v1

    if-ne v11, v10, :cond_0

    .line 8912
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput v10, v7, v5

    .line 8913
    add-int/lit8 v1, v1, 0x1

    .line 8918
    :goto_1
    if-le v4, v13, :cond_1

    .line 8919
    sget-boolean v11, Landroid/view/View;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    sub-int v11, v4, v13

    aget v11, v7, v11

    const/4 v12, 0x2

    sub-int v12, v4, v12

    aget v12, v7, v12

    if-gt v11, v12, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 8914
    .end local v4           #k:I
    .restart local v5       #k:I
    :cond_0
    if-ge v3, v9, :cond_3

    aget v11, p1, v3

    if-ne v11, v10, :cond_3

    .line 8915
    add-int/lit8 v4, v5, 0x1

    .end local v5           #k:I
    .restart local v4       #k:I
    aput v10, v7, v5

    .line 8916
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8910
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #k:I
    .restart local v5       #k:I
    goto :goto_0

    .line 8922
    .end local v10           #viewState:I
    :cond_2
    return-object v7

    .restart local v10       #viewState:I
    :cond_3
    move v4, v5

    .end local v5           #k:I
    .restart local v4       #k:I
    goto :goto_1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3621
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3622
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3640
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3652
    :cond_0
    :goto_0
    return-void

    .line 3644
    :cond_1
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3649
    :cond_2
    if-eqz p1, :cond_0

    .line 3650
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x20

    .line 3673
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 3675
    .local v0, viewFlags:I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    and-int v1, v0, v3

    if-ne v1, v3, :cond_1

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    .line 3677
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3679
    :cond_1
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .locals 17
    .parameter "dr"
    .parameter "region"

    .prologue
    .line 8858
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v3

    .line 8859
    .local v3, r:Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 8860
    .local v15, db:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v14, v0

    .line 8861
    .local v14, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_4

    if-eqz v14, :cond_4

    .line 8862
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v11, v4, v5

    .line 8863
    .local v11, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v7, v4, v5

    .line 8864
    .local v7, h:I
    iget v4, v15, Landroid/graphics/Rect;->left:I

    if-lez v4, :cond_0

    .line 8866
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8868
    :cond_0
    iget v4, v15, Landroid/graphics/Rect;->right:I

    if-ge v4, v11, :cond_1

    .line 8870
    iget v4, v15, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x0

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8872
    :cond_1
    iget v4, v15, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_2

    .line 8874
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, v15, Landroid/graphics/Rect;->top:I

    sget-object v13, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8876
    :cond_2
    iget v4, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v7, :cond_3

    .line 8878
    const/4 v4, 0x0

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v6, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8880
    :cond_3
    move-object v0, v14

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    move-object/from16 v16, v0

    .line 8881
    .local v16, location:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8882
    const/4 v4, 0x0

    aget v4, v16, v4

    const/4 v5, 0x1

    aget v5, v16, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->translate(II)V

    .line 8883
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 8887
    .end local v7           #h:I
    .end local v11           #w:I
    .end local v16           #location:[I
    :goto_0
    return-void

    .line 8885
    :cond_4
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 6138
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 6139
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6146
    :goto_0
    return-void

    .line 6140
    :cond_0
    if-nez p1, :cond_1

    .line 6141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 6143
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5141
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected awakenScrollBars(I)Z
    .locals 1
    .parameter "startDelay"

    .prologue
    .line 5193
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 9
    .parameter "startDelay"
    .parameter "invalidate"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5235
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 5237
    .local v3, scrollCache:Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 5275
    :goto_0
    return v4

    .line 5241
    :cond_1
    iget-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v4, :cond_2

    .line 5242
    new-instance v4, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v4}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v4, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 5245
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5247
    :cond_3
    if-eqz p2, :cond_4

    .line 5249
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5252
    :cond_4
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_5

    .line 5256
    const/16 v0, 0x2ee

    .line 5257
    .local v0, KEY_REPEAT_FIRST_DELAY:I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5262
    .end local v0           #KEY_REPEAT_FIRST_DELAY:I
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 5263
    .local v1, fadeStartTime:J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 5264
    iput v8, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5267
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_6

    .line 5268
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5269
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    move v4, v8

    .line 5272
    goto :goto_0

    .end local v1           #fadeStartTime:J
    :cond_7
    move v4, v5

    .line 5275
    goto :goto_0
.end method

.method public bringToFront()V
    .locals 1

    .prologue
    .line 4763
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4764
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 4766
    :cond_0
    return-void
.end method

.method public buildDrawingCache()V
    .locals 1

    .prologue
    .line 6578
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 6579
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 19
    .parameter "autoScale"

    .prologue
    .line 6600
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    and-int v17, v17, v18

    if-eqz v17, :cond_0

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_4

    .line 6611
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 6612
    .local v16, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 6614
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    .line 6615
    .local v3, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v3, :cond_6

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 6617
    .local v14, scalingRequired:Z
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v14, :cond_1

    .line 6618
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 6619
    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f00

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 6622
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    move v7, v0

    .line 6623
    .local v7, drawingCacheBackgroundColor:I
    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_2
    const/16 v17, 0x1

    move/from16 v10, v17

    .line 6624
    .local v10, opaque:Z
    :goto_2
    if-eqz v3, :cond_8

    move-object v0, v3

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 6626
    .local v15, use32BitCache:Z
    :goto_3
    if-lez v16, :cond_3

    if-lez v9, :cond_3

    mul-int v17, v16, v9

    if-eqz v10, :cond_9

    if-nez v15, :cond_9

    const/16 v18, 0x2

    :goto_4
    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 6630
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6740
    .end local v3           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v7           #drawingCacheBackgroundColor:I
    .end local v9           #height:I
    .end local v10           #opaque:Z
    .end local v14           #scalingRequired:Z
    .end local v15           #use32BitCache:Z
    .end local v16           #width:I
    :cond_4
    :goto_5
    return-void

    .line 6600
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_4

    goto/16 :goto_0

    .line 6615
    .restart local v3       #attachInfo:Landroid/view/View$AttachInfo;
    .restart local v9       #height:I
    .restart local v16       #width:I
    :cond_6
    const/16 v17, 0x0

    move/from16 v14, v17

    goto/16 :goto_1

    .line 6623
    .restart local v7       #drawingCacheBackgroundColor:I
    .restart local v14       #scalingRequired:Z
    :cond_7
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_2

    .line 6624
    .restart local v10       #opaque:Z
    :cond_8
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_3

    .line 6626
    .restart local v15       #use32BitCache:Z
    :cond_9
    const/16 v18, 0x4

    goto :goto_4

    .line 6634
    :cond_a
    const/4 v6, 0x1

    .line 6635
    .local v6, clear:Z
    if-eqz p1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    const/16 v17, 0x0

    move-object/from16 v4, v17

    .line 6638
    .local v4, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-eq v0, v1, :cond_e

    .line 6640
    :cond_b
    if-nez v10, :cond_15

    .line 6641
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x18

    and-int v17, v17, v18

    sparse-switch v17, :sswitch_data_0

    .line 6652
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6662
    .local v11, quality:Landroid/graphics/Bitmap$Config;
    :goto_7
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 6665
    :cond_c
    :try_start_0
    move/from16 v0, v16

    move v1, v9

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 6666
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6667
    if-eqz p1, :cond_17

    .line 6668
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6672
    :goto_8
    if-eqz v10, :cond_d

    if-eqz v15, :cond_d

    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6685
    :cond_d
    if-eqz v7, :cond_19

    const/16 v17, 0x1

    move/from16 v6, v17

    .line 6689
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_e
    :goto_9
    if-eqz v3, :cond_1a

    .line 6690
    iget-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6691
    .local v5, canvas:Landroid/graphics/Canvas;
    if-nez v5, :cond_f

    .line 6692
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 6694
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    :cond_f
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6699
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6705
    :goto_a
    if-eqz v6, :cond_10

    .line 6706
    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6709
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 6710
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 6712
    .local v12, restoreCount:I
    if-eqz p1, :cond_11

    if-eqz v14, :cond_11

    .line 6713
    iget v13, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 6714
    .local v13, scale:F
    invoke-virtual {v5, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6717
    .end local v13           #scale:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6719
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6720
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, 0x8000

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6723
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 6727
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v17, v0

    const v18, -0x600001

    and-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6728
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6733
    :goto_b
    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6735
    if-eqz v3, :cond_4

    .line 6737
    iput-object v5, v3, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    .line 6635
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v12           #restoreCount:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    if-nez v17, :cond_14

    const/16 v17, 0x0

    move-object/from16 v4, v17

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 6643
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :sswitch_0
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6644
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 6646
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 6647
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 6649
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_2
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6650
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 6658
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_15
    if-eqz v15, :cond_16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :goto_c
    goto/16 :goto_7

    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_16
    sget-object v17, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v11, v17

    goto :goto_c

    .line 6670
    .restart local v11       #quality:Landroid/graphics/Bitmap$Config;
    :cond_17
    :try_start_1
    new-instance v17, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 6673
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 6677
    .local v8, e:Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_18

    .line 6678
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    goto/16 :goto_5

    .line 6680
    :cond_18
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    goto/16 :goto_5

    .line 6685
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    :cond_19
    const/16 v17, 0x0

    move/from16 v6, v17

    goto/16 :goto_9

    .line 6702
    .end local v11           #quality:Landroid/graphics/Bitmap$Config;
    :cond_1a
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v5       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_a

    .line 6730
    .restart local v12       #restoreCount:I
    :cond_1b
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    .line 6641
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_2
    .end sparse-switch
.end method

.method public cancelLongPress()V
    .locals 0

    .prologue
    .line 4610
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4617
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4618
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 4389
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 8673
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 8674
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 8676
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8677
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2681
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2682
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2684
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2685
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 2688
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2689
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2691
    :cond_1
    return-void
.end method

.method clearFocusForRemoval()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2699
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2700
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2702
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2703
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2705
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 5894
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 5873
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 5852
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 5574
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 5955
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 5934
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 5913
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 4403
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .line 4407
    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4409
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 4410
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 4411
    iget-object v2, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4416
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 4418
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    .line 4419
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 4421
    :cond_1
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f00

    .line 6747
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v7, v8, v9

    .line 6748
    .local v7, width:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v4, v8, v9

    .line 6750
    .local v4, height:I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6751
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget v8, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v6, v8

    .line 6752
    .local v6, scale:F
    :goto_0
    int-to-float v8, v7

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v7, v8

    .line 6753
    int-to-float v8, v4

    mul-float/2addr v8, v6

    add-float/2addr v8, v10

    float-to-int v4, v8

    .line 6755
    if-lez v7, :cond_1

    move v8, v7

    :goto_1
    if-lez v4, :cond_2

    move v9, v4

    :goto_2
    invoke-static {v8, v9, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6756
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 6757
    new-instance v8, Ljava/lang/OutOfMemoryError;

    invoke-direct {v8}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v8

    .line 6751
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    :cond_0
    const/high16 v8, 0x3f80

    move v6, v8

    goto :goto_0

    .restart local v6       #scale:F
    :cond_1
    move v8, v11

    .line 6755
    goto :goto_1

    :cond_2
    move v9, v11

    goto :goto_2

    .line 6760
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6763
    if-eqz v0, :cond_7

    .line 6764
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6765
    .local v2, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_4

    .line 6766
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 6768
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_4
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 6773
    const/4 v8, 0x0

    iput-object v8, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6779
    :goto_3
    const/high16 v8, -0x100

    and-int/2addr v8, p2

    if-eqz v8, :cond_5

    .line 6780
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 6783
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 6784
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 6785
    .local v5, restoreCount:I
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 6786
    iget v8, p0, Landroid/view/View;->mScrollX:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6789
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6790
    .local v3, flags:I
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6793
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x80

    const/16 v9, 0x80

    if-ne v8, v9, :cond_8

    .line 6794
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6799
    :goto_4
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6801
    invoke-virtual {v2, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6803
    if-eqz v0, :cond_6

    .line 6805
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 6808
    :cond_6
    return-object v1

    .line 6776
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #flags:I
    .end local v5           #restoreCount:I
    :cond_7
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #canvas:Landroid/graphics/Canvas;
    goto :goto_3

    .line 6796
    .restart local v3       #flags:I
    .restart local v5       #restoreCount:I
    :cond_8
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 8284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 8285
    return-void
.end method

.method protected debug(I)V
    .locals 9
    .parameter "depth"

    .prologue
    const-string v8, ")"

    const-string/jumbo v7, "}"

    const-string v6, ", "

    const-string v5, "View"

    .line 8297
    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8299
    .local v1, output:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8300
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 8301
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 8302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8304
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 8305
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 8306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8308
    :cond_1
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8310
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 8311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8312
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8315
    :cond_2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8319
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8321
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_4

    .line 8323
    :cond_3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8326
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8329
    :cond_4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8332
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8334
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8335
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_5

    .line 8336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8340
    :goto_0
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8342
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8346
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8348
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 8349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8352
    const-string v3, "View"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8353
    return-void

    .line 8338
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public destroyDrawingCache()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6533
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    .line 6534
    iget-object v1, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6535
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6536
    :cond_0
    iput-object v2, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6538
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_3

    .line 6539
    iget-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6540
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6541
    :cond_2
    iput-object v2, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    .line 6543
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 3
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 6233
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6234
    iget v1, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 6235
    iget-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    .line 6236
    iget-object v1, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 6237
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 6239
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 6240
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6241
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6243
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 6244
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 6245
    iget v0, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6246
    .local v0, vis:I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 6247
    invoke-virtual {p0, v0}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6249
    :cond_2
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 4173
    invoke-virtual {p0, p1}, Landroid/view/View;->performCollectViewAttributes(I)V

    .line 4174
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 4152
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4153
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .locals 1
    .parameter "consistency"

    .prologue
    .line 8229
    invoke-virtual {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v0

    return v0
.end method

.method dispatchDetachedFromWindow()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 6253
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6254
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 6255
    iget v1, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6256
    .local v1, vis:I
    if-eq v1, v2, :cond_0

    .line 6257
    invoke-virtual {p0, v2}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 6261
    .end local v1           #vis:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 6262
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 6263
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6264
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6266
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6267
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 4052
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 4053
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 4808
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 3835
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 3836
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 3899
    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3901
    const/4 v0, 0x1

    .line 3904
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3878
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3915
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2839
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6360
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6361
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 6362
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 6365
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6366
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6367
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 6368
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6373
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6294
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 6295
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6296
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 6297
    .local v0, state:Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 6298
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6301
    :cond_0
    if-eqz v0, :cond_1

    .line 6304
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6307
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 3428
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 7895
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 3817
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3818
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3926
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3927
    const/4 v0, 0x0

    .line 3934
    :goto_0
    return v0

    .line 3930
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3932
    const/4 v0, 0x1

    goto :goto_0

    .line 3934
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3962
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 3561
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 4022
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4023
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 3973
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 3974
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 4076
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 4077
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 41
    .parameter "canvas"

    .prologue
    .line 6921
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v29, v0

    .line 6922
    .local v29, privateFlags:I
    const/high16 v3, 0x60

    and-int v3, v3, v29

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v3, :cond_4

    :cond_0
    const/4 v3, 0x1

    move v13, v3

    .line 6924
    .local v13, dirtyOpaque:Z
    :goto_0
    const v3, -0x600001

    and-int v3, v3, v29

    or-int/lit8 v3, v3, 0x20

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 6941
    if-nez v13, :cond_2

    .line 6942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 6943
    .local v10, background:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    .line 6944
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v33, v0

    .line 6945
    .local v33, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v34, v0

    .line 6947
    .local v34, scrollY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 6948
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v7, v0

    sub-int/2addr v6, v7

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6949
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 6952
    :cond_1
    or-int v3, v33, v34

    if-nez v3, :cond_5

    .line 6953
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6963
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v40, v0

    .line 6964
    .local v40, viewFlags:I
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x1000

    move v3, v0

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 6965
    .local v21, horizontalEdges:Z
    :goto_2
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x2000

    move v3, v0

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move/from16 v39, v3

    .line 6966
    .local v39, verticalEdges:Z
    :goto_3
    if-nez v39, :cond_8

    if-nez v21, :cond_8

    .line 6968
    if-nez v13, :cond_3

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6971
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6974
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 7117
    :goto_4
    return-void

    .line 6922
    .end local v13           #dirtyOpaque:Z
    .end local v21           #horizontalEdges:Z
    .end local v39           #verticalEdges:Z
    .end local v40           #viewFlags:I
    :cond_4
    const/4 v3, 0x0

    move v13, v3

    goto :goto_0

    .line 6955
    .restart local v10       #background:Landroid/graphics/drawable/Drawable;
    .restart local v13       #dirtyOpaque:Z
    .restart local v33       #scrollX:I
    .restart local v34       #scrollY:I
    :cond_5
    move/from16 v0, v33

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6956
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6957
    move/from16 v0, v33

    neg-int v0, v0

    move v3, v0

    int-to-float v3, v3

    move/from16 v0, v34

    neg-int v0, v0

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 6964
    .end local v10           #background:Landroid/graphics/drawable/Drawable;
    .end local v33           #scrollX:I
    .end local v34           #scrollY:I
    .restart local v40       #viewFlags:I
    :cond_6
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_2

    .line 6965
    .restart local v21       #horizontalEdges:Z
    :cond_7
    const/4 v3, 0x0

    move/from16 v39, v3

    goto :goto_3

    .line 6987
    .restart local v39       #verticalEdges:Z
    :cond_8
    const/16 v17, 0x0

    .line 6988
    .local v17, drawTop:Z
    const/4 v14, 0x0

    .line 6989
    .local v14, drawBottom:Z
    const/4 v15, 0x0

    .line 6990
    .local v15, drawLeft:Z
    const/16 v16, 0x0

    .line 6992
    .local v16, drawRight:Z
    const/16 v38, 0x0

    .line 6993
    .local v38, topFadeStrength:F
    const/4 v12, 0x0

    .line 6994
    .local v12, bottomFadeStrength:F
    const/16 v23, 0x0

    .line 6995
    .local v23, leftFadeStrength:F
    const/16 v31, 0x0

    .line 6998
    .local v31, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v27, v0

    .line 6999
    .local v27, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v28, v0

    .line 7001
    .local v28, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v26

    .line 7002
    .local v26, offsetRequired:Z
    if-eqz v26, :cond_9

    .line 7003
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v3

    add-int v27, v27, v3

    .line 7004
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v3

    add-int v28, v28, v3

    .line 7007
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mMirror:Z

    move v4, v0

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v4, v0

    :goto_5
    add-int v22, v3, v4

    .line 7008
    .local v22, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v3, v0

    add-int v3, v3, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v30, v3, v27

    .line 7009
    .local v30, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    add-int v37, v3, v28

    .line 7010
    .local v37, top:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v3, v0

    add-int v3, v3, v37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v11, v3, v28

    .line 7012
    .local v11, bottom:I
    if-eqz v26, :cond_a

    .line 7013
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v3

    add-int v30, v30, v3

    .line 7014
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v3

    add-int/2addr v11, v3

    .line 7017
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v35, v0

    .line 7018
    .local v35, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move/from16 v24, v0

    .line 7022
    .local v24, length:I
    if-eqz v39, :cond_b

    add-int v3, v37, v24

    sub-int v4, v11, v24

    if-le v3, v4, :cond_b

    .line 7023
    sub-int v3, v11, v37

    div-int/lit8 v24, v3, 0x2

    .line 7027
    :cond_b
    if-eqz v21, :cond_c

    add-int v3, v22, v24

    sub-int v4, v30, v24

    if-le v3, v4, :cond_c

    .line 7028
    sub-int v3, v30, v22

    div-int/lit8 v24, v3, 0x2

    .line 7031
    :cond_c
    if-eqz v39, :cond_d

    .line 7032
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v38

    .line 7033
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-lez v3, :cond_19

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 7034
    :goto_6
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 7035
    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-lez v3, :cond_1a

    const/4 v3, 0x1

    move v14, v3

    .line 7038
    :cond_d
    :goto_7
    if-eqz v21, :cond_e

    .line 7039
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 7040
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-lez v3, :cond_1b

    const/4 v3, 0x1

    move v15, v3

    .line 7041
    :goto_8
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 7042
    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-lez v3, :cond_1c

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 7045
    :cond_e
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v32

    .line 7047
    .local v32, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v36

    .line 7048
    .local v36, solidColor:I
    if-nez v36, :cond_1d

    .line 7049
    const/16 v20, 0x4

    .line 7051
    .local v20, flags:I
    if-eqz v17, :cond_f

    .line 7052
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7055
    :cond_f
    if-eqz v14, :cond_10

    .line 7056
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7059
    :cond_10
    if-eqz v15, :cond_11

    .line 7060
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7063
    :cond_11
    if-eqz v16, :cond_12

    .line 7064
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 7071
    .end local v20           #flags:I
    :cond_12
    :goto_a
    if-nez v13, :cond_13

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7074
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7077
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    move-object v8, v0

    .line 7078
    .local v8, p:Landroid/graphics/Paint;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v25, v0

    .line 7079
    .local v25, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v18, v0

    .line 7080
    .local v18, fade:Landroid/graphics/Shader;
    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v19, v0

    .line 7082
    .local v19, fadeHeight:F
    if-eqz v17, :cond_14

    .line 7083
    const/high16 v3, 0x3f80

    mul-float v4, v19, v38

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7084
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7085
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7086
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    add-int v3, v37, v24

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7089
    :cond_14
    if-eqz v14, :cond_15

    .line 7090
    const/high16 v3, 0x3f80

    mul-float v4, v19, v12

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7091
    const/high16 v3, 0x4334

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7092
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    int-to-float v4, v11

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7093
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7094
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    sub-int v3, v11, v24

    int-to-float v5, v3

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7097
    :cond_15
    if-eqz v15, :cond_16

    .line 7098
    const/high16 v3, 0x3f80

    mul-float v4, v19, v23

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7099
    const/high16 v3, -0x3d4c

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7100
    move/from16 v0, v22

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7101
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7102
    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    add-int v3, v22, v24

    int-to-float v6, v3

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7105
    :cond_16
    if-eqz v16, :cond_17

    .line 7106
    const/high16 v3, 0x3f80

    mul-float v4, v19, v31

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7107
    const/high16 v3, 0x42b4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 7108
    move/from16 v0, v30

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 7109
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7110
    sub-int v3, v30, v24

    int-to-float v4, v3

    move/from16 v0, v37

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7113
    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7116
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .end local v8           #p:Landroid/graphics/Paint;
    .end local v11           #bottom:I
    .end local v18           #fade:Landroid/graphics/Shader;
    .end local v19           #fadeHeight:F
    .end local v22           #left:I
    .end local v24           #length:I
    .end local v25           #matrix:Landroid/graphics/Matrix;
    .end local v30           #right:I
    .end local v32           #saveCount:I
    .end local v35           #scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    .end local v36           #solidColor:I
    .end local v37           #top:I
    :cond_18
    move/from16 v4, v27

    .line 7007
    goto/16 :goto_5

    .line 7033
    .restart local v11       #bottom:I
    .restart local v22       #left:I
    .restart local v24       #length:I
    .restart local v30       #right:I
    .restart local v35       #scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    .restart local v37       #top:I
    :cond_19
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_6

    .line 7035
    :cond_1a
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_7

    .line 7040
    :cond_1b
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_8

    .line 7042
    :cond_1c
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_9

    .line 7067
    .restart local v32       #saveCount:I
    .restart local v36       #solidColor:I
    :cond_1d
    invoke-virtual/range {v35 .. v36}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_a
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 7498
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7499
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7500
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7502
    :cond_0
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 2921
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 3573
    sparse-switch p2, :sswitch_data_0

    move-object v0, v1

    .line 3587
    :goto_0
    return-object v0

    .line 3575
    :sswitch_0
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3576
    :cond_0
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3578
    :sswitch_1
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 3579
    :cond_1
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3581
    :sswitch_2
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    if-ne v0, v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 3582
    :cond_2
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3584
    :sswitch_3
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    if-ne v0, v2, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 3585
    :cond_3
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-static {p1, v0}, Landroid/view/View;->findViewShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3573
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 8031
    if-gez p1, :cond_0

    .line 8032
    const/4 v0, 0x0

    .line 8034
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 8005
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 8008
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 8045
    if-nez p1, :cond_0

    .line 8046
    const/4 v0, 0x0

    .line 8048
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 8017
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 8020
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "insets"

    .prologue
    .line 3121
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3122
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 3123
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 3124
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/view/View;->mPaddingRight:I

    .line 3125
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/view/View;->mPaddingBottom:I

    .line 3126
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3127
    const/4 v0, 0x1

    .line 3129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .parameter "direction"

    .prologue
    .line 3542
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 3543
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3545
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 1

    .prologue
    .line 8407
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8408
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10
    .parameter "region"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 8752
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8753
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 8754
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8755
    .local v8, pflags:I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_1

    .line 8758
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 8759
    .local v7, location:[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 8760
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 8769
    .end local v7           #location:[I
    .end local v8           #pflags:I
    :cond_0
    :goto_0
    return v9

    .line 8762
    .restart local v8       #pflags:I
    :cond_1
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 8766
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 8655
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 6207
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6208
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 6209
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 6210
    .local v1, appWindowToken:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 6211
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :cond_0
    move-object v2, v1

    .line 6215
    .end local v1           #appWindowToken:Landroid/os/IBinder;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 7761
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 8381
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4916
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 5671
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    .line 6905
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2854
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4217
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4434
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    .line 7533
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 7534
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 7538
    :goto_0
    return-object v0

    .line 7536
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 7537
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7538
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 6481
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "autoScale"

    .prologue
    const/high16 v3, 0x2

    const v2, 0x8000

    const/4 v1, 0x0

    .line 6512
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    move-object v0, v1

    .line 6518
    .end local p0
    :goto_0
    return-object v0

    .line 6515
    .restart local p0
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 6516
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 6518
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_0

    .restart local p0
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    goto :goto_0
.end method

.method public getDrawingCacheBackgroundColor()I
    .locals 1

    .prologue
    .line 6569
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .locals 2

    .prologue
    .line 2959
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x18

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    .line 4871
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4872
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 4873
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4874
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4875
    return-void
.end method

.method public getDrawingTime()J
    .locals 2

    .prologue
    .line 6404
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFilterTouchesWhenObscured()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3490
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3607
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3608
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 3609
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 4987
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4988
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 5018
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 5
    .parameter "r"
    .parameter "globalOffset"

    .prologue
    const/4 v4, 0x0

    .line 5005
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v2, v3

    .line 5006
    .local v1, width:I
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int v0, v2, v3

    .line 5007
    .local v0, height:I
    if-lez v1, :cond_3

    if-lez v0, :cond_3

    .line 5008
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 5009
    if-eqz p2, :cond_0

    .line 5010
    iget v2, p0, Landroid/view/View;->mScrollX:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    neg-int v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 5012
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 5014
    :goto_0
    return v2

    :cond_2
    move v2, v4

    .line 5012
    goto :goto_0

    :cond_3
    move v2, v4

    .line 5014
    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 5410
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 5411
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5413
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeight()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 4860
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "outRect"

    .prologue
    .line 4973
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v1, p0, Landroid/view/View;->mTop:I

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4974
    return-void
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 2325
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2326
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2327
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 2328
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2331
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2363
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2364
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_1

    .line 2365
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2366
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_1

    .line 2367
    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2368
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 2369
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_0
    move v3, v2

    .line 2375
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_1
    return v3
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 8103
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getKeepScreenOn()Z
    .locals 2

    .prologue
    .line 2990
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .prologue
    .line 3864
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 5060
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLayoutedLeft()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4946
    iget-boolean v0, p0, Landroid/view/View;->mMirror:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasBackgroundDrawablePadding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4947
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v0, v1

    .line 4949
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mLeft:I

    goto :goto_0
.end method

.method public final getLayoutedRight()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4960
    iget-boolean v0, p0, Landroid/view/View;->mMirror:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasBackgroundDrawablePadding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4961
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    .line 4963
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mRight:I

    goto :goto_0
.end method

.method public final getLeft()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4926
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 5686
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    .line 6863
    const/4 v0, 0x0

    return v0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "r"

    .prologue
    .line 5022
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5023
    .local v0, offset:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5024
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 5025
    const/4 v1, 0x1

    .line 5027
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationInWindow([I)V
    .locals 9
    .parameter "location"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 7976
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 7977
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7981
    :cond_1
    iget v4, p0, Landroid/view/View;->mLeft:I

    aput v4, p1, v8

    .line 7982
    iget v4, p0, Landroid/view/View;->mTop:I

    aput v4, p1, v7

    .line 7984
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7985
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_2

    .line 7986
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 7987
    .local v1, view:Landroid/view/View;
    aget v4, p1, v8

    iget v5, v1, Landroid/view/View;->mLeft:I

    iget v6, v1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v8

    .line 7988
    aget v4, p1, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    iget v6, v1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    aput v4, p1, v7

    .line 7989
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7990
    goto :goto_0

    .line 7992
    .end local v1           #view:Landroid/view/View;
    :cond_2
    instance-of v4, v2, Landroid/view/ViewRoot;

    if-eqz v4, :cond_3

    .line 7994
    move-object v0, v2

    check-cast v0, Landroid/view/ViewRoot;

    move-object v3, v0

    .line 7995
    .local v3, vr:Landroid/view/ViewRoot;
    aget v4, p1, v7

    iget v5, v3, Landroid/view/ViewRoot;->mCurScrollY:I

    sub-int/2addr v4, v5

    aput v4, p1, v7

    .line 7997
    .end local v3           #vr:Landroid/view/ViewRoot;
    :cond_3
    return-void
.end method

.method public getLocationOnScreen([I)V
    .locals 4
    .parameter "location"

    .prologue
    .line 7959
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7961
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7962
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 7963
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7964
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7966
    :cond_0
    return-void
.end method

.method public final getMeasuredHeight()I
    .locals 1

    .prologue
    .line 4896
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 1

    .prologue
    .line 4885
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .locals 1

    .prologue
    .line 3073
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 3013
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .locals 1

    .prologue
    .line 3033
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .locals 1

    .prologue
    .line 3053
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public getOverScrollMode()I
    .locals 1

    .prologue
    .line 9039
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 7844
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 7855
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 7866
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 7833
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 4817
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 7405
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4936
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 5700
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    .line 6877
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .prologue
    .line 7935
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 7936
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 7937
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 7948
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return-object v2

    .line 7942
    :cond_0
    move-object v0, p0

    .line 7944
    .local v0, parent:Landroid/view/View;
    :goto_1
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 7945
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 7948
    goto :goto_0
.end method

.method public getScrollBarStyle()I
    .locals 2

    .prologue
    .line 5831
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x300

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    .prologue
    .line 4829
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .locals 1

    .prologue
    .line 4840
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 7131
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 8590
    iget v1, p0, Landroid/view/View;->mMinHeight:I

    .line 8592
    .local v1, suggestedMinHeight:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 8593
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 8594
    .local v0, bgMinHeight:I
    if-ge v1, v0, :cond_0

    .line 8595
    move v1, v0

    .line 8599
    .end local v0           #bgMinHeight:I
    :cond_0
    return v1
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 8614
    iget v1, p0, Landroid/view/View;->mMinWidth:I

    .line 8616
    .local v1, suggestedMinWidth:I
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 8617
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 8618
    .local v0, bgMinWidth:I
    if-ge v1, v0, :cond_0

    .line 8619
    move v1, v0

    .line 8623
    .end local v0           #bgMinWidth:I
    :cond_0
    return v1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8116
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 8145
    const/4 v1, 0x0

    .line 8146
    .local v1, tags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    sget-object v3, Landroid/view/View;->sTagsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8147
    :try_start_0
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    if-eqz v2, :cond_0

    .line 8148
    sget-object v2, Landroid/view/View;->sTags:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseArray;

    move-object v1, v0

    .line 8150
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8152
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 8153
    :goto_0
    return-object v2

    .line 8150
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 8153
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getTop()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 4906
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 5657
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 6891
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .prologue
    .line 4631
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3662
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3663
    return-object v0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 2293
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2294
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2295
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 2296
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2299
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2341
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2342
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_1

    .line 2343
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2344
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_1

    .line 2345
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 2346
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 2347
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    :cond_0
    move v3, v2

    .line 2353
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_1
    return v3
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    .line 7920
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7921
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7926
    :goto_0
    return-object v0

    .line 7923
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_1

    .line 7924
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 7926
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 3154
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 4850
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .locals 1

    .prologue
    .line 6184
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 6224
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6193
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 4102
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "outRect"

    .prologue
    const/4 v5, 0x0

    .line 4122
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    .line 4124
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4131
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 4132
    .local v2, insets:Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 4133
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 4134
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 4135
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 4140
    .end local v2           #insets:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 4125
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 4126
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 4138
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4139
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2607
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 2608
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2610
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2614
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2615
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2617
    :cond_1
    return-void
.end method

.method protected final hasBackgroundDrawablePadding()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 2262
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 2732
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 2748
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasOpaqueScrollbars()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 5402
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 4010
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 2277
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2279
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2282
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 9
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2390
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2392
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 2394
    .local v2, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_0

    .line 2395
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 2398
    :cond_0
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2400
    .local v1, fadeScrollbars:Z
    if-nez v1, :cond_1

    .line 2401
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 2403
    :cond_1
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 2406
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 2409
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 2414
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 2418
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2419
    .local v4, track:Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2421
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2422
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 2423
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2426
    :cond_2
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2428
    .local v0, alwaysDraw:Z
    if-eqz v0, :cond_3

    .line 2429
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 2432
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2433
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2435
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2436
    if-eqz v3, :cond_4

    .line 2437
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2440
    :cond_4
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2442
    if-eqz v0, :cond_5

    .line 2443
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 2447
    :cond_5
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 2448
    return-void
.end method

.method public invalidate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5347
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    .line 5348
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8021

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5349
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5350
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5351
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5352
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5353
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5356
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5359
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 5323
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 5324
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5325
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5326
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5327
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-ge p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    .line 5328
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 5329
    .local v2, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 5330
    .local v3, scrollY:I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5331
    .local v4, tmpr:Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5332
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5335
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #scrollX:I
    .end local v3           #scrollY:I
    .end local v4           #tmpr:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "dirty"

    .prologue
    .line 5292
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 5293
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5294
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5295
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 5296
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5297
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 5298
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 5299
    .local v4, scrollY:I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5300
    .local v2, r:Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 5302
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5305
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    .end local v1           #p:Landroid/view/ViewParent;
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    .line 7414
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7415
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7416
    .local v0, dirty:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 7417
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 7419
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 7422
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    return-void
.end method

.method public isClickable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3357
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawingCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 6470
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateParentStateEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 6439
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3177
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFitsSystemWindowsFlagSet()Z
    .locals 2

    .prologue
    .line 3139
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3516
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusableInTouchMode()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 3529
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 2910
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 3298
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 5587
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 5714
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 6827
    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4202
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4203
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4205
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/ViewRoot;->isInTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    .line 7234
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 3384
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x180

    .line 5374
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    .line 6849
    const/4 v0, 0x0

    return v0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 3442
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootNamespace()Z
    .locals 1

    .prologue
    .line 8088
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 3455
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollbarFadingEnabled()Z
    .locals 1

    .prologue
    .line 5794
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7904
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3093
    move-object v1, p0

    .line 3096
    .local v1, current:Landroid/view/View;
    :cond_0
    iget v3, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_1

    move v3, v4

    .line 3109
    :goto_0
    return v3

    .line 3099
    :cond_1
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3100
    .local v2, parent:Landroid/view/ViewParent;
    if-nez v2, :cond_2

    move v3, v4

    .line 3101
    goto :goto_0

    .line 3103
    :cond_2
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_3

    .line 3104
    const/4 v3, 0x1

    goto :goto_0

    .line 3106
    :cond_3
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 3107
    if-nez v1, :cond_0

    move v3, v4

    .line 3109
    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x800

    .line 3269
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 5622
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 5744
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 6080
    const/4 v0, 0x0

    return v0
.end method

.method public final layout(IIII)V
    .locals 13
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 7259
    iget-object v10, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7260
    .local v10, p:Landroid/view/ViewParent;
    instance-of v1, v10, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 7261
    move-object v0, v10

    check-cast v0, Landroid/view/ViewGroup;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getDirectionality()I

    move-result v7

    .line 7262
    .local v7, dir:I
    if-eqz v7, :cond_4

    .line 7263
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 7265
    .local v11, rtl:Z
    const/4 v1, 0x1

    if-ne v7, v1, :cond_3

    if-eqz v11, :cond_3

    const/4 v1, 0x1

    move v9, v1

    .line 7268
    .local v9, mirror:Z
    :goto_0
    if-eqz v9, :cond_0

    .line 7269
    check-cast v10, Landroid/view/ViewGroup;

    .end local v10           #p:Landroid/view/ViewParent;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    .line 7270
    .local v12, w:I
    move v8, p1

    .line 7271
    .local v8, ll:I
    sub-int p1, v12, p3

    .line 7272
    sub-int p3, v12, v8

    .line 7282
    .end local v7           #dir:I
    .end local v8           #ll:I
    .end local v11           #rtl:Z
    .end local v12           #w:I
    :cond_0
    :goto_1
    const-class v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7283
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDirectionality()I

    move-result v7

    .line 7284
    .restart local v7       #dir:I
    if-eqz v7, :cond_7

    .line 7285
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 7287
    .restart local v11       #rtl:Z
    const/4 v1, 0x1

    if-ne v7, v1, :cond_6

    if-eqz v11, :cond_6

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Landroid/view/View;->mMirror:Z

    .line 7295
    .end local v7           #dir:I
    .end local v11           #rtl:Z
    :goto_3
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    .line 7296
    .local v2, changed:Z
    if-nez v2, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_2

    :cond_1
    move-object v1, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 7301
    invoke-virtual/range {v1 .. v6}, Landroid/view/View;->onLayout(ZIIII)V

    .line 7302
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7304
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7305
    return-void

    .line 7265
    .end local v2           #changed:Z
    .end local v9           #mirror:Z
    .restart local v7       #dir:I
    .restart local v10       #p:Landroid/view/ViewParent;
    .restart local v11       #rtl:Z
    :cond_3
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    .line 7275
    .end local v11           #rtl:Z
    :cond_4
    const/4 v9, 0x0

    .restart local v9       #mirror:Z
    goto :goto_1

    .line 7278
    .end local v7           #dir:I
    .end local v9           #mirror:Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9       #mirror:Z
    goto :goto_1

    .line 7287
    .end local v10           #p:Landroid/view/ViewParent;
    .restart local v7       #dir:I
    .restart local v11       #rtl:Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 7289
    .end local v11           #rtl:Z
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/View;->mMirror:Z

    goto :goto_3

    .line 7292
    .end local v7           #dir:I
    :cond_8
    iput-boolean v9, p0, Landroid/view/View;->mMirror:Z

    goto :goto_3
.end method

.method public final measure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8431
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_2

    .line 8436
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8443
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 8447
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 8448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8453
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8456
    :cond_2
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 8457
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 8458
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 4185
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4186
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 4187
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 4188
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4191
    :cond_1
    return-void
.end method

.method public offsetLeftAndRight(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 5046
    iget v0, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mLeft:I

    .line 5047
    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 5048
    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 5036
    iget v0, p0, Landroid/view/View;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mTop:I

    .line 5037
    iget v0, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View;->mBottom:I

    .line 5038
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 8718
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8719
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    .line 8706
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8707
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 6158
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 6159
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 6161
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 6162
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 6163
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6165
    :cond_1
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 4359
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 8838
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 4166
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 9
    .parameter "consistency"

    .prologue
    const v8, 0x8000

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v6, "ViewConsistency"

    const-string v5, "View "

    .line 8243
    const/4 v2, 0x1

    .line 8245
    .local v2, result:Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    move v1, v7

    .line 8246
    .local v1, checkLayout:Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_4

    move v0, v7

    .line 8248
    .local v0, checkDrawing:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 8249
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 8250
    const/4 v2, 0x0

    .line 8251
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have a parent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8255
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_1

    .line 8256
    const/4 v2, 0x0

    .line 8257
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not attached to a window."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8262
    :cond_1
    if-eqz v0, :cond_2

    .line 8266
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v8

    if-ne v3, v8, :cond_2

    .line 8268
    const/4 v2, 0x0

    .line 8269
    const-string v3, "ViewConsistency"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was invalidated but its drawing cache is valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8274
    :cond_2
    return v2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    :cond_3
    move v1, v4

    .line 8245
    goto :goto_0

    .restart local v1       #checkLayout:Z
    :cond_4
    move v0, v4

    .line 8246
    goto :goto_1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 4444
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 9
    .parameter "extraSpace"

    .prologue
    const/high16 v6, 0x40

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7558
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_0

    .line 7560
    iget-object p0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 7606
    :goto_0
    return-object v5

    .line 7565
    .restart local p0
    :cond_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7567
    .local v3, privateFlags:I
    and-int/lit16 v5, v3, 0x4000

    if-eqz v5, :cond_1

    move v4, v8

    .line 7569
    .local v4, viewStateIndex:I
    :goto_1
    shl-int/lit8 v5, v4, 0x1

    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_2

    move v6, v8

    :goto_2
    add-int v4, v5, v6

    .line 7572
    shl-int/lit8 v5, v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v8

    :goto_3
    add-int v4, v5, v6

    .line 7574
    shl-int/lit8 v5, v4, 0x1

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_4

    move v6, v8

    :goto_4
    add-int v4, v5, v6

    .line 7577
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    .line 7578
    .local v2, hasWindowFocus:Z
    shl-int/lit8 v5, v4, 0x1

    if-eqz v2, :cond_5

    move v6, v8

    :goto_5
    add-int v4, v5, v6

    .line 7580
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 7594
    .local v0, drawableState:[I
    if-nez p1, :cond_6

    move-object v5, v0

    .line 7595
    goto :goto_0

    .end local v0           #drawableState:[I
    .end local v2           #hasWindowFocus:Z
    .end local v4           #viewStateIndex:I
    :cond_1
    move v4, v7

    .line 7567
    goto :goto_1

    .restart local v4       #viewStateIndex:I
    :cond_2
    move v6, v7

    .line 7569
    goto :goto_2

    :cond_3
    move v6, v7

    .line 7572
    goto :goto_3

    :cond_4
    move v6, v7

    .line 7574
    goto :goto_4

    .restart local v2       #hasWindowFocus:Z
    :cond_5
    move v6, v7

    .line 7578
    goto :goto_5

    .line 7599
    .restart local v0       #drawableState:[I
    :cond_6
    if-eqz v0, :cond_7

    .line 7600
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 7601
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    move-object v5, v1

    .line 7606
    goto :goto_0

    .line 7603
    .end local v1           #fullState:[I
    :cond_7
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_6
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 4375
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 6174
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6175
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 6176
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 6177
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 6178
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 4065
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 6131
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 6100
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6101
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6102
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 5968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object v12, v0

    .line 5969
    .local v12, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v12, :cond_0

    .line 5971
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v22, v0

    .line 5973
    .local v22, state:I
    if-nez v22, :cond_1

    .line 6071
    .end local v22           #state:I
    :cond_0
    :goto_0
    return-void

    .line 5977
    .restart local v22       #state:I
    :cond_1
    const/16 v17, 0x0

    .line 5979
    .local v17, invalidate:Z
    const/4 v5, 0x2

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_7

    .line 5981
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v5, :cond_2

    .line 5982
    const/4 v5, 0x1

    new-array v5, v5, [F

    iput-object v5, v12, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 5985
    :cond_2
    move-object v0, v12

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v23, v0

    .line 5988
    .local v23, values:[F
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v5

    sget-object v6, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v5, v6, :cond_6

    .line 5990
    const/4 v5, 0x0

    iput v5, v12, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5998
    :goto_1
    const/16 v17, 0x1

    .line 6006
    .end local v23           #values:[F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v25, v0

    .line 6008
    .local v25, viewFlags:I
    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x100

    move v5, v0

    const/16 v6, 0x100

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    move v13, v5

    .line 6010
    .local v13, drawHorizontalScrollBar:Z
    :goto_3
    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x200

    move v5, v0

    const/16 v6, 0x200

    if-ne v5, v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    move v14, v5

    .line 6014
    .local v14, drawVerticalScrollBar:Z
    :goto_4
    if-nez v14, :cond_3

    if-eqz v13, :cond_0

    .line 6015
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int v26, v5, v6

    .line 6016
    .local v26, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v6, v0

    sub-int v15, v5, v6

    .line 6018
    .local v15, height:I
    iget-object v7, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 6019
    .local v7, scrollBar:Landroid/widget/ScrollBarDrawable;
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v21

    .line 6020
    .local v21, size:I
    if-gtz v21, :cond_4

    .line 6021
    move-object v0, v12

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v21, v0

    .line 6024
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v19, v0

    .line 6025
    .local v19, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v20, v0

    .line 6026
    .local v20, scrollY:I
    const/high16 v5, 0x200

    and-int v5, v5, v25

    if-nez v5, :cond_a

    const/4 v5, -0x1

    move/from16 v16, v5

    .line 6029
    .local v16, inside:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/View;->mMirror:Z

    move/from16 v18, v0

    .line 6031
    .local v18, mirror:Z
    if-eqz v13, :cond_5

    .line 6032
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 6035
    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v5

    move/from16 v24, v5

    .line 6037
    .local v24, verticalScrollBarGap:I
    :goto_6
    if-eqz v18, :cond_c

    .line 6038
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v5, v0

    and-int v5, v5, v16

    add-int v5, v5, v19

    add-int v8, v5, v24

    .line 6039
    .local v8, left:I
    add-int v5, v19, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v10, v5, v6

    .line 6044
    .local v10, right:I
    :goto_7
    add-int v5, v20, v15

    sub-int v5, v5, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v9, v5, v6

    .line 6045
    .local v9, top:I
    add-int v11, v9, v21

    .local v11, bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6046
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 6047
    if-eqz v17, :cond_5

    .line 6048
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 6052
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v24           #verticalScrollBarGap:I
    :cond_5
    if-eqz v14, :cond_0

    .line 6053
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 6056
    if-eqz v18, :cond_d

    .line 6057
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v5, v0

    and-int v5, v5, v16

    add-int v8, v19, v5

    .line 6061
    .restart local v8       #left:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v5, v0

    and-int v5, v5, v16

    add-int v9, v20, v5

    .line 6062
    .restart local v9       #top:I
    add-int v10, v8, v21

    .line 6063
    .restart local v10       #right:I
    add-int v5, v20, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingBottom:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v11, v5, v6

    .restart local v11       #bottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6064
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 6065
    if-eqz v17, :cond_0

    .line 6066
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 5992
    .end local v7           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v8           #left:I
    .end local v9           #top:I
    .end local v10           #right:I
    .end local v11           #bottom:I
    .end local v13           #drawHorizontalScrollBar:Z
    .end local v14           #drawVerticalScrollBar:Z
    .end local v15           #height:I
    .end local v16           #inside:I
    .end local v18           #mirror:Z
    .end local v19           #scrollX:I
    .end local v20           #scrollY:I
    .end local v21           #size:I
    .end local v25           #viewFlags:I
    .end local v26           #width:I
    .restart local v23       #values:[F
    :cond_6
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v6, 0x0

    aget v6, v23, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 6002
    .end local v23           #values:[F
    :cond_7
    iget-object v5, v12, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 6008
    .restart local v25       #viewFlags:I
    :cond_8
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_3

    .line 6010
    .restart local v13       #drawHorizontalScrollBar:Z
    :cond_9
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_4

    .line 6026
    .restart local v7       #scrollBar:Landroid/widget/ScrollBarDrawable;
    .restart local v14       #drawVerticalScrollBar:Z
    .restart local v15       #height:I
    .restart local v19       #scrollX:I
    .restart local v20       #scrollY:I
    .restart local v21       #size:I
    .restart local v26       #width:I
    :cond_a
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_5

    .line 6035
    .restart local v16       #inside:I
    .restart local v18       #mirror:Z
    :cond_b
    const/4 v5, 0x0

    move/from16 v24, v5

    goto/16 :goto_6

    .line 6041
    .restart local v24       #verticalScrollBarGap:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v5, v0

    and-int v5, v5, v16

    add-int v8, v19, v5

    .line 6042
    .restart local v8       #left:I
    add-int v5, v19, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int/2addr v5, v6

    sub-int v10, v5, v24

    .restart local v10       #right:I
    goto/16 :goto_7

    .line 6059
    .end local v8           #left:I
    .end local v10           #right:I
    .end local v24           #verticalScrollBarGap:I
    :cond_d
    add-int v5, v19, v26

    sub-int v5, v5, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mUserPaddingRight:I

    move v6, v0

    and-int v6, v6, v16

    sub-int v8, v5, v6

    .restart local v8       #left:I
    goto :goto_8
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 6121
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6122
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6123
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3946
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3949
    const/4 v0, 0x0

    .line 3951
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 7397
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 3843
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2770
    if-eqz p1, :cond_0

    .line 2771
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2774
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2775
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_6

    .line 2776
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2777
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2779
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_2

    .line 2781
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 2783
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 2789
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2790
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v1, :cond_4

    .line 2791
    iget-object v1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 2794
    :cond_4
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_5

    .line 2795
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 2797
    :cond_5
    return-void

    .line 2784
    :cond_6
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v1, :cond_3

    .line 2786
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 0

    .prologue
    .line 2886
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 2887
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x20

    .line 4247
    const/4 v0, 0x0

    .line 4249
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v1, v0

    .line 4268
    :goto_0
    return v1

    .line 4252
    :sswitch_0
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    move v1, v4

    .line 4253
    goto :goto_0

    .line 4256
    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4259
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4260
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 4261
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/View;->postCheckForLongClick(I)V

    :cond_3
    move v1, v4

    .line 4263
    goto :goto_0

    .line 4249
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4277
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 4326
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4233
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4338
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4291
    const/4 v0, 0x0

    .line 4293
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    .line 4312
    :goto_1
    return v1

    .line 4296
    :sswitch_0
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 4297
    const/4 v1, 0x1

    goto :goto_1

    .line 4299
    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4300
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4302
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_0

    .line 4304
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4306
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0

    .line 4293
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7321
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 8507
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8509
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 9028
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 6388
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6389
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 6390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6396
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 6331
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6332
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v1, 0x1

    .line 4780
    iput-boolean v1, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 4782
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 4783
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 4784
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 4786
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 8733
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 4799
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    .line 3827
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 3828
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3829
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4469
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 4471
    .local v3, viewFlags:I
    and-int/lit8 v6, v3, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 4474
    and-int/lit16 v6, v3, 0x4000

    if-eq v6, v12, :cond_0

    and-int v6, v3, v10

    if-ne v6, v10, :cond_1

    :cond_0
    move v6, v9

    .line 4571
    :goto_0
    return v6

    :cond_1
    move v6, v8

    .line 4474
    goto :goto_0

    .line 4478
    :cond_2
    iget-object v6, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v6, :cond_3

    .line 4479
    iget-object v6, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v6, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v9

    .line 4480
    goto :goto_0

    .line 4484
    :cond_3
    and-int/lit16 v6, v3, 0x4000

    if-eq v6, v12, :cond_4

    and-int v6, v3, v10

    if-ne v6, v10, :cond_10

    .line 4486
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_5
    :goto_1
    move v6, v9

    .line 4568
    goto :goto_0

    .line 4488
    :pswitch_0
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x200

    and-int/2addr v6, v7

    if-eqz v6, :cond_c

    move v1, v9

    .line 4489
    .local v1, prepressed:Z
    :goto_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_6

    if-eqz v1, :cond_5

    .line 4492
    :cond_6
    const/4 v0, 0x0

    .line 4493
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_7

    .line 4494
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 4497
    :cond_7
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_9

    .line 4499
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4502
    if-nez v0, :cond_9

    .line 4506
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_8

    .line 4507
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 4509
    :cond_8
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 4510
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 4515
    :cond_9
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_a

    .line 4516
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 4519
    :cond_a
    if-eqz v1, :cond_d

    .line 4520
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4521
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4522
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4528
    :cond_b
    :goto_3
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_1

    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :cond_c
    move v1, v8

    .line 4488
    goto :goto_2

    .line 4524
    .restart local v0       #focusTaken:Z
    .restart local v1       #prepressed:Z
    :cond_d
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 4526
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_3

    .line 4533
    .end local v0           #focusTaken:Z
    .end local v1           #prepressed:Z
    :pswitch_1
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_e

    .line 4534
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 4536
    :cond_e
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x200

    or-int/2addr v6, v7

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4537
    iput-boolean v8, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 4538
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 4542
    :pswitch_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4543
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4544
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_1

    .line 4548
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 4549
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 4552
    .local v5, y:I
    iget v2, p0, Landroid/view/View;->mTouchSlop:I

    .line 4553
    .local v2, slop:I
    sub-int v6, v8, v2

    if-lt v4, v6, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v4, v6, :cond_f

    sub-int v6, v8, v2

    if-lt v5, v6, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    if-lt v5, v6, :cond_5

    .line 4556
    :cond_f
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 4557
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_5

    .line 4559
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 4562
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x4001

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4563
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_1

    .end local v2           #slop:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_10
    move v6, v8

    .line 4571
    goto/16 :goto_0

    .line 4486
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4459
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 4033
    if-nez p2, :cond_0

    .line 4034
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 4035
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 4040
    :cond_0
    :goto_0
    return-void

    .line 4037
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 3987
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3988
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_3

    .line 3989
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3990
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3992
    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3993
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 3995
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 3996
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 4000
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4001
    return-void

    .line 3997
    :cond_3
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 3998
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 4090
    if-nez p1, :cond_0

    .line 4091
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 4093
    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 20
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 8967
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move v14, v0

    .line 8968
    .local v14, overScrollMode:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    const/16 v18, 0x1

    move/from16 v6, v18

    .line 8970
    .local v6, canScrollHorizontal:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    const/16 v18, 0x1

    move/from16 v7, v18

    .line 8972
    .local v7, canScrollVertical:Z
    :goto_1
    if-eqz v14, :cond_0

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    if-eqz v6, :cond_9

    :cond_0
    const/16 v18, 0x1

    move/from16 v13, v18

    .line 8974
    .local v13, overScrollHorizontal:Z
    :goto_2
    if-eqz v14, :cond_1

    const/16 v18, 0x1

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    if-eqz v7, :cond_a

    :cond_1
    const/16 v18, 0x1

    move/from16 v15, v18

    .line 8977
    .local v15, overScrollVertical:Z
    :goto_3
    add-int v11, p3, p1

    .line 8978
    .local v11, newScrollX:I
    if-nez v13, :cond_2

    .line 8979
    const/16 p7, 0x0

    .line 8982
    :cond_2
    add-int v12, p4, p2

    .line 8983
    .local v12, newScrollY:I
    if-nez v15, :cond_3

    .line 8984
    const/16 p8, 0x0

    .line 8988
    :cond_3
    move/from16 v0, p7

    neg-int v0, v0

    move v10, v0

    .line 8989
    .local v10, left:I
    add-int v16, p7, p5

    .line 8990
    .local v16, right:I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v17, v0

    .line 8991
    .local v17, top:I
    add-int v5, p8, p6

    .line 8993
    .local v5, bottom:I
    const/4 v8, 0x0

    .line 8994
    .local v8, clampedX:Z
    move v0, v11

    move/from16 v1, v16

    if-le v0, v1, :cond_b

    .line 8995
    move/from16 v11, v16

    .line 8996
    const/4 v8, 0x1

    .line 9002
    :cond_4
    :goto_4
    const/4 v9, 0x0

    .line 9003
    .local v9, clampedY:Z
    if-le v12, v5, :cond_c

    .line 9004
    move v12, v5

    .line 9005
    const/4 v9, 0x1

    .line 9011
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 9013
    if-nez v8, :cond_6

    if-eqz v9, :cond_d

    :cond_6
    const/16 v18, 0x1

    :goto_6
    return v18

    .line 8968
    .end local v5           #bottom:I
    .end local v6           #canScrollHorizontal:Z
    .end local v7           #canScrollVertical:Z
    .end local v8           #clampedX:Z
    .end local v9           #clampedY:Z
    .end local v10           #left:I
    .end local v11           #newScrollX:I
    .end local v12           #newScrollY:I
    .end local v13           #overScrollHorizontal:Z
    .end local v15           #overScrollVertical:Z
    .end local v16           #right:I
    .end local v17           #top:I
    :cond_7
    const/16 v18, 0x0

    move/from16 v6, v18

    goto :goto_0

    .line 8970
    .restart local v6       #canScrollHorizontal:Z
    :cond_8
    const/16 v18, 0x0

    move/from16 v7, v18

    goto :goto_1

    .line 8972
    .restart local v7       #canScrollVertical:Z
    :cond_9
    const/16 v18, 0x0

    move/from16 v13, v18

    goto :goto_2

    .line 8974
    .restart local v13       #overScrollHorizontal:Z
    :cond_a
    const/16 v18, 0x0

    move/from16 v15, v18

    goto :goto_3

    .line 8997
    .restart local v5       #bottom:I
    .restart local v8       #clampedX:Z
    .restart local v10       #left:I
    .restart local v11       #newScrollX:I
    .restart local v12       #newScrollY:I
    .restart local v15       #overScrollVertical:Z
    .restart local v16       #right:I
    .restart local v17       #top:I
    :cond_b
    if-ge v11, v10, :cond_4

    .line 8998
    move v11, v10

    .line 8999
    const/4 v8, 0x1

    goto :goto_4

    .line 9006
    .restart local v9       #clampedY:Z
    :cond_c
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 9007
    move/from16 v12, v17

    .line 9008
    const/4 v9, 0x1

    goto :goto_5

    .line 9013
    :cond_d
    const/16 v18, 0x0

    goto :goto_6
.end method

.method public performClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2530
    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2532
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2533
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 2534
    iget-object v0, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v2

    .line 2538
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method performCollectViewAttributes(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 4178
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    or-int/2addr v0, p1

    const v1, 0x400000c

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_0

    .line 4180
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 4182
    :cond_0
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .parameter "feedbackConstant"

    .prologue
    .line 8807
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 3
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 8820
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    move v0, v2

    .line 8827
    :goto_0
    return v0

    .line 8823
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 8825
    goto :goto_0

    .line 8827
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, p1, v1}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 2548
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2550
    const/4 v0, 0x0

    .line 2551
    .local v0, handled:Z
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    .line 2552
    iget-object v1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 2554
    :cond_0
    if-nez v0, :cond_1

    .line 2555
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 2557
    :cond_1
    if-eqz v0, :cond_2

    .line 2558
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2560
    :cond_2
    return v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .parameter "soundConstant"

    .prologue
    .line 8785
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8789
    :cond_0
    :goto_0
    return-void

    .line 8788
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 5428
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5429
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5436
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return v1

    .line 5432
    :cond_0
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 5433
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 5457
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5458
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5465
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return v1

    .line 5461
    :cond_0
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRoot$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 5462
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 2

    .prologue
    .line 5499
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 5500
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5515
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 5516
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 2
    .parameter "delayMilliseconds"

    .prologue
    .line 5528
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5529
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5530
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5531
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5532
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5534
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 3
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5552
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 5553
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    .line 5554
    .local v0, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 5555
    iput p3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 5556
    iput p4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 5557
    iput p5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 5558
    iput p6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 5560
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5561
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5562
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5563
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5565
    .end local v0           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    .line 7513
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7514
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 7516
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 7517
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 7518
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 7520
    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 5480
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 5481
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 5488
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 5489
    .end local v0           #handler:Landroid/os/Handler;
    :goto_0
    return v1

    .line 5484
    :cond_0
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRoot$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 5485
    goto :goto_0
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 3698
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 3720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/high16 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3753
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 3770
    :goto_0
    return v0

    .line 3759
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v3

    if-eq v3, v0, :cond_2

    move v0, v1

    .line 3761
    goto :goto_0

    .line 3765
    :cond_2
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 3766
    goto :goto_0

    .line 3769
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v2

    .line 3770
    goto :goto_0
.end method

.method public final requestFocusFromTouch()Z
    .locals 3

    .prologue
    .line 3785
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3786
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3787
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3788
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRoot;

    .line 3789
    .local v1, viewRoot:Landroid/view/ViewRoot;
    if-eqz v1, :cond_0

    .line 3790
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 3794
    .end local v0           #root:Landroid/view/View;
    .end local v1           #viewRoot:Landroid/view/ViewRoot;
    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    return v2
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 8394
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8396
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8397
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 8399
    :cond_0
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rectangle"

    .prologue
    .line 2631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 6
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2650
    move-object v1, p0

    .line 2651
    .local v1, child:Landroid/view/View;
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2652
    .local v2, parent:Landroid/view/ViewParent;
    const/4 v3, 0x0

    .line 2653
    .local v3, scrolled:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 2654
    invoke-interface {v2, v1, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2659
    iget v4, v1, Landroid/view/View;->mLeft:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2660
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2662
    instance-of v4, v2, Landroid/view/View;

    if-nez v4, :cond_1

    .line 2669
    :cond_0
    return v3

    .line 2666
    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2667
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6345
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 6346
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6279
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 6280
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 7433
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7434
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 7436
    :cond_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5108
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 5109
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 5088
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1

    .line 5089
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 5090
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 5091
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 5092
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 5093
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 5094
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5095
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5098
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 2803
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2804
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2806
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 2812
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2813
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2814
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2815
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2817
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 2818
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mFocusablesTempList:Ljava/util/ArrayList;

    .line 2819
    .local v0, focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2820
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2821
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2822
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2825
    .end local v0           #focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2827
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2828
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 8691
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 8692
    if-eqz p1, :cond_0

    .line 8693
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 8695
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7642
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7643
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7677
    const/4 v1, 0x0

    .line 7679
    .local v1, requestLayout:Z
    iput v6, p0, Landroid/view/View;->mBackgroundResource:I

    .line 7685
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 7686
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7687
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7690
    :cond_0
    if-eqz p1, :cond_9

    .line 7691
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 7692
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 7693
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7694
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7696
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7697
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 7698
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7703
    :cond_2
    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 7705
    :cond_3
    const/4 v1, 0x1

    .line 7708
    :cond_4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7709
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7710
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7712
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    move v2, v7

    :goto_0
    invoke-virtual {p1, v2, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 7713
    iput-object p1, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7715
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_6

    .line 7716
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7717
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7718
    const/4 v1, 0x1

    .line 7746
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_6
    :goto_1
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 7748
    if-eqz v1, :cond_7

    .line 7749
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7752
    :cond_7
    iput-boolean v7, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7753
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7754
    return-void

    .restart local v0       #padding:Landroid/graphics/Rect;
    :cond_8
    move v2, v6

    .line 7712
    goto :goto_0

    .line 7722
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_9
    iput-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    .line 7724
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_a

    .line 7730
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7731
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7743
    :cond_a
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 7653
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 7664
    :goto_0
    return-void

    .line 7657
    :cond_0
    const/4 v0, 0x0

    .line 7658
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 7659
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 7661
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7663
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    const/16 v1, 0x4000

    .line 3372
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3373
    return-void

    .line 3372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "contentDescription"

    .prologue
    .line 2869
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 2870
    return-void
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 6557
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_0

    .line 6558
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 6559
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6561
    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const v1, 0x8000

    .line 6457
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6458
    return-void

    .line 6457
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawingCacheQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2976
    const/high16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 2977
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x40

    .line 6426
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6427
    return-void

    .line 6426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 3188
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3201
    :goto_0
    return-void

    .line 3190
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3196
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3200
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3190
    goto :goto_1
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 2312
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 2313
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 2314
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0x400

    .line 3504
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3506
    return-void

    :cond_0
    move v0, v1

    .line 3504
    goto :goto_0
.end method

.method setFlags(II)V
    .locals 8
    .parameter "flags"
    .parameter "mask"

    .prologue
    const/4 v7, 0x0

    const v6, -0x8001

    const/4 v5, 0x1

    .line 4641
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 4642
    .local v1, old:I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 4644
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 4645
    .local v0, changed:I
    if-nez v0, :cond_1

    .line 4756
    :cond_0
    :goto_0
    return-void

    .line 4648
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4651
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    .line 4653
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_e

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_e

    .line 4656
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4667
    :cond_2
    :goto_1
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_3

    .line 4668
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_3

    .line 4673
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4675
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4681
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_3

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_3

    .line 4682
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 4688
    :cond_3
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_6

    .line 4689
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4690
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4691
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4693
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 4694
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4695
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4697
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_6

    .line 4698
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 4703
    :cond_6
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_8

    .line 4704
    invoke-virtual {p0, v7}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 4705
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4707
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4709
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_7

    .line 4710
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 4713
    :cond_7
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_8

    .line 4714
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 4718
    :cond_8
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_9

    .line 4719
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 4722
    :cond_9
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    .line 4723
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4726
    :cond_a
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_b

    .line 4727
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4728
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4731
    :cond_b
    const/high16 v3, 0x18

    and-int/2addr v3, v0

    if-eqz v3, :cond_c

    .line 4732
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 4733
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v6

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4736
    :cond_c
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_d

    .line 4737
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_10

    .line 4738
    iget-object v3, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    .line 4739
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4740
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4747
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4748
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4751
    :cond_d
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 4752
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_0

    .line 4753
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    goto/16 :goto_0

    .line 4657
    :cond_e
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 4663
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_1

    .line 4742
    :cond_f
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2

    .line 4745
    :cond_10
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter "focusable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3215
    if-nez p1, :cond_0

    .line 3216
    const/high16 v0, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3218
    :cond_0
    if-eqz p1, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3219
    return-void

    :cond_1
    move v0, v1

    .line 3218
    goto :goto_0
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter "focusableInTouchMode"

    .prologue
    const/high16 v2, 0x4

    const/4 v1, 0x1

    .line 3237
    if-eqz p1, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 3238
    if-eqz p1, :cond_0

    .line 3239
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setFlags(II)V

    .line 3241
    :cond_0
    return-void

    .line 3237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7337
    const/4 v0, 0x0

    .line 7344
    .local v0, changed:Z
    iget v6, p0, Landroid/view/View;->mLeft:I

    if-ne v6, p1, :cond_0

    iget v6, p0, Landroid/view/View;->mRight:I

    if-ne v6, p3, :cond_0

    iget v6, p0, Landroid/view/View;->mTop:I

    if-ne v6, p2, :cond_0

    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq v6, p4, :cond_4

    .line 7345
    :cond_0
    const/4 v0, 0x1

    .line 7348
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v6, 0x20

    .line 7351
    .local v1, drawn:I
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7354
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v5, v6, v7

    .line 7355
    .local v5, oldWidth:I
    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, v6, v7

    .line 7357
    .local v4, oldHeight:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 7358
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 7359
    iput p3, p0, Landroid/view/View;->mRight:I

    .line 7360
    iput p4, p0, Landroid/view/View;->mBottom:I

    .line 7362
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7364
    sub-int v3, p3, p1

    .line 7365
    .local v3, newWidth:I
    sub-int v2, p4, p2

    .line 7367
    .local v2, newHeight:I
    if-ne v3, v5, :cond_1

    if-eq v2, v4, :cond_2

    .line 7368
    :cond_1
    invoke-virtual {p0, v3, v2, v5, v4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 7371
    :cond_2
    iget v6, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_3

    .line 7377
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7378
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7382
    :cond_3
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v6, v1

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7384
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 7386
    .end local v1           #drawn:I
    .end local v2           #newHeight:I
    .end local v3           #newWidth:I
    .end local v4           #oldHeight:I
    .end local v5           #oldWidth:I
    :cond_4
    return v0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 2
    .parameter "hapticFeedbackEnabled"

    .prologue
    const/high16 v1, 0x1000

    .line 3285
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3286
    return-void

    .line 3285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "horizontalFadingEdgeEnabled"

    .prologue
    .line 5602
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 5603
    if-eqz p1, :cond_0

    .line 5604
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5607
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5609
    :cond_1
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .parameter "horizontalScrollBarEnabled"

    .prologue
    .line 5727
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5728
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5729
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5730
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5732
    :cond_0
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 8065
    iput p1, p0, Landroid/view/View;->mID:I

    .line 8066
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .locals 1
    .parameter "isRoot"

    .prologue
    .line 8075
    if-eqz p1, :cond_0

    .line 8076
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8080
    :goto_0
    return-void

    .line 8078
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .parameter "keepScreenOn"

    .prologue
    const/high16 v1, 0x400

    .line 3004
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3005
    return-void

    .line 3004
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 5073
    if-nez p1, :cond_0

    .line 5074
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "params == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5076
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 5077
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5078
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2
    .parameter "longClickable"

    .prologue
    const/high16 v1, 0x20

    .line 3398
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3399
    return-void

    .line 3398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setMeasuredDimension(II)V
    .locals 1
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 8520
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 8521
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 8523
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8524
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter "minHeight"

    .prologue
    .line 8634
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 8635
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter "minWidth"

    .prologue
    .line 8645
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 8646
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .parameter "nextFocusDownId"

    .prologue
    .line 3084
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3085
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .parameter "nextFocusLeftId"

    .prologue
    .line 3024
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3025
    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .parameter "nextFocusRightId"

    .prologue
    .line 3044
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3045
    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .parameter "nextFocusUpId"

    .prologue
    .line 3064
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3065
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2488
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2491
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2492
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2517
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2520
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2521
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2467
    iput-object p1, p0, Landroid/view/View;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2468
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2577
    iput-object p1, p0, Landroid/view/View;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 2578
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 2503
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2504
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 2506
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2507
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2585
    iput-object p1, p0, Landroid/view/View;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2586
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "overScrollMode"

    .prologue
    .line 9054
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 9057
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9059
    :cond_0
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 9060
    return-void
.end method

.method public setPadding(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v5, 0x100

    const/4 v4, 0x0

    .line 7782
    const/4 v0, 0x0

    .line 7784
    .local v0, changed:Z
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 7785
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 7787
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 7790
    .local v1, viewFlags:I
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x10000001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7793
    and-int/lit16 v2, v1, 0x300

    if-eqz v2, :cond_1

    .line 7795
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_0

    .line 7796
    and-int v2, v1, v5

    if-nez v2, :cond_7

    move v2, v4

    :goto_0
    add-int/2addr p3, v2

    .line 7799
    :cond_0
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_1

    .line 7800
    and-int v2, v1, v5

    if-nez v2, :cond_8

    move v2, v4

    :goto_1
    add-int/2addr p4, v2

    .line 7805
    :cond_1
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v2, p1, :cond_2

    .line 7806
    const/4 v0, 0x1

    .line 7807
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 7809
    :cond_2
    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v2, p2, :cond_3

    .line 7810
    const/4 v0, 0x1

    .line 7811
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 7813
    :cond_3
    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v2, p3, :cond_4

    .line 7814
    const/4 v0, 0x1

    .line 7815
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 7817
    :cond_4
    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v2, p4, :cond_5

    .line 7818
    const/4 v0, 0x1

    .line 7819
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 7822
    :cond_5
    if-eqz v0, :cond_6

    .line 7823
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7825
    :cond_6
    return-void

    .line 7796
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v2

    goto :goto_0

    .line 7800
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v2

    goto :goto_1
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 3411
    if-eqz p1, :cond_0

    .line 3412
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3416
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3417
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 3418
    return-void

    .line 3414
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setSaveEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x1

    .line 3475
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3476
    return-void

    :cond_0
    move v0, v1

    .line 3475
    goto :goto_0
.end method

.method public setScrollBarStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    const/high16 v2, 0x300

    .line 5815
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_0

    .line 5816
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5817
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5818
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5820
    :cond_0
    return-void
.end method

.method public setScrollContainer(Z)V
    .locals 2
    .parameter "isScrollContainer"

    .prologue
    const/high16 v1, 0x10

    .line 2932
    if-eqz p1, :cond_1

    .line 2933
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2934
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2935
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2937
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2944
    :goto_0
    return-void

    .line 2939
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2940
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2942
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 2
    .parameter "fadeScrollbars"

    .prologue
    .line 5777
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5778
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 5779
    .local v0, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 5780
    if-eqz p1, :cond_0

    .line 5781
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 5785
    :goto_0
    return-void

    .line 5783
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    const/4 v1, 0x0

    .line 7878
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eq v0, p1, :cond_2

    .line 7879
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7880
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 7881
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7882
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 7883
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 7885
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 7878
    goto :goto_0
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 2
    .parameter "soundEffectsEnabled"

    .prologue
    const/high16 v1, 0x800

    .line 3256
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3257
    return-void

    .line 3256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8180
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 8181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8185
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 8186
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 8131
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 8132
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 8195
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 8196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8200
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/View;->setTagInternal(Landroid/view/View;ILjava/lang/Object;)V

    .line 8201
    return-void
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 4624
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 4625
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 5637
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 5638
    if-eqz p1, :cond_0

    .line 5639
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 5642
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5644
    :cond_1
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .parameter "verticalScrollBarEnabled"

    .prologue
    .line 5757
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5758
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 5759
    invoke-direct {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 5760
    invoke-direct {p0}, Landroid/view/View;->recomputePadding()V

    .line 5762
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3165
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 3166
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3167
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 3166
    goto :goto_0
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 2
    .parameter "willNotCacheDrawing"

    .prologue
    const/high16 v1, 0x2

    .line 3334
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3335
    return-void

    .line 3334
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWillNotDraw(Z)V
    .locals 2
    .parameter "willNotDraw"

    .prologue
    const/16 v1, 0x80

    .line 3311
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 3312
    return-void

    .line 3311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final shouldMirror()Z
    .locals 1

    .prologue
    .line 2251
    iget-boolean v0, p0, Landroid/view/View;->mMirror:Z

    return v0
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 2569
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 8664
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 8665
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 8666
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8667
    return-void
.end method

.method unFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2716
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2717
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 2719
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2720
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 2722
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 7460
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7461
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7463
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 7445
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7446
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 7448
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 7485
    iget-object v0, p0, Landroid/view/View;->mBGDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotCacheDrawing()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 3344
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotDraw()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3321
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
