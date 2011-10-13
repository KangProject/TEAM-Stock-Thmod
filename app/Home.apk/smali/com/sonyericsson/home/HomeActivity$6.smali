.class Lcom/sonyericsson/home/HomeActivity$6;
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
    .line 942
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public onTransferEnd(Z)V
    .locals 2
    .parameter "successful"

    .prologue
    const/4 v1, 0x1

    .line 956
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1000(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1200(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 959
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide()V

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 963
    return-void
.end method

.method public onTransferStart()V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 947
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    if-nez v0, :cond_2

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->show()V

    .line 950
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1002(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 951
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1100(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 953
    :cond_2
    return-void
.end method
