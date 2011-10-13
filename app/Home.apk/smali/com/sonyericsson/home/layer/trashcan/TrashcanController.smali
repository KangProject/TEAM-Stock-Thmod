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

.field private mShowing:Z

.field private mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

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
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    .line 108
    const v1, 0x7f040004

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mHintShowAnimation:Landroid/view/animation/Animation;

    .line 109
    const v1, 0x7f040005

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mHintHideAnimation:Landroid/view/animation/Animation;

    .line 111
    const v1, 0x7f040039

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanHideAnimation:Landroid/view/animation/Animation;

    .line 112
    const v1, 0x7f04003a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanShowAnimation:Landroid/view/animation/Animation;

    .line 114
    const v1, 0x7f0c0036

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/HintView;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 117
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 119
    .local v0, vibrator:Landroid/os/Vibrator;
    const v1, 0x7f0c0037

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setTrashcanDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    new-instance v2, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/os/Vibrator;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;)V

    .line 147
    new-instance v1, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    sget v2, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTransferTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setTag(ILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mVibrateOnLidBounce:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mVibrateOnLidBounce:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/animation/Renderer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->startHinting(Lcom/sonyericsson/animation/Renderer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->onDrop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/animation/Renderer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
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
    .line 285
    if-eqz p5, :cond_0

    .line 286
    if-eqz p2, :cond_0

    .line 287
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 288
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 289
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 290
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 291
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->trashItem(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)V

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mVibrateOnLidBounce:Z

    .line 296
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->stopHinting(Lcom/sonyericsson/animation/Renderer;)V

    .line 297
    invoke-interface {p3, p5}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(Z)V

    .line 298
    return-void
.end method

.method private startHinting(Lcom/sonyericsson/animation/Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mHintShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->open()V

    .line 254
    const-string v0, "delete_action_on"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method private stopHinting(Lcom/sonyericsson/animation/Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mHintHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mDeleteHint:Lcom/sonyericsson/home/layer/HintView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setVisibility(I)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->close(I)V

    .line 269
    if-eqz p1, :cond_1

    .line 270
    const-string v0, "delete_action_off"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 272
    :cond_1
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide(Z)V

    .line 210
    return-void
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->clearAnimation()V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->stopHinting(Lcom/sonyericsson/animation/Renderer;)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    .line 227
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    return v0
.end method

.method public setTrashcanControllerListener(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mListener:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    .line 202
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->clearAnimation()V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanView:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mTrashcanShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->mShowing:Z

    .line 239
    :cond_0
    return-void
.end method
