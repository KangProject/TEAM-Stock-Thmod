.class public interface abstract Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener;
.super Ljava/lang/Object;
.source "StageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/stage/StageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StageControllerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;
    }
.end annotation


# virtual methods
.method public abstract onCreateFolder(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;Z)V
.end method

.method public abstract onInfoClicked(Lcom/sonyericsson/home/data/Info;Ljava/lang/Object;)V
.end method

.method public abstract onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
.end method

.method public abstract onItemPickedUp()V
.end method

.method public abstract onLoadCompleted()V
.end method

.method public abstract onLongPress(I)V
.end method
