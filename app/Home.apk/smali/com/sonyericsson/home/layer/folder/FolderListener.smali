.class public interface abstract Lcom/sonyericsson/home/layer/folder/FolderListener;
.super Ljava/lang/Object;
.source "FolderListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;
    }
.end annotation


# virtual methods
.method public abstract onCancelHint()V
.end method

.method public abstract onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
.end method

.method public abstract onItemPickedUp()V
.end method

.method public abstract onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;Z)V
.end method

.method public abstract onTransferCanceled(Lcom/sonyericsson/home/data/InfoGroup;)V
.end method
