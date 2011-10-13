.class Lcom/sonyericsson/home/layer/desktop/DesktopController$8;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;->performRegister(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$8;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    return-void
.end method
