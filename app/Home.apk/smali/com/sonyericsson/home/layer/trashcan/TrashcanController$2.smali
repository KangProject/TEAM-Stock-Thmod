.class Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;
.super Ljava/lang/Object;
.source "TrashcanController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/trashcan/TrashcanController;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHinting:Z

.field final synthetic this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/animation/Renderer;)V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    .line 185
    :cond_0
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 7
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 167
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v5

    .line 168
    .local v5, info:Lcom/sonyericsson/home/data/Info;
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    move-result-object v6

    new-instance v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;)V

    invoke-interface {v6, v5, v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;->onDrop(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 177
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    .line 178
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;Z)V

    goto :goto_0
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 152
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez p3, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$300(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getHeight()I

    move-result v1

    if-ge p3, v1, :cond_2

    instance-of v1, v0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-nez v1, :cond_0

    if-lez p2, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$300(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getWidth()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 156
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    if-nez v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v1, p4}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$400(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/animation/Renderer;)V

    .line 158
    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    :cond_1
    move v1, v2

    .line 162
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
