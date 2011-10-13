.class Lcom/sonyericsson/home/HomeActivity$11;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createTrashcan()V
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
    .line 1150
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$300(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 1160
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide()V

    .line 1161
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$302(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1163
    :cond_0
    return-void
.end method

.method public onDrop(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 2
    .parameter "info"
    .parameter "dropListener"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$1000(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 1154
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onDeleteDrop(Lcom/sonyericsson/home/data/InfoGroupInterface;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 1155
    return-void
.end method
