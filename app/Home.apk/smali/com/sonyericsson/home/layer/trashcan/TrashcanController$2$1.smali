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

.field final synthetic val$info:Lcom/sonyericsson/home/data/Info;

.field final synthetic val$renderer:Lcom/sonyericsson/animation/Renderer;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->this$1:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$renderer:Lcom/sonyericsson/animation/Renderer;

    iput-object p4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    iput-object p5, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$info:Lcom/sonyericsson/home/data/Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dropFinished(Z)V
    .locals 6
    .parameter "successful"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->this$1:Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2;->this$0:Lcom/sonyericsson/home/layer/trashcan/TrashcanController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$renderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/trashcan/TrashcanController$2$1;->val$info:Lcom/sonyericsson/home/data/Info;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/home/layer/trashcan/TrashcanController;->access$500(Lcom/sonyericsson/home/layer/trashcan/TrashcanController;Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Lcom/sonyericsson/home/data/Info;Z)V

    .line 172
    return-void
.end method
