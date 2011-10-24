.class Lcom/sonyericsson/home/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->setupTransferView(Lcom/sonyericsson/home/transfer/TransferView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 995
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1022
    const/4 v1, 0x0

    .line 1024
    .local v1, tookFocus:Z
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->requestFocus()Z

    move-result v1

    .line 1039
    :cond_0
    :goto_0
    return v1

    .line 1026
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1028
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/stage/StageController;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1029
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->getOpenCorner()I

    move-result v0

    .line 1031
    .local v0, cornerIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1032
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->requestFocus(I)Z

    move-result v1

    goto :goto_0

    .line 1034
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method public onUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/16 v3, 0x42

    const/16 v2, 0x11

    .line 998
    const/4 v0, 0x0

    .line 1000
    .local v0, handled:Z
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1001
    if-ne p2, v3, :cond_1

    .line 1002
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->moveToRightPane()V

    .line 1003
    const/4 v0, 0x1

    .line 1018
    :cond_0
    :goto_0
    return v0

    .line 1004
    :cond_1
    if-ne p2, v2, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->moveToLeftPane()V

    .line 1006
    const/4 v0, 0x1

    goto :goto_0

    .line 1008
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1009
    if-ne p2, v3, :cond_3

    .line 1010
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->moveToRightPane()V

    .line 1011
    const/4 v0, 0x1

    goto :goto_0

    .line 1012
    :cond_3
    if-ne p2, v2, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->moveToLeftPane()V

    .line 1014
    const/4 v0, 0x1

    goto :goto_0
.end method
