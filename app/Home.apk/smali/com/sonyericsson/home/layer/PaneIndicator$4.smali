.class Lcom/sonyericsson/home/layer/PaneIndicator$4;
.super Ljava/lang/Object;
.source "PaneIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/PaneIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/PaneIndicator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/PaneIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/home/layer/PaneIndicator$4;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$4;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->access$300(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/home/layer/PaneIndicator$4;->this$0:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->access$300(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;->onInactiveTimeout()V

    .line 173
    :cond_0
    return-void
.end method
