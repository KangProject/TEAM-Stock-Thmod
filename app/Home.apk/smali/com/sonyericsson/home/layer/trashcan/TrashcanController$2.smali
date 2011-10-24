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
    .line 165
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$900(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/animation/Renderer;)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    .line 206
    :cond_0
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 6
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$202(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/data/Info;

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;-><init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;->onDrop(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 198
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    .line 199
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$800(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;I)V

    goto :goto_0
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 5
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 170
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v2, :cond_6

    :cond_0
    move v1, v3

    .line 171
    .local v1, isWidgetInfo:Z
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$400(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-lez p3, :cond_7

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getHeight()I

    move-result v2

    if-ge p3, v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-lez p2, :cond_7

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$600(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->getWidth()I

    move-result v2

    if-ge p2, v2, :cond_7

    .line 177
    :cond_4
    iget-boolean v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    if-nez v2, :cond_5

    .line 178
    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v2, p4}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$700(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Lcom/sonyericsson/animation/Renderer;)V

    .line 179
    iput-boolean v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->mHinting:Z

    :cond_5
    move v2, v3

    .line 183
    :goto_1
    return v2

    .end local v1           #isWidgetInfo:Z
    :cond_6
    move v1, v4

    .line 170
    goto :goto_0

    .restart local v1       #isWidgetInfo:Z
    :cond_7
    move v2, v4

    .line 183
    goto :goto_1
.end method
