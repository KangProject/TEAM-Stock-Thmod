.class Lcom/sonyericsson/home/layer/desktop/DesktopController$12;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$ScrollListener;


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
    .line 1936
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FI)V
    .locals 6
    .parameter "position"
    .parameter "max"

    .prologue
    const/4 v5, 0x0

    .line 1938
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setPosition(FI)V

    .line 1941
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1942
    .local v1, windowToken:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1943
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6100(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;

    move-result-object v2

    const/4 v3, 0x1

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float v3, p1, v3

    const/high16 v4, 0x3f80

    invoke-static {v3, v5, v4}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1948
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onScrolled()V

    .line 1950
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    .line 1951
    .local v0, pane:I
    int-to-float v2, v0

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1955
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1800(Lcom/sonyericsson/home/layer/desktop/DesktopController;IZ)V

    .line 1957
    :cond_1
    return-void
.end method
