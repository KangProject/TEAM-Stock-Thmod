.class Lcom/sonyericsson/home/HomeActivity$14;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createStage(Ljava/lang/Object;)V
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
    .line 1699
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateFolder(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 1722
    const/4 v0, 0x0

    .line 1724
    .local v0, text:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v0, v1, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1728
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/HomeActivity$14$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/home/HomeActivity$14$1;-><init>(Lcom/sonyericsson/home/HomeActivity$14;Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;)V

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->confirmFolderCreate(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V

    .line 1737
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Ljava/lang/Object;)V
    .locals 2
    .parameter "info"
    .parameter "location"

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;ILjava/lang/Object;)V

    .line 1703
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 1707
    :cond_0
    return-void
.end method

.method public onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 1741
    return-void
.end method

.method public onItemPickedUp()V
    .locals 0

    .prologue
    .line 1718
    return-void
.end method

.method public onLoadCompleted()V
    .locals 3

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v2, 0x7f0e004b

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$3602(Lcom/sonyericsson/home/HomeActivity;Landroid/view/View;)Landroid/view/View;

    .line 1746
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1747
    return-void
.end method

.method public onLongPress(I)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1710
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/home/HomeActivity;->access$1802(Lcom/sonyericsson/home/HomeActivity;I)I

    .line 1711
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x1

    iput v2, v1, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 1712
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    .line 1713
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$14;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1714
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1715
    return-void
.end method
