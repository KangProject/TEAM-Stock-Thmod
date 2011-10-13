.class Lcom/sonyericsson/home/HomeActivity$9;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createDesktop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

.field private exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

.field private stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    .line 975
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    .line 977
    new-instance v0, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-direct {v0}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    return-void
.end method


# virtual methods
.method public onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V
    .locals 4
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 1055
    const/4 v1, 0x0

    .line 1056
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1057
    .local v0, iconIndex:I
    if-eqz p2, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, v2, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1059
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget v0, v2, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    .line 1061
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/home/HomeActivity$9$1;

    invoke-direct {v3, p0, p1}, Lcom/sonyericsson/home/HomeActivity$9$1;-><init>(Lcom/sonyericsson/home/HomeActivity$9;Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow;->confirmFolderCreate(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V

    .line 1070
    return-void
.end method

.method public onDesktopHidden()V
    .locals 3

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->pause()V

    .line 1074
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->stop()V

    .line 1076
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1077
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1078
    const/4 v1, 0x0

    const/16 v2, -0x3c

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1079
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setOriginRect(Landroid/graphics/Rect;)V

    .line 1080
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 1082
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->moveToFirstPane()V

    .line 1083
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$100(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->open()V

    .line 1085
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)V

    .line 1086
    return-void
.end method

.method public onDesktopShown()V
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->focus()V

    .line 1090
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1091
    return-void
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "info"
    .parameter "sourceBounds"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    .line 987
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/statistics/Statistics;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/home/statistics/Statistics;->registerAcitvityStart(Lcom/sonyericsson/home/data/ActivityInfo;I)V

    .line 991
    :cond_0
    return-void
.end method

.method public onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$1000(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 995
    return-void
.end method

.method public onItemDropped()V
    .locals 0

    .prologue
    .line 983
    return-void
.end method

.method public onItemPickedUp()V
    .locals 0

    .prologue
    .line 980
    return-void
.end method

.method public onLongPress(Landroid/graphics/Point;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 998
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/home/HomeActivity;->access$1102(Lcom/sonyericsson/home/HomeActivity;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 999
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sonyericsson/home/HomeActivity;->mAddTo:I

    .line 1000
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->showDialog(I)V

    .line 1001
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1002
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1003
    return-void
.end method

.method public onOverviewActivated()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->defocus()V

    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    return-void
.end method

.method public onOverviewAnimationsStarted()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    if-eq v0, v1, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    if-eq v0, v1, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1022
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    if-eq v0, v1, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1027
    :cond_2
    return-void
.end method

.method public onOverviewAnimationsStopped()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1035
    return-void
.end method

.method public onOverviewDeactivated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1038
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2400(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1043
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2500(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    return-void
.end method

.method public onOverviewProgress(F)V
    .locals 3
    .parameter "progress"

    .prologue
    const/4 v2, 0x0

    .line 1047
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$2600(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, p1, v1

    .line 1048
    .local v0, dy:F
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->stageAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->setTranslation(FF)V

    .line 1049
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->appTrayButtonAnim:Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/animation/FingerFollowTranslateAnimation;->setTranslation(FF)V

    .line 1050
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$9;->exitOverviewButtonAnim:Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/animation/FingerFollowAlphaAnimation;->setAlpha(F)V

    .line 1051
    return-void
.end method
