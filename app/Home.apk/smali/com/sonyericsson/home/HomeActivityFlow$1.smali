.class Lcom/sonyericsson/home/HomeActivityFlow$1;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V
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
    .line 203
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegative()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderCanceled()V

    .line 221
    return-void
.end method

.method public onDialogPositive(Landroid/os/Bundle;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 205
    if-eqz p1, :cond_1

    .line 206
    const-string v2, "result_folder_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, folderName:Ljava/lang/String;
    const-string v2, "result_folder_icon"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, folderIcon:I
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivityFlow;->access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addFolder(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivityFlow;->access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    move-result-object v2

    const v3, 0x7f070018

    invoke-interface {v2, v3}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 210
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v2}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderCanceled()V

    .line 217
    .end local v0           #folderIcon:I
    .end local v1           #folderName:Ljava/lang/String;
    :goto_0
    return-void

    .line 212
    .restart local v0       #folderIcon:I
    .restart local v1       #folderName:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v2, v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderConfirmed(Ljava/lang/String;I)V

    goto :goto_0

    .line 215
    .end local v0           #folderIcon:I
    .end local v1           #folderName:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow$1;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    invoke-interface {v2}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;->onFolderCanceled()V

    goto :goto_0
.end method
