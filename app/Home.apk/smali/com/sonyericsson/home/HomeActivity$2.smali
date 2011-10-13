.class Lcom/sonyericsson/home/HomeActivity$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferView$TransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;

.field final synthetic val$vibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;Landroid/os/Vibrator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$2;->val$vibrator:Landroid/os/Vibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferEnd(Z)V
    .locals 2
    .parameter "successful"

    .prologue
    const/4 v1, 0x1

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$300(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 355
    return-void
.end method

.method public onTransferStart()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->val$vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->show()V

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$302(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$2;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$400(Lcom/sonyericsson/home/HomeActivity;)V

    .line 345
    :cond_0
    return-void
.end method
