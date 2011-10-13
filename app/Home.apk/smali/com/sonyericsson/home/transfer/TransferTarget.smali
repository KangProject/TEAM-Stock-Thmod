.class public interface abstract Lcom/sonyericsson/home/transfer/TransferTarget;
.super Ljava/lang/Object;
.source "TransferTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;
    }
.end annotation


# virtual methods
.method public abstract cancelHint(Lcom/sonyericsson/animation/Renderer;)V
.end method

.method public abstract drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
.end method

.method public abstract hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
.end method
