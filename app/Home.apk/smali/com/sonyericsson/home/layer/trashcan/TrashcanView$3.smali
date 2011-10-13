.class Lcom/sonyericsson/home/layer/trashcan/TrashcanView$3;
.super Ljava/lang/Object;
.source "TrashcanView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->close(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$3;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$3;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$902(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Z)Z

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$3;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->access$1002(Lcom/sonyericsson/home/layer/trashcan/TrashcanView;Z)Z

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanView$3;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/trashcan/TrashcanView;->close(I)V

    .line 224
    return-void
.end method
