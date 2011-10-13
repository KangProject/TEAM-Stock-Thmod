.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1$1;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;
    .locals 6
    .parameter "view"
    .parameter "renderer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;->onTransferCanceled()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    iget-object v2, v2, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;

    iget-object v3, v3, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$300(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 255
    if-eqz p2, :cond_1

    .line 258
    const-string v0, "reset_closest_vertex"

    invoke-interface {p2, v0, v4, v4, v5}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 260
    const-string v0, "set_alpha"

    invoke-interface {p2, v0, v4, v4, v5}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 263
    :cond_1
    return-object p2
.end method

.method public onTransferCompleted()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method
