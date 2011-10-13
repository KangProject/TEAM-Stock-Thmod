.class public interface abstract Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;
.super Ljava/lang/Object;
.source "AppTrayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppTrayControllerListener"
.end annotation


# virtual methods
.method public abstract onAppTrayClosed(Z)V
.end method

.method public abstract onAppTrayOpened()V
.end method

.method public abstract onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
.end method

.method public abstract onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
.end method

.method public abstract onSyncCompleted()V
.end method

.method public abstract onTransferToDesktop()V
.end method

.method public abstract onTransferToDesktopFailed()V
.end method

.method public abstract sortButtonPressed(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;)V
.end method
