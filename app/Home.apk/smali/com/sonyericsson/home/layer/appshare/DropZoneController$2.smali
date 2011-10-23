.class Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;
.super Ljava/lang/Object;
.source "DropZoneController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/DropZoneController;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDynamics:Lcom/sonyericsson/util/SpringDynamics;

.field private mExpandRunnable:Ljava/lang/Runnable;

.field private mIsHinting:Z

.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

.field final synthetic val$dropZoneHeight:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    iput p2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->val$dropZoneHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mIsHinting:Z

    .line 181
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2$1;-><init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mExpandRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lcom/sonyericsson/util/SpringDynamics;

    invoke-direct {v0}, Lcom/sonyericsson/util/SpringDynamics;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/util/SpringDynamics;->setFriction(F)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    const/high16 v1, 0x43fa

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->setSpring(FF)V

    .line 200
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;)Lcom/sonyericsson/util/SpringDynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    return-object v0
.end method

.method private startHinting()V
    .locals 6

    .prologue
    const v5, 0x3f333333

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mIsHinting:Z

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;->onHint()V

    .line 235
    :cond_0
    return-void
.end method

.method private stopHinting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v1}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v2}, Lcom/sonyericsson/util/SpringDynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/util/SpringDynamics;->setState(FFJ)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMinPosition(F)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mDynamics:Lcom/sonyericsson/util/SpringDynamics;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/util/SpringDynamics;->setMaxPosition(F)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mIsHinting:Z

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;->onCancelHint()V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->stopHinting()V

    .line 215
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 2
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 218
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(I)V

    .line 219
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->stopHinting()V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->showAppShareDialog(Lcom/sonyericsson/home/data/Info;)V

    .line 221
    return-void
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$300(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-ge p3, v0, :cond_1

    .line 204
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->mIsHinting:Z

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;->startHinting()V

    .line 207
    :cond_0
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
