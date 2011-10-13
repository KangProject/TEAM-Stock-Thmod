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
.method public abstract onCreateFolder(Lcom/sonyericsson/home/layer/desktop/DesktopController$DesktopControllerListener$OnCreateFolderCompletedListener;Z)V
.end method

.method public abstract onDesktopHidden()V
.end method

.method public abstract onDesktopShown()V
.end method

.method public abstract onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
.end method

.method public abstract onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
.end method

.method public abstract onItemDropped()V
.end method

.method public abstract onItemPickedUp()V
.end method

.method public abstract onLongPress(Landroid/graphics/Point;)V
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
