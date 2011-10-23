.class Lcom/sonyericsson/home/layer/folder/FolderDialog$1;
.super Ljava/lang/Object;
.source "FolderDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 101
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 97
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$002(Lcom/sonyericsson/home/layer/folder/FolderDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$000(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onNameChanged(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
