.class Lcom/sonyericsson/home/HomeActivityFlow$3;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivityFlow;->setFolderName(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivityFlow;

.field final synthetic val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

.field final synthetic val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    iput-object p3, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegative()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;->onFolderNameCanceled()V

    .line 279
    return-void
.end method

.method public onDialogPositive(Landroid/os/Bundle;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 271
    const-string v2, "result_folder_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, name:Ljava/lang/String;
    const-string v2, "result_folder_icon"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 273
    .local v0, iconIndex:I
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->this$0:Lcom/sonyericsson/home/HomeActivityFlow;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivityFlow;->access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    invoke-interface {v2, v3, v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->setFolderLabel(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;I)V

    .line 274
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivityFlow$3;->val$listener:Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;

    invoke-interface {v2, v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;->onFolderNameSet(Ljava/lang/String;I)V

    .line 275
    return-void
.end method
