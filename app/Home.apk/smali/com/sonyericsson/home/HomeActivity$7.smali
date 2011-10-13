.class Lcom/sonyericsson/home/HomeActivity$7;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createAppTray()V
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
    .line 876
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTrayClosed(Z)V
    .locals 2
    .parameter "animating"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 904
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$1602(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->start()V

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->resume()V

    .line 908
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->show(Z)V

    .line 909
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/stage/StageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageController;->show(Z)V

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 913
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 915
    :cond_2
    return-void
.end method

.method public onAppTrayOpened()V
    .locals 0

    .prologue
    .line 918
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "info"
    .parameter "sourceBounds"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    .line 880
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 884
    :cond_0
    return-void
.end method

.method public onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$1000(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 888
    return-void
.end method

.method public onSyncCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 931
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 934
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getCurrentSorting()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 945
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;I)I

    .line 948
    :goto_0
    return-void

    .line 936
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;I)I

    goto :goto_0

    .line 939
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;I)I

    goto :goto_0

    .line 942
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;I)I

    goto :goto_0

    .line 934
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTransferToDesktop()V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$900(Lcom/sonyericsson/home/HomeActivity;Z)V

    .line 922
    return-void
.end method

.method public onTransferToDesktopFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 925
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->hide(Z)V

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2300(Lcom/sonyericsson/home/HomeActivity;)V

    .line 928
    return-void
.end method

.method public sortButtonPressed(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;)V
    .locals 2
    .parameter "appTraySortCallback"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iput-object p1, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    .line 892
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getCurrentSorting()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;I)I

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    .line 894
    return-void
.end method
