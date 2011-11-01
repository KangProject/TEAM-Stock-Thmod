.class public interface abstract Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;
.super Ljava/lang/Object;
.source "FolderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderDialogListener"
.end annotation


# virtual methods
.method public abstract onClose(Landroid/app/Dialog;)V
.end method

.method public abstract onDialogNegative()V
.end method

.method public abstract onDialogPositive(Landroid/os/Bundle;)V
.end method

.method public abstract onIconSelected(I)V
.end method

.method public abstract onNameChanged(Ljava/lang/String;)V
.end method
