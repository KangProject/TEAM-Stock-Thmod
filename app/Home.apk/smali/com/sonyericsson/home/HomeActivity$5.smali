.class Lcom/sonyericsson/home/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferView$TransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->setupTransferView(Lcom/sonyericsson/home/transfer/TransferView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mVibrator:Landroid/os/Vibrator;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 954
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public onTransferEnd(Z)V
    .locals 2
    .parameter "successful"

    .prologue
    const/4 v1, 0x1

    .line 975
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1000(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 978
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide()V

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hide()V

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 983
    return-void
.end method

.method public onTransferStart(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 958
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 959
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v1

    if-nez v1, :cond_2

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->show()V

    .line 962
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 963
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 967
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 968
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v1, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v1, :cond_4

    .line 969
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->show()V

    .line 972
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :cond_4
    return-void
.end method
