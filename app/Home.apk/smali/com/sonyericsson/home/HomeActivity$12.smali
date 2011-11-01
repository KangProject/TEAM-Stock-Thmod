.class Lcom/sonyericsson/home/HomeActivity$12;
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
    .line 1571
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelHint()V
    .locals 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder(Z)V

    .line 1575
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V

    .line 1582
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1586
    :cond_0
    return-void
.end method

.method public onItemPickedUp()V
    .locals 0

    .prologue
    .line 1578
    return-void
.end method

.method public onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;Z)V
    .locals 4
    .parameter "infoGroup"
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 1590
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 1591
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getIcon()I

    move-result v0

    .line 1592
    .local v0, iconIndex:I
    if-eqz p3, :cond_0

    .line 1593
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, v2, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1594
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v0, v2, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    .line 1596
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$2600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/home/HomeActivity$12$1;

    invoke-direct {v3, p0, p2}, Lcom/sonyericsson/home/HomeActivity$12$1;-><init>(Lcom/sonyericsson/home/HomeActivity$12;Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;)V

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/sonyericsson/home/HomeActivityFlow;->setFolderName(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;ILcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;)V

    .line 1607
    return-void
.end method

.method public onTransferCanceled(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 1
    .parameter "infoGroup"

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 1611
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$12;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 1614
    :cond_0
    return-void
.end method
