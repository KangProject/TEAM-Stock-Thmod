.class Lcom/sonyericsson/home/layer/desktop/DesktopController$15;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$InteractionListener;


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
    .line 1771
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteractionEnd()V
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->focus()V

    .line 1787
    return-void
.end method

.method public onInteractionStart()V
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$15;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->defocus()V

    .line 1779
    return-void
.end method
