.class Lcom/sonyericsson/home/layer/desktop/DesktopController$19;
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
    .line 2393
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;->val$info:Lcom/sonyericsson/home/data/Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$19;->val$info:Lcom/sonyericsson/home/data/Info;

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    .line 2398
    return-void
.end method
