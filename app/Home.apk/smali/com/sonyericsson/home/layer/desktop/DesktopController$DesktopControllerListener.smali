.class public interface abstract Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener;
.super Ljava/lang/Object;
.source "DesktopController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DesktopControllerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;
    }
.end annotation


# virtual methods
.method public abstract isHintAllowed(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;Lcom/sonyericsson/grid/GridSize;)Z
.end method

.method public abstract isOverviewAllowed()Z
.end method

.method public abstract onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V
.end method

.method public abstract onDesktopHidden(Z)V
.end method

.method public abstract onDesktopShown()V
.end method

.method public abstract onFreeCornersChanged([Z)V
.end method

.method public abstract onInfoClicked(Lcom/sonyericsson/home/data/Info;Ljava/lang/Object;)V
.end method

.method public abstract onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
.end method

.method public abstract onItemPickedUp()V
.end method

.method public abstract onLongPress(Lcom/sonyericsson/grid/GridLocation;)V
.end method

.method public abstract onOverviewActivated()V
.end method

.method public abstract onOverviewAnimationsStarted()V
.end method

.method public abstract onOverviewAnimationsStopped()V
.end method

.method public abstract onOverviewDeactivated()V
.end method

.method public abstract onOverviewProgress(F)V
.end method
