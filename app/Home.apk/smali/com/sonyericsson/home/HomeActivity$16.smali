.class Lcom/sonyericsson/home/HomeActivity$16;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createBadgeBroadcastReceiver()V
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
    .line 1799
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBroadcastReceived(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 1803
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 1804
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/folder/FolderController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 1805
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 1808
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1809
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$16;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->notifyChangedInfo(Lcom/sonyericsson/home/data/Info;)V

    .line 1811
    :cond_1
    return-void
.end method
