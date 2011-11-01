.class Lcom/sonyericsson/home/HomeActivityFlow$4;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivityFlow;->confirmFolderCreate(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivityFlow;

.field final synthetic val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivityFlow$4;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivityFlow$4;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegative()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow$4;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderCanceled()V

    .line 309
    return-void
.end method

.method public onDialogPositive(Landroid/os/Bundle;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow$4;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    const-string v1, "result_folder_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result_folder_icon"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderConfirmed(Ljava/lang/String;I)V

    .line 305
    :cond_0
    return-void
.end method
