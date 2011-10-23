.class Lcom/sonyericsson/home/layer/appshare/AppShareDialog$4;
.super Ljava/lang/Object;
.source "AppShareDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$4;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 132
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$4;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$502(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    return-void
.end method
