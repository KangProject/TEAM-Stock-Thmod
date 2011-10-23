.class Lcom/sonyericsson/home/HomeActivityFlow$1;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V
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
    .line 198
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegative()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderCanceled()V

    .line 215
    return-void
.end method

.method public onDialogPositive(Landroid/os/Bundle;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 200
    if-eqz p1, :cond_1

    .line 201
    const-string v1, "result_folder_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, folderName:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivityFlow;->access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivityFlow;->access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    move-result-object v1

    const v2, 0x7f070018

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderCanceled()V

    .line 211
    .end local v0           #folderName:Ljava/lang/String;
    :goto_0
    return-void

    .line 206
    .restart local v0       #folderName:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderConfirmed(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v0           #folderName:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderCanceled()V

    goto :goto_0
.end method
