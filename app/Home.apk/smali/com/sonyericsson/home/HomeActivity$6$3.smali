.class Lcom/sonyericsson/home/HomeActivity$6$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$6$3;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 745
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 741
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$3;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 737
    return-void
.end method
