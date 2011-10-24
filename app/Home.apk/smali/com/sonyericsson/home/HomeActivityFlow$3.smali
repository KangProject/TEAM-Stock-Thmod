.class Lcom/sonyericsson/home/HomeActivityFlow$3;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivityFlow;->setFolderName(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivityFlow;

.field final synthetic val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

.field final synthetic val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    iput-object p3, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegative()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;->onFolderCanceled()V

    .line 283
    return-void
.end method

.method public onDialogPositive(Landroid/os/Bundle;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    const-string v1, "result_folder_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivityFlow;->access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    invoke-interface {v1, v2, v0}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->setFolderLabel(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;->onFolderRenamed(Ljava/lang/String;)V

    .line 279
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;

    invoke-interface {v1}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderRenameListener;->onFolderCanceled()V

    goto :goto_0
.end method
