.class Lcom/sonyericsson/home/HomeActivity$6$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$6;->showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$6;

.field final synthetic val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$6;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$6$1;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$6$1;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 686
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 698
    :goto_0
    return-void

    .line 688
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$1;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogPositive(Landroid/os/Bundle;)V

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$1;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 693
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$1;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 694
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$1;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0007
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
