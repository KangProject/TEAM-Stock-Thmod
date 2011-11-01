.class Lcom/sonyericsson/home/layer/desktop/DesktopController$14;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$ItemViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter

    .prologue
    .line 1979
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAdded(ILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "view"

    .prologue
    .line 1982
    instance-of v1, p2, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v1, :cond_0

    .line 1983
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 1984
    .local v0, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->start(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 1985
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->resume(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 1986
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->isInteracting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1987
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->focus(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 1990
    .end local v0           #info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    :cond_0
    return-void
.end method

.method public onViewRemoved(ILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "view"

    .prologue
    .line 1993
    instance-of v1, p2, Lcom/sonyericsson/home/widget/AdvWidgetRoot;

    if-eqz v1, :cond_0

    .line 1994
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 1995
    .local v0, info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->stop(Lcom/sonyericsson/home/data/AdvWidgetInfo;)V

    .line 1997
    .end local v0           #info:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    :cond_0
    return-void
.end method
