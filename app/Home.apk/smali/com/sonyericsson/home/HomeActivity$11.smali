.class Lcom/sonyericsson/home/HomeActivity$11;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/folder/FolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createFolderLayer()V
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
    .line 1573
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelHint()V
    .locals 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder(Z)V

    .line 1577
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V

    .line 1584
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1588
    :cond_0
    return-void
.end method

.method public onItemPickedUp()V
    .locals 0

    .prologue
    .line 1580
    return-void
.end method

.method public onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;Z)V
    .locals 3
    .parameter "infoGroup"
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 1592
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, text:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1596
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$11$1;

    invoke-direct {v2, p0, p2}, Lcom/sonyericsson/home/HomeActivity$11$1;-><init>(Lcom/sonyericsson/home/HomeActivity$11;Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/sonyericsson/home/HomeActivityFlow;->setFolderName(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;)V

    .line 1606
    return-void
.end method

.method public onTransferCanceled(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 1
    .parameter "infoGroup"

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 1610
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$11;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 1613
    :cond_0
    return-void
.end method
