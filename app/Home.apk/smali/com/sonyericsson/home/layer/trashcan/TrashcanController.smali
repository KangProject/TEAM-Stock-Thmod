.class public Lcom/sonyericsson/home/layer/trashcan/TrashcanController;
.super Ljava/lang/Object;
.source "TrashcanController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;
    }
.end annotation


# static fields
.field private static final MAX_TRASHCAN_CLOSE_DELAY:I = 0x190


# instance fields
.field private mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

.field private mHintHideAnimation:Landroid/view/animation/Animation;

.field private mHintShowAnimation:Landroid/view/animation/Animation;

.field private mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

.field private mOpen:Z

.field private mOrientationLandscape:Z

.field private mShowing:Z

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

.field private mTrashInfo:Lcom/sonyericsson/home/data/Info;

.field private mTrashcanHideAnimation:Landroid/view/animation/Animation;

.field private mTrashcanShowAnimation:Landroid/view/animation/Animation;

.field private mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

.field private mVibrateOnLidBounce:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .parameter "context"
    .parameter "trashcanView"

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    .line 80
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mOpen:Z

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mOrientationLandscape:Z

    .line 124
    const v1, 0x7f040006

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mHintShowAnimation:Landroid/view/animation/Animation;

    .line 125
    const v1, 0x7f040007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mHintHideAnimation:Landroid/view/animation/Animation;

    .line 127
    const v1, 0x7f04003f

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanHideAnimation:Landroid/view/animation/Animation;

    .line 128
    const v1, 0x7f040040

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanShowAnimation:Landroid/view/animation/Animation;

    .line 130
    const v1, 0x7f0e003a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/HintView;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 133
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 135
    .local v0, vibrator:Landroid/os/Vibrator;
    const v1, 0x7f0e003b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setTrashcanDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    new-instance v2, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/os/Vibrator;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;)V

    .line 165
    new-instance v1, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    sget v2, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setTag(ILjava/lang/Object;)V

    .line 215
    return-void

    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_0
    move v1, v3

    .line 122
    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashInfo:Lcom/sonyericsson/home/data/Info;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mVibrateOnLidBounce:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mVibrateOnLidBounce:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mOrientationLandscape:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/animation/Renderer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->startHinting(Lcom/sonyericsson/animation/Renderer;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->onDrop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/animation/Renderer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->stopHinting(Lcom/sonyericsson/animation/Renderer;)V

    return-void
.end method

.method private onDrop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;Z)V
    .locals 5
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"
    .parameter "info"
    .parameter "successful"

    .prologue
    .line 326
    if-eqz p5, :cond_0

    .line 327
    if-eqz p2, :cond_0

    .line 328
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 329
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 330
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 331
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 332
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->trashItem(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)V

    .line 333
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mVibrateOnLidBounce:Z

    .line 337
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->stopHinting(Lcom/sonyericsson/animation/Renderer;)V

    .line 338
    invoke-interface {p3, p5}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 339
    return-void
.end method

.method private startHinting(Lcom/sonyericsson/animation/Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mHintShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->open()V

    .line 295
    const-string v0, "delete_action_on"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 296
    return-void
.end method

.method private stopHinting(Lcom/sonyericsson/animation/Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mHintHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->close(I)V

    .line 310
    if-eqz p1, :cond_1

    .line 311
    const-string v0, "delete_action_off"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 313
    :cond_1
    return-void
.end method


# virtual methods
.method public getTrashInfo()Lcom/sonyericsson/home/data/Info;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide(Z)V

    .line 232
    return-void
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->clearAnimation()V

    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->stopHinting(Lcom/sonyericsson/animation/Renderer;)V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    .line 249
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mOpen:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;->onClosed()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->onDestroy()V

    .line 284
    return-void
.end method

.method public setTrashcanControllerListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    .line 224
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->clearAnimation()V

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    .line 261
    :cond_0
    return-void
.end method
