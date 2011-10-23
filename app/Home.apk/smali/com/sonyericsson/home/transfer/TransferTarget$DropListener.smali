.class public interface abstract Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;
.super Ljava/lang/Object;
.source "TransferTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/transfer/TransferTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DropListener"
.end annotation


# static fields
.field public static final DROP_ACCEPTED_SOURCE:I = 0x1

.field public static final DROP_ACCEPTED_SOURCE_INFO:I = 0x2

.field public static final DROP_CANCELED:I


# virtual methods
.method public abstract dropFinished(I)V
.end method
