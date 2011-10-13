.class Lcom/sonyericsson/home/HomeActivity$10;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;


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
    .line 1099
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelHint()V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder()V

    .line 1103
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "info"
    .parameter "sourceBounds"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    .line 1113
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1117
    :cond_0
    return-void
.end method

.method public onItemDropFailed(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 1
    .parameter "infoGroup"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 1140
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->itemAddedTo(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 1143
    :cond_0
    return-void
.end method

.method public onItemDropped()V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method

.method public onItemPickedUp()V
    .locals 0

    .prologue
    .line 1106
    return-void
.end method

.method public onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;Z)V
    .locals 4
    .parameter "infoGroup"
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 1121
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 1122
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getIcon()I

    move-result v0

    .line 1123
    .local v0, iconIndex:I
    if-eqz p3, :cond_0

    .line 1124
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, v2, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1125
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v0, v2, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$10;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/home/HomeActivity$10$1;

    invoke-direct {v3, p0, p2}, Lcom/sonyericsson/home/HomeActivity$10$1;-><init>(Lcom/sonyericsson/home/HomeActivity$10;Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;)V

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->setFolderName(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;Ljava/lang/String;I)V

    .line 1136
    return-void
.end method
