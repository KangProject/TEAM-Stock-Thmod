.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT:I = 0x1

.field public static final DIRECTIONALITY_NONE:I = 0x0

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field private static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field private static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field private static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field private static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mCachePaint:Landroid/graphics/Paint;

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mDirectionality:I

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mInvalidateRegion:Landroid/graphics/RectF;

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mMotionTarget:Landroid/view/View;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 299
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 296
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 300
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 296
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 305
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 306
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 310
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 296
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 311
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 312
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 3320
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3322
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 3323
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3326
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3327
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .locals 6
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 2103
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2104
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2105
    .local v1, count:I
    array-length v2, v0

    .line 2106
    .local v2, size:I
    if-ne p2, v1, :cond_1

    .line 2107
    if-ne v2, v1, :cond_0

    .line 2108
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2109
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2110
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2112
    :cond_0
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 2127
    :goto_0
    return-void

    .line 2113
    :cond_1
    if-ge p2, v1, :cond_3

    .line 2114
    if-ne v2, v1, :cond_2

    .line 2115
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2116
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2117
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2118
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2122
    :goto_1
    aput-object p1, v0, p2

    .line 2123
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0

    .line 2120
    :cond_2
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 2125
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/high16 v4, 0x40

    .line 2050
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2051
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2055
    :cond_0
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2056
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 2059
    :cond_1
    if-eqz p4, :cond_8

    .line 2060
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2065
    :goto_0
    if-gez p2, :cond_2

    .line 2066
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2069
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 2072
    if-eqz p4, :cond_9

    .line 2073
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 2078
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2079
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2082
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2083
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_5

    .line 2084
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2085
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2086
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2087
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_4

    .line 2088
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2090
    :cond_4
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 2093
    .end local v1           #lastKeepOn:Z
    :cond_5
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v2, :cond_6

    .line 2094
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2097
    :cond_6
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 2098
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2100
    :cond_7
    return-void

    .line 2062
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_8
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2075
    :cond_9
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 2179
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2180
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2181
    return-void
.end method

.method private finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 3337
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3338
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1

    .line 3339
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3340
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3342
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 3343
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3346
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3347
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3351
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3352
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3355
    :cond_2
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 3356
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 3359
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3361
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3363
    :cond_3
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .locals 9
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 3236
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3237
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3239
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3241
    .local v2, size:I
    const/4 v1, 0x0

    .line 3242
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 3244
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_0

    .line 3300
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 3247
    :sswitch_0
    if-ltz p2, :cond_1

    .line 3248
    move v1, p2

    .line 3249
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3250
    :cond_1
    if-ne p2, v8, :cond_2

    .line 3252
    move v1, v2

    .line 3253
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3254
    :cond_2
    if-ne p2, v7, :cond_0

    .line 3257
    move v1, v2

    .line 3258
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3264
    :sswitch_1
    if-ltz p2, :cond_3

    .line 3266
    move v1, p2

    .line 3267
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3268
    :cond_3
    if-ne p2, v8, :cond_4

    .line 3271
    move v1, v2

    .line 3272
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3273
    :cond_4
    if-ne p2, v7, :cond_0

    .line 3276
    move v1, v2

    .line 3277
    const/high16 v0, -0x8000

    goto :goto_0

    .line 3283
    :sswitch_2
    if-ltz p2, :cond_5

    .line 3285
    move v1, p2

    .line 3286
    const/high16 v0, 0x4000

    goto :goto_0

    .line 3287
    :cond_5
    if-ne p2, v8, :cond_6

    .line 3290
    const/4 v1, 0x0

    .line 3291
    const/4 v0, 0x0

    goto :goto_0

    .line 3292
    :cond_6
    if-ne p2, v7, :cond_0

    .line 3295
    const/4 v1, 0x0

    .line 3296
    const/4 v0, 0x0

    goto :goto_0

    .line 3244
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 341
    sget-object v5, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 344
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 345
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 346
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 347
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 345
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :pswitch_0
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_1

    .line 352
    :pswitch_1
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_1

    .line 355
    :pswitch_2
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_1

    .line 358
    :pswitch_3
    const/4 v5, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_1

    .line 361
    :pswitch_4
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_1

    .line 364
    :pswitch_5
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_1

    .line 367
    :pswitch_6
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 368
    .local v4, id:I
    if-lez v4, :cond_0

    .line 369
    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_1

    .line 373
    .end local v4           #id:I
    :pswitch_7
    sget-object v5, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_1

    .line 376
    :pswitch_8
    iget v5, p0, Landroid/view/ViewGroup;->mDirectionality:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/view/ViewGroup;->mDirectionality:I

    goto :goto_1

    .line 381
    .end local v2           #attr:I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private initViewGroup()V
    .locals 3

    .prologue
    const/16 v0, 0x80

    const/4 v2, 0x0

    .line 317
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 318
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 319
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 320
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 321
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 322
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 324
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 326
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 327
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 332
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/view/ViewGroup;->mDirectionality:I

    .line 335
    iget-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 337
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 338
    return-void

    :cond_0
    move v0, v2

    .line 332
    goto :goto_0
.end method

.method private notifyAnimationListener()V
    .locals 3

    .prologue
    .line 1516
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1517
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1519
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 1520
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 1525
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1528
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 1529
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1530
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1531
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 1535
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1536
    return-void
.end method

.method private removeFromArray(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2131
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2132
    .local v0, children:[Landroid/view/View;
    aget-object v2, v0, p1

    iput-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2133
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2134
    .local v1, count:I
    sub-int v2, v1, v4

    if-ne p1, v2, :cond_0

    .line 2135
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    .line 2142
    :goto_0
    return-void

    .line 2136
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 2137
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    sub-int/2addr v3, v4

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2138
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    goto :goto_0

    .line 2140
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private removeFromArray(II)V
    .locals 6
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 2146
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2147
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2149
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2150
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2152
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 2176
    :goto_0
    return-void

    .line 2156
    :cond_0
    if-ne v2, v1, :cond_1

    .line 2157
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 2158
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2159
    aput-object v5, v0, v3

    .line 2157
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2162
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 2163
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2162
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2168
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2170
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 2171
    aput-object v5, v0, v3

    .line 2170
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2175
    :cond_3
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_0
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .locals 2
    .parameter "index"
    .parameter "view"

    .prologue
    .line 2267
    const/4 v0, 0x0

    .line 2268
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_0

    .line 2269
    invoke-virtual {p2}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2270
    const/4 v0, 0x1

    .line 2273
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2274
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2279
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 2280
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p0, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2283
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2285
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2287
    if-eqz v0, :cond_3

    .line 2288
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 2290
    :cond_3
    return-void

    .line 2275
    :cond_4
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1

    .line 2276
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2260
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2261
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2262
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2264
    :cond_0
    return-void
.end method

.method private removeViewsInternal(II)V
    .locals 12
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2293
    iget-object v7, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2294
    .local v7, onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v7, :cond_3

    move v6, v11

    .line 2295
    .local v6, notifyListener:Z
    :goto_0
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2296
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_4

    move v2, v11

    .line 2297
    .local v2, detach:Z
    :goto_1
    const/4 v1, 0x0

    .line 2299
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2300
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 2302
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_2
    if-ge v5, v3, :cond_6

    .line 2303
    aget-object v8, v0, v5

    .line 2305
    .local v8, view:Landroid/view/View;
    if-ne v8, v4, :cond_0

    .line 2306
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2307
    move-object v1, v8

    .line 2310
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 2311
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2316
    :cond_1
    :goto_3
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2318
    if-eqz v6, :cond_2

    .line 2319
    invoke-interface {v7, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2302
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #notifyListener:Z
    .end local v8           #view:Landroid/view/View;
    :cond_3
    move v6, v10

    .line 2294
    goto :goto_0

    .restart local v4       #focused:Landroid/view/View;
    .restart local v6       #notifyListener:Z
    :cond_4
    move v2, v10

    .line 2296
    goto :goto_1

    .line 2312
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_1

    .line 2313
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3

    .line 2323
    .end local v8           #view:Landroid/view/View;
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 2325
    if-eqz v1, :cond_7

    .line 2326
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 2328
    :cond_7
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .locals 2
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 2934
    if-eqz p2, :cond_0

    .line 2935
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2939
    :goto_0
    return-void

    .line 2937
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
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
    .line 692
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 693
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
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
    .line 700
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 702
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 704
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_1

    .line 705
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 706
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 708
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 709
    aget-object v0, v1, v5

    .line 710
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_0

    .line 711
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 708
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 720
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_1
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 724
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 726
    :cond_3
    return-void
.end method

.method public addStatesFromChildren()Z
    .locals 1

    .prologue
    .line 3504
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 746
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 748
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 749
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 751
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 752
    aget-object v0, v1, v3

    .line 753
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 754
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 751
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 757
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1883
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1884
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 1896
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1897
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 1898
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1899
    if-nez v0, :cond_0

    .line 1900
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1903
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1904
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1913
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1914
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1915
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1916
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1917
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1944
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1945
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1946
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1947
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 1926
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1927
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 2014
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 2032
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2033
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 2034
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2035
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 1
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 2195
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2197
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 2198
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 2199
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2202
    :cond_0
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 2203
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 2204
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 2439
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2441
    if-gez p2, :cond_0

    .line 2442
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2445
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 2447
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2448
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2450
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2451
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2453
    :cond_1
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 834
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 835
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 836
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 837
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 838
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 840
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2759
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1966
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3512
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 3513
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 3515
    :cond_0
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2044
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2045
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 582
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 585
    :cond_0
    return-void
.end method

.method public clearDisappearingChildren()V
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3310
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3312
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 592
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 595
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 598
    :cond_0
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 1357
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1358
    .local v2, count:I
    const/4 v4, 0x0

    .line 1360
    .local v4, visibilities:[I
    if-eqz p3, :cond_1

    .line 1361
    new-array v4, v2, [I

    .line 1362
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1363
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1364
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 1365
    aget v5, v4, v3

    if-nez v5, :cond_0

    .line 1366
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1371
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1373
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_2

    .line 1374
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1375
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1379
    .end local v3           #i:I
    :cond_2
    return-object v0
.end method

.method protected debug(I)V
    .locals 7
    .parameter "depth"

    .prologue
    const-string v6, "View"

    .line 3077
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 3080
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3081
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3082
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3083
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    .end local v3           #output:Ljava/lang/String;
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_1

    .line 3086
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3087
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3088
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    .end local v3           #output:Ljava/lang/String;
    :cond_1
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3091
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3092
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 3093
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 3091
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3096
    .end local v0           #child:Landroid/view/View;
    :cond_2
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_3

    .line 3097
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 3098
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3099
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    .end local v3           #output:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2523
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2524
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 2535
    :cond_0
    return-void

    .line 2528
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2529
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2531
    const/4 v3, 0x1

    sub-int v2, v1, v3

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 2532
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2533
    aput-object v4, v0, v2

    .line 2531
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method protected detachViewFromParent(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 2488
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2489
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 2470
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2471
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2507
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 2508
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 1196
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1197
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p2, v3

    .line 1198
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1199
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1200
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1201
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 821
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p1, v3

    .line 822
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 823
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 824
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 825
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 826
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    :cond_0
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 803
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 804
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 805
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 806
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 807
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 809
    :cond_0
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .locals 5
    .parameter "consistency"

    .prologue
    .line 3022
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v3

    .line 3024
    .local v3, result:Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3025
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3026
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3027
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 3026
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3030
    :cond_1
    return v3
.end method

.method dispatchDetachedFromWindow()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1224
    iget-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1226
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1228
    .local v10, event:Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1229
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1230
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 1233
    .end local v0           #now:J
    .end local v10           #event:Landroid/view/MotionEvent;
    :cond_0
    iget v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1234
    .local v9, count:I
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1235
    .local v8, children:[Landroid/view/View;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_1

    .line 1236
    aget-object v2, v8, v11

    invoke-virtual {v2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1235
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1239
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 4
    .parameter "hint"

    .prologue
    .line 764
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 765
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 766
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 767
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 768
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 767
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 1387
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v10, v0

    .line 1388
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v7, v0

    .line 1389
    .local v7, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v16, v0

    .line 1391
    .local v16, flags:I
    and-int/lit8 v22, v16, 0x8

    if-eqz v22, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1392
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    move/from16 v5, v22

    .line 1394
    .local v5, cache:Z
    :goto_0
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 1395
    aget-object v6, v7, v17

    .line 1396
    .local v6, child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_0

    .line 1397
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 1398
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v20

    move/from16 v3, v17

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 1399
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 1400
    if-eqz v5, :cond_0

    .line 1401
    const/16 v22, 0x1

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1402
    const/16 v22, 0x1

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1394
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1392
    .end local v5           #cache:Z
    .end local v6           #child:Landroid/view/View;
    .end local v17           #i:I
    :cond_1
    const/16 v22, 0x0

    move/from16 v5, v22

    goto :goto_0

    .line 1407
    .restart local v5       #cache:Z
    .restart local v17       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object v9, v0

    .line 1408
    .local v9, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1409
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1412
    :cond_3
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 1414
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1415
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1417
    if-eqz v5, :cond_4

    .line 1418
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    const v23, 0x8000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1421
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 1426
    .end local v5           #cache:Z
    .end local v9           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v17           #i:I
    :cond_5
    const/16 v21, 0x0

    .line 1427
    .local v21, saveCount:I
    and-int/lit8 v22, v16, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const/16 v22, 0x1

    move/from16 v8, v22

    .line 1428
    .local v8, clipToPadding:Z
    :goto_2
    if-eqz v8, :cond_6

    .line 1429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 1430
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->shouldMirror()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasBackgroundDrawablePadding()Z

    move-result v22

    if-nez v22, :cond_a

    const/16 v22, 0x1

    move/from16 v18, v22

    .line 1431
    .local v18, mirror:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v22, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v23, v0

    :goto_4
    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v25, v0

    :goto_5
    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1438
    .end local v18           #mirror:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x41

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1439
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1441
    const/16 v19, 0x0

    .line 1442
    .local v19, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v13

    .line 1444
    .local v13, drawingTime:J
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 1445
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_6
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_10

    .line 1446
    aget-object v6, v7, v17

    .line 1447
    .restart local v6       #child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_8

    .line 1448
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 1445
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1427
    .end local v6           #child:Landroid/view/View;
    .end local v8           #clipToPadding:Z
    .end local v13           #drawingTime:J
    .end local v17           #i:I
    .end local v19           #more:Z
    :cond_9
    const/16 v22, 0x0

    move/from16 v8, v22

    goto/16 :goto_2

    .line 1430
    .restart local v8       #clipToPadding:Z
    :cond_a
    const/16 v22, 0x0

    move/from16 v18, v22

    goto/16 :goto_3

    .line 1431
    .restart local v18       #mirror:Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v23, v0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v25, v0

    goto/16 :goto_5

    .line 1452
    .end local v18           #mirror:Z
    .restart local v13       #drawingTime:J
    .restart local v19       #more:Z
    :cond_d
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_7
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_10

    .line 1453
    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v22

    aget-object v6, v7, v22

    .line 1454
    .restart local v6       #child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_e

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_f

    .line 1455
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 1452
    :cond_f
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1461
    .end local v6           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v11, v0

    .line 1463
    .local v11, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v12, v22, v23

    .line 1465
    .local v12, disappearingCount:I
    move/from16 v17, v12

    :goto_8
    if-ltz v17, :cond_11

    .line 1466
    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1467
    .restart local v6       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 1465
    add-int/lit8 v17, v17, -0x1

    goto :goto_8

    .line 1471
    .end local v6           #child:Landroid/view/View;
    .end local v11           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12           #disappearingCount:I
    :cond_11
    if-eqz v8, :cond_12

    .line 1472
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1476
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v16, v0

    .line 1478
    and-int/lit8 v22, v16, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 1479
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1482
    :cond_13
    and-int/lit8 v22, v16, 0x10

    if-nez v22, :cond_14

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v22

    if-eqz v22, :cond_14

    if-nez v19, :cond_14

    .line 1487
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1488
    new-instance v15, Landroid/view/ViewGroup$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 1493
    .local v15, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1495
    .end local v15           #end:Ljava/lang/Runnable;
    :cond_14
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 4

    .prologue
    .line 1183
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1184
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1185
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1186
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1187
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1189
    :cond_0
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
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
    .line 1277
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1278
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 860
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 861
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 865
    :goto_0
    return v0

    .line 862
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 863
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 865
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 847
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 848
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 852
    :goto_0
    return v0

    .line 849
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 850
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 852
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 873
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 874
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 878
    :goto_0
    return v0

    .line 875
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 876
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 878
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1207
    const/4 v2, 0x0

    .line 1208
    .local v2, populated:Z
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1209
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 4
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
    .line 1285
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1286
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1287
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1288
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1289
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 4
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
    .line 1260
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1261
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1262
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1263
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1264
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1266
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 1786
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1787
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1788
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1789
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1791
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    .line 1777
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1778
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1779
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1780
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1782
    :cond_0
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 4

    .prologue
    .line 1168
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1169
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1170
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1171
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1172
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
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
    .line 1302
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1303
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 899
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 900
    const/16 v20, 0x0

    .line 1016
    :goto_0
    return v20

    .line 903
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 904
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 905
    .local v17, xf:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 906
    .local v19, yf:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v11, v17, v20

    .line 907
    .local v11, scrolledXFloat:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 908
    .local v13, scrolledYFloat:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 910
    .local v8, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x8

    and-int v20, v20, v21

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 912
    .local v7, disallowIntercept:Z
    :goto_1
    if-nez v3, :cond_6

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 918
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 922
    :cond_1
    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 924
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 927
    float-to-int v12, v11

    .line 928
    .local v12, scrolledXInt:I
    float-to-int v14, v13

    .line 929
    .local v14, scrolledYInt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v5, v0

    .line 930
    .local v5, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v6, v0

    .line 932
    .local v6, count:I
    const/16 v20, 0x1

    sub-int v9, v6, v20

    .local v9, i:I
    :goto_2
    if-ltz v9, :cond_6

    .line 933
    aget-object v4, v5, v9

    .line 934
    .local v4, child:Landroid/view/View;
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0xc

    if-eqz v20, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 936
    :cond_3
    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 937
    invoke-virtual {v8, v12, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 939
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 940
    .local v16, xc:F
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 941
    .local v18, yc:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 942
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v4

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 943
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 945
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 946
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 910
    .end local v4           #child:Landroid/view/View;
    .end local v5           #children:[Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #disallowIntercept:Z
    .end local v9           #i:I
    .end local v12           #scrolledXInt:I
    .end local v14           #scrolledYInt:I
    .end local v16           #xc:F
    .end local v18           #yc:F
    :cond_4
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_1

    .line 932
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #children:[Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #disallowIntercept:Z
    .restart local v9       #i:I
    .restart local v12       #scrolledXInt:I
    .restart local v14       #scrolledYInt:I
    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 957
    .end local v4           #child:Landroid/view/View;
    .end local v5           #children:[Landroid/view/View;
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v12           #scrolledXInt:I
    .end local v14           #scrolledYInt:I
    :cond_6
    const/16 v20, 0x1

    move v0, v3

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    const/16 v20, 0x3

    move v0, v3

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    :cond_7
    const/16 v20, 0x1

    move/from16 v10, v20

    .line 960
    .local v10, isUpOrCancel:Z
    :goto_3
    if-eqz v10, :cond_8

    .line 963
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const v21, -0x80001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 968
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    move-object v15, v0

    .line 969
    .local v15, target:Landroid/view/View;
    if-nez v15, :cond_b

    .line 972
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x400

    and-int v20, v20, v21

    if-eqz v20, :cond_9

    .line 974
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 977
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_0

    .line 957
    .end local v10           #isUpOrCancel:Z
    .end local v15           #target:Landroid/view/View;
    :cond_a
    const/16 v20, 0x0

    move/from16 v10, v20

    goto :goto_3

    .line 982
    .restart local v10       #isUpOrCancel:Z
    .restart local v15       #target:Landroid/view/View;
    :cond_b
    if-nez v7, :cond_d

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 983
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 984
    .restart local v16       #xc:F
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 985
    .restart local v18       #yc:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 986
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 987
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 988
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 993
    :cond_c
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 997
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 1000
    .end local v16           #xc:F
    .end local v18           #yc:F
    :cond_d
    if-eqz v10, :cond_e

    .line 1001
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 1006
    :cond_e
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 1007
    .restart local v16       #xc:F
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 1008
    .restart local v18       #yc:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1010
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x400

    and-int v20, v20, v21

    if-eqz v20, :cond_f

    .line 1011
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1012
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v20, v0

    const v21, -0x4000001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1013
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 1016
    :cond_f
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 886
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 887
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 891
    :goto_0
    return v0

    .line 888
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 889
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 891
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 569
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 777
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 778
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 779
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 780
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 781
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    :cond_0
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 733
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 734
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 735
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 736
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 737
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 736
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 739
    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 790
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 791
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 792
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 793
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 794
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 793
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 796
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 42
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1550
    const/16 v32, 0x0

    .line 1552
    .local v32, more:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v23, v0

    .line 1553
    .local v23, cl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    .line 1554
    .local v26, ct:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    .line 1555
    .local v25, cr:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v22, v0

    .line 1557
    .local v22, cb:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    .line 1559
    .local v27, flags:I
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x100

    move v6, v0

    const/16 v7, 0x100

    if-ne v6, v7, :cond_1

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 1563
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x101

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1566
    :cond_1
    const/4 v11, 0x0

    .line 1567
    .local v11, transformToApply:Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 1568
    .local v5, a:Landroid/view/animation/Animation;
    const/16 v24, 0x0

    .line 1570
    .local v24, concatMatrix:Z
    if-eqz v5, :cond_9

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-nez v6, :cond_2

    .line 1572
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 1574
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v10, v0

    .line 1576
    .local v10, region:Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v30

    .line 1577
    .local v30, initialized:Z
    if-nez v30, :cond_3

    .line 1578
    sub-int v6, v25, v23

    sub-int v7, v22, v26

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1579
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 1580
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onAnimationStart()V

    .line 1583
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_4

    .line 1584
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 1586
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object v0, v5

    move-wide/from16 v1, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v32

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v11, v0

    .line 1589
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v24

    .line 1591
    if-eqz v32, :cond_5

    .line 1592
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1593
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x90

    move v6, v0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_7

    .line 1595
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x4

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1630
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v30           #initialized:Z
    :cond_5
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x20

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1632
    if-nez v24, :cond_d

    move/from16 v0, v23

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v14, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v15, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_d

    .line 1745
    :cond_6
    :goto_1
    return v32

    .line 1596
    .restart local v10       #region:Landroid/graphics/RectF;
    .restart local v30       #initialized:Z
    :cond_7
    and-int/lit8 v6, v27, 0x4

    if-nez v6, :cond_5

    .line 1599
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1600
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_0

    .line 1603
    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    invoke-virtual/range {v5 .. v11}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 1607
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1609
    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    add-int v31, v23, v6

    .line 1610
    .local v31, left:I
    iget v6, v10, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-int v38, v26, v6

    .line 1611
    .local v38, top:I
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    add-int v6, v6, v31

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int v7, v7, v38

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v38

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_0

    .line 1614
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v30           #initialized:Z
    .end local v31           #left:I
    .end local v38           #top:I
    :cond_9
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x800

    move v6, v0

    const/16 v7, 0x800

    if-ne v6, v7, :cond_5

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_a

    .line 1617
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 1619
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v29

    .line 1620
    .local v29, hasTransform:Z
    if-eqz v29, :cond_5

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v41

    .line 1622
    .local v41, transformType:I
    sget v6, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v41

    move v1, v6

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object v11, v6

    .line 1624
    :goto_2
    sget v6, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v6, v6, v41

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    move/from16 v24, v6

    :goto_3
    goto/16 :goto_0

    .line 1622
    :cond_b
    const/4 v6, 0x0

    move-object v11, v6

    goto :goto_2

    .line 1624
    :cond_c
    const/4 v6, 0x0

    move/from16 v24, v6

    goto :goto_3

    .line 1637
    .end local v29           #hasTransform:Z
    .end local v41           #transformType:I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->computeScroll()V

    .line 1639
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v36, v0

    .line 1640
    .local v36, sx:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v37, v0

    .line 1642
    .local v37, sy:I
    const/16 v35, 0x0

    .line 1643
    .local v35, scalingRequired:Z
    const/16 v20, 0x0

    .line 1644
    .local v20, cache:Landroid/graphics/Bitmap;
    const v6, 0x8000

    and-int v6, v6, v27

    const v7, 0x8000

    if-eq v6, v7, :cond_e

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x4000

    move v6, v0

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_f

    .line 1646
    :cond_e
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object v0, v6

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v35, v0

    .line 1650
    :cond_f
    if-nez v20, :cond_16

    const/4 v6, 0x1

    move/from16 v28, v6

    .line 1652
    .local v28, hasNoCache:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v33

    .line 1653
    .local v33, restoreTo:I
    if-eqz v28, :cond_17

    .line 1654
    sub-int v6, v23, v36

    int-to-float v6, v6

    sub-int v7, v26, v37

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1664
    :cond_10
    :goto_5
    const/high16 v19, 0x3f80

    .line 1666
    .local v19, alpha:F
    if-eqz v11, :cond_19

    .line 1667
    if-eqz v24, :cond_12

    .line 1668
    const/16 v39, 0x0

    .line 1669
    .local v39, transX:I
    const/16 v40, 0x0

    .line 1670
    .local v40, transY:I
    if-eqz v28, :cond_11

    .line 1671
    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    .line 1672
    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v40, v0

    .line 1676
    :cond_11
    move/from16 v0, v39

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move/from16 v0, v40

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1677
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1678
    move/from16 v0, v39

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1679
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1682
    .end local v39           #transX:I
    .end local v40           #transY:I
    :cond_12
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v19

    .line 1683
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_13

    .line 1684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1687
    :cond_13
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_14

    if-eqz v28, :cond_14

    .line 1688
    const/high16 v6, 0x437f

    mul-float v6, v6, v19

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1689
    .local v17, multipliedAlpha:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v6

    if-nez v6, :cond_18

    .line 1690
    move/from16 v0, v36

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v14, v0

    add-int v6, v36, v25

    sub-int v6, v6, v23

    int-to-float v15, v6

    add-int v6, v37, v22

    sub-int v6, v6, v26

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v18, 0x14

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1700
    .end local v17           #multipliedAlpha:I
    :cond_14
    :goto_6
    and-int/lit8 v6, v27, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    .line 1701
    if-eqz v28, :cond_1a

    .line 1702
    sub-int v6, v25, v23

    add-int v6, v6, v36

    sub-int v7, v22, v26

    add-int v7, v7, v37

    move-object/from16 v0, p1

    move/from16 v1, v36

    move/from16 v2, v37

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1712
    :cond_15
    :goto_7
    if-eqz v28, :cond_1d

    .line 1714
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_1c

    .line 1718
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, -0x600001

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1719
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1738
    :goto_8
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1740
    if-eqz v5, :cond_6

    if-nez v32, :cond_6

    .line 1741
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    .line 1742
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 1650
    .end local v19           #alpha:F
    .end local v28           #hasNoCache:Z
    .end local v33           #restoreTo:I
    :cond_16
    const/4 v6, 0x0

    move/from16 v28, v6

    goto/16 :goto_4

    .line 1656
    .restart local v28       #hasNoCache:Z
    .restart local v33       #restoreTo:I
    :cond_17
    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1657
    if-eqz v35, :cond_10

    .line 1659
    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v34, v6, v7

    .line 1660
    .local v34, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_5

    .line 1693
    .end local v34           #scale:F
    .restart local v17       #multipliedAlpha:I
    .restart local v19       #alpha:F
    :cond_18
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_6

    .line 1696
    .end local v17           #multipliedAlpha:I
    :cond_19
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_14

    .line 1697
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    goto/16 :goto_6

    .line 1704
    :cond_1a
    if-nez v35, :cond_1b

    .line 1705
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_7

    .line 1707
    :cond_1b
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_7

    .line 1721
    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 1724
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 1725
    .local v21, cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_1f

    .line 1726
    const/high16 v6, 0x437f

    mul-float v6, v6, v19

    float-to-int v6, v6

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1727
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x1000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1735
    :cond_1e
    :goto_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move v2, v6

    move v3, v7

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 1728
    :cond_1f
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x1000

    move v6, v0

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_1e

    .line 1729
    const/16 v6, 0xff

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1730
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x1001

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_9
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 3432
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 3434
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 3435
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    .line 3436
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3440
    :cond_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3441
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3443
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3444
    aget-object v0, v1, v3

    .line 3445
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 3446
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 3443
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3450
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 655
    :goto_0
    return-object v0

    .line 652
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 1825
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v4, :cond_0

    move-object v4, p0

    .line 1844
    :goto_0
    return-object v4

    .line 1829
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1830
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1832
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1833
    aget-object v2, v3, v0

    .line 1835
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1836
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1838
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 1839
    goto :goto_0

    .line 1832
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1844
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 5
    .parameter "tag"

    .prologue
    .line 1852
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 1871
    :goto_0
    return-object v4

    .line 1856
    :cond_0
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1857
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1859
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1860
    aget-object v2, v3, v0

    .line 1862
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1863
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 1865
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 1866
    goto :goto_0

    .line 1859
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1871
    .end local v2           #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "insets"

    .prologue
    .line 3406
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 3407
    .local v2, done:Z
    if-nez v2, :cond_0

    .line 3408
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3409
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3410
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 3411
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 3412
    if-eqz v2, :cond_1

    .line 3417
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_0
    return v2

    .line 3410
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 554
    :goto_0
    return-object v0

    .line 551
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 514
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 528
    :cond_1
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .parameter "region"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3371
    iget v6, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_0

    move v4, v7

    .line 3372
    .local v4, meOpaque:Z
    :goto_0
    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    move v6, v7

    .line 3388
    :goto_1
    return v6

    .end local v4           #meOpaque:Z
    :cond_0
    move v4, v8

    .line 3371
    goto :goto_0

    .line 3376
    .restart local v4       #meOpaque:Z
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 3377
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3378
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3379
    .local v2, count:I
    const/4 v5, 0x1

    .line 3380
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 3381
    aget-object v0, v1, v3

    .line 3382
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3383
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3384
    const/4 v5, 0x0

    .line 3380
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3388
    .end local v0           #child:Landroid/view/View;
    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    move v6, v8

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 3014
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2985
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "p"

    .prologue
    .line 3003
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 3140
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3142
    :goto_0
    return-object v1

    .line 3141
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3142
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 3128
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1512
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 1817
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 6
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 2734
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, v2, v3

    .line 2735
    .local v0, dx:I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, v2, v3

    .line 2736
    .local v1, dy:I
    if-eqz p3, :cond_0

    .line 2737
    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 2738
    iget v2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 2740
    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2741
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    move v2, v5

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 399
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getDirectionality()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "DIRECTIONALITY_NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "DIRECTIONALITY_LEFT_TO_RIGHT"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 468
    iget v0, p0, Landroid/view/ViewGroup;->mDirectionality:I

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    .line 2803
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 3427
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 2958
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 476
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 480
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 481
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 663
    iget v5, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_0

    move v5, v6

    .line 684
    :goto_0
    return v5

    .line 667
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    .line 668
    goto :goto_0

    .line 671
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 672
    .local v3, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v3, v5, :cond_3

    .line 673
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 674
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 676
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 677
    aget-object v0, v1, v4

    .line 678
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 679
    goto :goto_0

    .line 676
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    :cond_3
    move v5, v6

    .line 684
    goto :goto_0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 4
    .parameter "child"

    .prologue
    .line 3111
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3112
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3113
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3114
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_0

    move v3, v2

    .line 3118
    :goto_1
    return v3

    .line 3113
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3118
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 13
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/high16 v12, 0x20

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2546
    move-object v6, p0

    .line 2548
    .local v6, parent:Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2549
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_4

    .line 2550
    iget-object v4, v1, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 2551
    .local v4, location:[I
    iget v8, p1, Landroid/view/View;->mLeft:I

    aput v8, v4, v11

    .line 2552
    iget v8, p1, Landroid/view/View;->mTop:I

    aput v8, v4, v10

    .line 2557
    iget v8, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v8, v8, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_5

    move v2, v10

    .line 2560
    .local v2, drawAnimation:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_6

    move v3, v10

    .line 2564
    .local v3, isOpaque:Z
    :goto_1
    if-eqz v3, :cond_7

    const/high16 v8, 0x40

    move v5, v8

    .line 2567
    .local v5, opaqueFlag:I
    :cond_0
    :goto_2
    const/4 v7, 0x0

    .line 2568
    .local v7, view:Landroid/view/View;
    instance-of v8, v6, Landroid/view/View;

    if-eqz v8, :cond_1

    .line 2569
    move-object v0, v6

    check-cast v0, Landroid/view/View;

    move-object v7, v0

    .line 2572
    :cond_1
    if-eqz v2, :cond_2

    .line 2573
    if-eqz v7, :cond_8

    .line 2574
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 2582
    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x60

    and-int/2addr v8, v9

    if-eq v8, v12, :cond_3

    .line 2583
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    or-int/2addr v8, v5

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 2586
    :cond_3
    invoke-interface {v6, v4, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v6

    .line 2587
    if-nez v6, :cond_0

    .line 2589
    .end local v2           #drawAnimation:Z
    .end local v3           #isOpaque:Z
    .end local v4           #location:[I
    .end local v5           #opaqueFlag:I
    .end local v7           #view:Landroid/view/View;
    :cond_4
    return-void

    .restart local v4       #location:[I
    :cond_5
    move v2, v11

    .line 2557
    goto :goto_0

    .restart local v2       #drawAnimation:Z
    :cond_6
    move v3, v11

    .line 2560
    goto :goto_1

    .restart local v3       #isOpaque:Z
    :cond_7
    move v5, v12

    .line 2564
    goto :goto_2

    .line 2575
    .restart local v5       #opaqueFlag:I
    .restart local v7       #view:Landroid/view/View;
    :cond_8
    instance-of v8, v6, Landroid/view/ViewRoot;

    if-eqz v8, :cond_2

    .line 2576
    move-object v0, v6

    check-cast v0, Landroid/view/ViewRoot;

    move-object v8, v0

    iput-boolean v10, v8, Landroid/view/ViewRoot;->mIsAnimating:Z

    goto :goto_3
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 7
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2604
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 2605
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    .line 2607
    aget v2, p1, v5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2610
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 2611
    .local v0, left:I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 2613
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    .line 2615
    :cond_0
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2617
    aput v0, p1, v5

    .line 2618
    aput v1, p1, v6

    .line 2620
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 2635
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_0
    return-object v2

    .line 2623
    :cond_1
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2625
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v2, p1, v5

    .line 2626
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    aput v2, p1, v6

    .line 2628
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    aget v3, p1, v5

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    aget v4, p1, v6

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2631
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 2635
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 2849
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

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

.method public isAnimationCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2819
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 2916
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 2884
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 3177
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3179
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3181
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3184
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3185
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 3204
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3206
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 3209
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 3213
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3214
    return-void
.end method

.method protected measureChildren(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 3156
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3157
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3158
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3159
    aget-object v0, v1, v2

    .line 3160
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 3161
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 3158
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3164
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 2720
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2721
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2723
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2724
    aget-object v3, v0, v2

    .line 2725
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 2726
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 2723
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2728
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 2645
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 2646
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .locals 7
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v6, 0x0

    .line 2666
    if-ne p1, p0, :cond_0

    .line 2710
    :goto_0
    return-void

    .line 2670
    :cond_0
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2675
    .local v2, theParent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v2, :cond_4

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    if-eq v2, p0, :cond_4

    .line 2677
    if-eqz p3, :cond_2

    .line 2678
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2680
    if-eqz p4, :cond_1

    .line 2681
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2682
    .local v1, p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2693
    .end local v1           #p:Landroid/view/View;
    :cond_1
    :goto_2
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 2694
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_1

    .line 2685
    :cond_2
    if-eqz p4, :cond_3

    .line 2686
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2687
    .restart local v1       #p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2689
    .end local v1           #p:Landroid/view/View;
    :cond_3
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    .line 2699
    :cond_4
    if-ne v2, p0, :cond_6

    .line 2700
    if-eqz p3, :cond_5

    .line 2701
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 2704
    :cond_5
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 2708
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "parameter must be a descendant of this view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 2655
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 2656
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 1343
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 1346
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 1347
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1349
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 1353
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1322
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 1325
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 1326
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1327
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1329
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1330
    aget-object v0, v1, v3

    .line 1331
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    .line 1332
    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1333
    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1329
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1337
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1339
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .locals 12
    .parameter "consistency"

    .prologue
    const/high16 v10, 0x60

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "ViewConsistency"

    .line 3038
    invoke-super {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v6

    .line 3040
    .local v6, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_1

    move v1, v9

    .line 3041
    .local v1, checkLayout:Z
    :goto_0
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_2

    move v0, v9

    .line 3043
    .local v0, checkDrawing:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 3044
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3045
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3046
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 3047
    aget-object v7, v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_0

    .line 3048
    const/4 v6, 0x0

    .line 3049
    const-string v7, "ViewConsistency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no parent/a parent that is not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_1
    move v1, v8

    .line 3040
    goto :goto_0

    .restart local v1       #checkLayout:Z
    :cond_2
    move v0, v8

    .line 3041
    goto :goto_1

    .line 3055
    .restart local v0       #checkDrawing:Z
    :cond_3
    if-eqz v0, :cond_4

    .line 3057
    iget v7, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_4

    .line 3058
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3059
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_4

    instance-of v7, v5, Landroid/view/ViewRoot;

    if-nez v7, :cond_4

    .line 3060
    check-cast v5, Landroid/view/View;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget v7, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_4

    .line 3061
    const/4 v6, 0x0

    .line 3062
    const-string v7, "ViewConsistency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewGroup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is dirty but its parent is not: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_4
    return v6
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 3454
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_0

    .line 3455
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 3478
    :goto_0
    return-object v5

    .line 3458
    :cond_0
    const/4 v3, 0x0

    .line 3459
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3460
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 3461
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 3463
    .local v0, childState:[I
    if-eqz v0, :cond_1

    .line 3464
    array-length v5, v0

    add-int/2addr v3, v5

    .line 3460
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3468
    .end local v0           #childState:[I
    :cond_2
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 3470
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    .line 3471
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 3473
    .restart local v0       #childState:[I
    if-eqz v0, :cond_3

    .line 3474
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 3470
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #childState:[I
    :cond_4
    move-object v5, v4

    .line 3478
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v8, 0x1

    .line 1139
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1140
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1141
    const/4 v6, 0x0

    .line 1142
    .local v6, index:I
    const/4 v5, 0x1

    .line 1143
    .local v5, increment:I
    move v3, v2

    .line 1149
    .local v3, end:I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1150
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 1151
    aget-object v0, v1, v4

    .line 1152
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_1

    .line 1153
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    .line 1158
    .end local v0           #child:Landroid/view/View;
    :goto_2
    return v7

    .line 1145
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    sub-int v6, v2, v8

    .line 1146
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1147
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_0

    .line 1150
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_1
    add-int/2addr v4, v5

    goto :goto_1

    .line 1158
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 815
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 816
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 817
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 2335
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2336
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2337
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2338
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2350
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2351
    .local v2, count:I
    if-gtz v2, :cond_1

    .line 2391
    :cond_0
    :goto_0
    return-void

    .line 2355
    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2356
    .local v0, children:[Landroid/view/View;
    iput v10, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2358
    iget-object v6, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2359
    .local v6, listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v6, :cond_5

    move v7, v11

    .line 2360
    .local v7, notify:Z
    :goto_1
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2361
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_6

    move v3, v11

    .line 2362
    .local v3, detach:Z
    :goto_2
    const/4 v1, 0x0

    .line 2364
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2366
    sub-int v5, v2, v11

    .local v5, i:I
    :goto_3
    if-ltz v5, :cond_8

    .line 2367
    aget-object v8, v0, v5

    .line 2369
    .local v8, view:Landroid/view/View;
    if-ne v8, v4, :cond_2

    .line 2370
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2371
    move-object v1, v8

    .line 2374
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 2375
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2380
    :cond_3
    :goto_4
    if-eqz v7, :cond_4

    .line 2381
    invoke-interface {v6, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2384
    :cond_4
    iput-object v12, v8, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2385
    aput-object v12, v0, v5

    .line 2366
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v7           #notify:Z
    .end local v8           #view:Landroid/view/View;
    :cond_5
    move v7, v10

    .line 2359
    goto :goto_1

    .restart local v4       #focused:Landroid/view/View;
    .restart local v7       #notify:Z
    :cond_6
    move v3, v10

    .line 2361
    goto :goto_2

    .line 2376
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_3

    .line 2377
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_4

    .line 2388
    .end local v8           #view:Landroid/view/View;
    :cond_8
    if-eqz v1, :cond_0

    .line 2389
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 2407
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2408
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2411
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2412
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2417
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 2418
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2420
    :cond_2
    return-void

    .line 2413
    :cond_3
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2414
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2210
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2211
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2213
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2242
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2244
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2245
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 2222
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2223
    return-void
.end method

.method public removeViews(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2254
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2255
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2256
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2257
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 0
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2233
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2234
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 498
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_3

    .line 499
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 503
    :cond_2
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 505
    :cond_3
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 1024
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 1039
    :cond_0
    :goto_1
    return-void

    .line 1024
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1029
    :cond_2
    if-eqz p1, :cond_3

    .line 1030
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1036
    :goto_2
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 1032
    :cond_3
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_2
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 1104
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_0

    .line 1116
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1106
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1113
    :goto_0
    return v2

    .line 1108
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1109
    .local v1, took:Z
    if-eqz v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 1112
    .end local v1           #took:Z
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1113
    .restart local v1       #took:Z
    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 1104
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 3395
    if-eqz p1, :cond_0

    .line 3396
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3397
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 3398
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 3401
    :cond_0
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .locals 1

    .prologue
    .line 2780
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2781
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .locals 1
    .parameter "addsStates"

    .prologue
    .line 3488
    if-eqz p1, :cond_0

    .line 3489
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3494
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 3495
    return-void

    .line 3491
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "always"

    .prologue
    .line 2870
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2871
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2834
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2835
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 1311
    if-nez p1, :cond_0

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 1312
    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1313
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1314
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1315
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1318
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2930
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2931
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2901
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2902
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 1
    .parameter "clipChildren"

    .prologue
    .line 1757
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1758
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter "clipToPadding"

    .prologue
    .line 1769
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1770
    return-void
.end method

.method public setDescendantFocusability(I)V
    .locals 2
    .parameter "focusability"

    .prologue
    .line 411
    sparse-switch p1, :sswitch_data_0

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :sswitch_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 421
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 422
    return-void

    .line 411
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDirectionality(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 439
    packed-switch p1, :pswitch_data_0

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of DIRECTIONALITY_NONE, DIRECTIONALITY_LEFT_TO_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :pswitch_0
    iput p1, p0, Landroid/view/ViewGroup;->mDirectionality:I

    .line 448
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 449
    return-void

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 2790
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2791
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 2792
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2794
    :cond_0
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "animationListener"

    .prologue
    .line 3528
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3529
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1999
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2000
    return-void
.end method

.method public setPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1248
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1249
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1253
    :goto_0
    return-void

    .line 1251
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_0
.end method

.method public setPersistentDrawingCache(I)V
    .locals 1
    .parameter "drawingCacheToKeep"

    .prologue
    .line 2973
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 2974
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1808
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1809
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 534
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLayoutAnimation()V
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_0

    .line 2768
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2769
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2771
    :cond_0
    return-void
.end method

.method unFocus()V
    .locals 1

    .prologue
    .line 609
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 610
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 613
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 614
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1953
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1956
    :cond_0
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_1

    .line 1957
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1959
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1960
    return-void
.end method
