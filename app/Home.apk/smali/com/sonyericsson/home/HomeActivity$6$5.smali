.class Lcom/sonyericsson/home/HomeActivity$6$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$6;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;I)V
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
    .line 825
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$6$5;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$6$5;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$5;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 828
    return-void
.end method
