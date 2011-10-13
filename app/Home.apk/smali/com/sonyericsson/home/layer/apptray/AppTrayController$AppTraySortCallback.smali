.class public interface abstract Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;
.super Ljava/lang/Object;
.source "AppTrayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppTraySortCallback"
.end annotation


# static fields
.field public static final SORT_ALPHABETICAL:I = 0x1

.field public static final SORT_FREE:I = 0x0

.field public static final SORT_MOSTUSED:I = 0x2

.field public static final SORT_RECENTLYINSTALLED:I = 0x3


# virtual methods
.method public abstract sort(I)V
.end method

.method public abstract sortFinished()V
.end method
