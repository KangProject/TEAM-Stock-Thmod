.class Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;
.super Ljava/lang/Object;
.source "TrashcanController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/trashcan/TrashcanView$TrashcanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/trashcan/TrashcanController;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

.field final synthetic val$vibrator:Landroid/os/Vibrator;

.field private vibrateTime:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/os/Vibrator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->val$vibrator:Landroid/os/Vibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$000(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$TrashcanControllerListener;->onClosed()V

    .line 135
    :cond_0
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->vibrateTime:J

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$102(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Z)Z

    .line 137
    return-void
.end method

.method public onLidBounce()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$100(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->val$vibrator:Landroid/os/Vibrator;

    iget-wide v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->vibrateTime:J

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 142
    iget-wide v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->vibrateTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$1;->vibrateTime:J

    .line 144
    :cond_0
    return-void
.end method

.method public onOpened()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
