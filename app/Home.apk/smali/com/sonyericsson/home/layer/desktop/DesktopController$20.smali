.class Lcom/sonyericsson/home/layer/desktop/DesktopController$20;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;->performRegister(Lcom/sonyericsson/home/data/WidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$info:Lcom/sonyericsson/home/data/WidgetInfo;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;->val$info:Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$20;->val$info:Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$6600(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/data/WidgetInfo;)V

    .line 2481
    return-void
.end method
