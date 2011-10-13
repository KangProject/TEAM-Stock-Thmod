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
    .line 2382
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->val$info:Lcom/sonyericsson/home/data/Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$18;->val$info:Lcom/sonyericsson/home/data/Info;

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetView(I)Landroid/view/View;

    .line 2387
    return-void
.end method
