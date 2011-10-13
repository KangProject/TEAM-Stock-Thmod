.class Lcom/sonyericsson/home/HomeActivityFlow$2;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivityFlow;->onDeleteDrop(Lcom/sonyericsson/home/data/InfoGroupInterface;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivityFlow;

.field final synthetic val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivityFlow$2;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivityFlow$2;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegative()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow$2;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivityFlow;->access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$2;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->finishDeleteDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V

    .line 265
    return-void
.end method

.method public onDialogPositive(Landroid/os/Bundle;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow$2;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivityFlow;->access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$2;->val$dropListener:Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->finishDeleteDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V

    .line 261
    return-void
.end method
