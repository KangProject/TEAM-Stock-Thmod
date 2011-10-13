.class Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController$12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToNextPane()V

    .line 1450
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->access$4302(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;J)J

    .line 1451
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$4400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1452
    return-void

    .line 1447
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->access$4200(Lcom/sonyericsson/home/layer/desktop/DesktopController$12;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12$1;->this$1:Lcom/sonyericsson/home/layer/desktop/DesktopController$12;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/desktop/DesktopController$12;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPreviousPane()V

    goto :goto_0
.end method
