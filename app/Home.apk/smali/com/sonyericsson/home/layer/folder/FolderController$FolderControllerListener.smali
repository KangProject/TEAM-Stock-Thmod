.class public interface abstract Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;
.super Ljava/lang/Object;
.source "FolderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderControllerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;
    }
.end annotation


# virtual methods
.method public abstract onCancelHint()V
.end method

.method public abstract onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
.end method

.method public abstract onItemDropFailed(Lcom/sonyericsson/home/data/InfoGroup;)V
.end method

.method public abstract onItemDropped()V
.end method

.method public abstract onItemPickedUp()V
.end method

.method public abstract onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;Z)V
.end method
