.class Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;
.super Ljava/lang/Object;
.source "TrashcanController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;

.field final synthetic val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

.field final synthetic val$renderer:Lcom/sonyericsson/animation/Renderer;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->this$1:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$renderer:Lcom/sonyericsson/animation/Renderer;

    iput-object p4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dropFinished(I)V
    .locals 6
    .parameter "result"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->this$1:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$renderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->this$1:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;

    iget-object v4, v4, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$200(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;)Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$800(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;I)V

    .line 193
    return-void
.end method
