.class public interface abstract Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;
.super Ljava/lang/Object;
.source "AvailabilityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/AvailabilityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AvailabilityChangeListener"
.end annotation


# virtual methods
.method public abstract onAvailable([Ljava/lang/String;)V
.end method

.method public abstract onUnavailable([Ljava/lang/String;)V
.end method
