.class Lcom/sonyericsson/home/layer/desktop/DesktopController$18;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;->preCacheWidgets(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$info:Lcom/sonyericsson/home/data/Info;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2446
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->val$info:Lcom/sonyericsson/home/data/Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->val$info:Lcom/sonyericsson/home/data/Info;

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetView(I)Landroid/view/View;

    .line 2451
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 2452
    return-void
.end method
