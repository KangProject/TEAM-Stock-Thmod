.class public interface abstract Lcom/sonyericsson/home/HomeActivityFlow$Presenter;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivityFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract addActivity(Lcom/sonyericsson/home/data/ActivityInfo;)Z
.end method

.method public abstract addAdvWidget(Ljava/lang/String;)Z
.end method

.method public abstract addFolder(Ljava/lang/String;I)Z
.end method

.method public abstract addShortcut(Landroid/os/Bundle;)Z
.end method

.method public abstract addWidget(I)Z
.end method

.method public abstract finishDeleteDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V
.end method

.method public abstract openFolder(Lcom/sonyericsson/home/data/InfoGroup;ILjava/lang/Object;)V
.end method

.method public abstract overrideTransition(Landroid/graphics/Rect;)V
.end method

.method public abstract resolveRect(ILjava/lang/Object;)Landroid/graphics/Rect;
.end method

.method public abstract setFolderLabel(Lcom/sonyericsson/home/data/InfoGroup;Ljava/lang/String;I)V
.end method

.method public abstract showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
.end method

.method public abstract showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;I)V
.end method

.method public abstract showToast(I)V
.end method

.method public abstract startActivitySafely(Landroid/content/Intent;)Z
.end method

.method public abstract startActivitySafelyForResult(Landroid/content/Intent;I)Z
.end method
