.class Lcom/sonyericsson/home/layer/desktop/DesktopController$14;
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
    .line 1755
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FI)V
    .locals 5
    .parameter "position"
    .parameter "max"

    .prologue
    const/4 v4, 0x0

    .line 1757
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setPosition(FI)V

    .line 1760
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1761
    .local v0, windowToken:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1762
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$5500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x1

    sub-int v2, p2, v2

    int-to-float v2, v2

    div-float v2, p1, v2

    const/high16 v3, 0x3f80

    invoke-static {v2, v4, v3}, Lcom/sonyericsson/util/MathUtil;->clamp(FFF)F

    move-result v2

    invoke-virtual {v1, v0, v2, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1767
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$14;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onScrolled()V

    .line 1768
    return-void
.end method
