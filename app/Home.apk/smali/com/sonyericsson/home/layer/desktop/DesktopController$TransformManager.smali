.class Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformManager"
.end annotation


# static fields
.field private static final DAMPING_RATIO:F = 0.9f

.field private static final POSITION_TOLERANCE:F = 0.01f

.field private static final STATE_TRANSFORM_ACTIVE:I = 0x1

.field private static final STATE_TRANSFORM_ANIMATING:I = 0x2

.field private static final STATE_TRANSFORM_INACTIVE:I = 0x0

.field private static final STIFFNESS:F = 100.0f

.field private static final TRANSFORM_THRESHOLD:F = 0.9f

.field private static final VELOCITY_TOLERANCE:F = 0.1f


# instance fields
.field private final indicatorAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

.field private mClick:Z

.field private mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

.field private mIsOkToTransform:Z

.field private final mOnScaleGestureListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

.field private final mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private final mProgressRunnable:Ljava/lang/Runnable;

.field private mScaleFactor:F

.field private final mScaleGestureDetector:Lremove/me/when/froyo/comes/ScaleGestureDetector;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTouchSlop:I

.field private mTransformState:I

.field private mVelocity:F

.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field private final transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Landroid/util/DisplayMetrics;)V
    .locals 6
    .parameter
    .parameter "displayMetrics"

    .prologue
    const/4 v5, 0x0

    .line 426
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v2, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-direct {v2}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->indicatorAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    .line 314
    iput v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 317
    iput-boolean v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    .line 325
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mVelocity:F

    .line 345
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$1;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressRunnable:Ljava/lang/Runnable;

    .line 370
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager$2;-><init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mOnScaleGestureListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

    .line 427
    new-instance v2, Lremove/me/when/froyo/comes/ScaleGestureDetector;

    invoke-static {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mOnScaleGestureListener:Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, v3, v4}, Lremove/me/when/froyo/comes/ScaleGestureDetector;-><init>(Landroid/content/Context;Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleGestureDetector:Lremove/me/when/froyo/comes/ScaleGestureDetector;

    .line 428
    new-instance v2, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v2}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 429
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v3, 0x42c8

    const v4, 0x3f666666

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 431
    const/4 v1, 0x0

    .line 432
    .local v1, transformBottomMargin:I
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-direct {v2, v5}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    .line 434
    invoke-static {p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchSlop:I

    .line 438
    const/high16 v0, 0x4000

    .line 439
    .local v0, PROGRESS_RATIO:F
    const/high16 v2, 0x4000

    iget v3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v3, v4

    iget v4, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleFactor:F

    .line 442
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->activateTransform()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->startTransformAnimations()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->runTransform(FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->stopTransformAnimations()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->deactivateTransform()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->setTransformProgress(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mVelocity:F

    return v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mVelocity:F

    return p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 273
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    return v0
.end method

.method private activateTransform()V
    .locals 3

    .prologue
    .line 494
    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    if-eqz v1, :cond_0

    .line 495
    const-string v1, "TransformManager"

    const-string v2, "Illegal state in activateTransform()"

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->transform(Lcom/sonyericsson/paneview/Transformer;)V

    .line 499
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->indicatorAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;->setAlpha(F)V

    .line 502
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    .line 503
    .local v0, progress:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->hideOpenGLAdvWidgets()V

    .line 509
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 510
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewActivated()V

    .line 513
    :cond_2
    return-void
.end method

.method private deactivateTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 554
    iget v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 555
    const-string v1, "TransformManager"

    const-string v2, "Illegal state in deactivateTransform()"

    invoke-static {v1, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/paneview/PaneView;->transform(Lcom/sonyericsson/paneview/Transformer;)V

    .line 559
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/home/layer/PaneIndicator;->setVisibility(I)V

    .line 562
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v0

    .line 563
    .local v0, progress:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->showOpenGLAdvWidgets()V

    .line 569
    :cond_1
    iput v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 570
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 571
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewDeactivated()V

    .line 573
    :cond_2
    return-void
.end method

.method private runTransform(FF)V
    .locals 4
    .parameter "snap"
    .parameter "velocity"

    .prologue
    .line 481
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 483
    .local v0, now:J
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v3

    invoke-virtual {v2, v3, p2, v0, v1}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 484
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 485
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 486
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 487
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    .line 488
    return-void
.end method

.method private setTransformProgress(F)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 465
    const/4 v1, 0x0

    const v2, 0x7f7fffff

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v0

    .line 466
    .local v0, clampedProgress:F
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->setProgress(F)V

    .line 467
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->indicatorAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;->setAlpha(F)V

    .line 468
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewProgress(F)V

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->invalidate()V

    .line 472
    return-void
.end method

.method private startTransformAnimations()V
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 520
    const-string v0, "TransformManager"

    const-string v1, "Illegal state in startTransformAnimations()"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->indicatorAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 526
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewAnimationsStarted()V

    .line 530
    :cond_1
    return-void
.end method

.method private stopTransformAnimations()V
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 537
    const-string v0, "TransformManager"

    const-string v1, "Illegal state in stopTransformAnimations()"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->clearAnimation()V

    .line 544
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;->onOverviewAnimationsStopped()V

    .line 548
    :cond_1
    return-void
.end method


# virtual methods
.method public isTransformed()Z
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveTransform()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->startTransformAnimations()V

    .line 453
    :cond_0
    iget v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTransformState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 455
    invoke-direct {p0, v2, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->runTransform(FF)V

    .line 457
    :cond_1
    return-void
.end method

.method public onInterceptTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 623
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->hasWidgets()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_2

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mIsOkToTransform:Z

    .line 633
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mIsOkToTransform:Z

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleGestureDetector:Lremove/me/when/froyo/comes/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 637
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->isTransformed()Z

    move-result v0

    return v0

    .line 629
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mIsOkToTransform:Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f666666

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 577
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->isTransformed()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v6

    .line 618
    :goto_0
    return v2

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mScaleGestureDetector:Lremove/me/when/froyo/comes/ScaleGestureDetector;

    invoke-virtual {v2, p2}, Lremove/me/when/froyo/comes/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 583
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 584
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownX:I

    .line 585
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownY:I

    .line 587
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    .line 588
    iput-boolean v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    .line 589
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownX:I

    iget v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownY:I

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->getItemAt(II)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 594
    :cond_1
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownX:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchDownY:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 596
    :cond_2
    iput-boolean v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    .line 597
    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 601
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v5, :cond_4

    .line 602
    iput-boolean v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    .line 603
    iput-object v8, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 606
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 607
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClick:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mProgressDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_5

    .line 608
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    if-eqz v2, :cond_5

    .line 609
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->mClickedItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v2

    iget v1, v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    .line 610
    .local v1, pane:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/paneview/PaneView;->getPaneRelativeOffset(I)I

    move-result v0

    .line 611
    .local v0, offset:I
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->leaveTransform()V

    .line 612
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->transformer:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;->offsetSourceRects(I)V

    .line 613
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$TransformManager;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/paneview/PaneView;->moveToPane(I)V

    .end local v0           #offset:I
    .end local v1           #pane:I
    :cond_5
    move v2, v5

    .line 618
    goto/16 :goto_0
.end method
