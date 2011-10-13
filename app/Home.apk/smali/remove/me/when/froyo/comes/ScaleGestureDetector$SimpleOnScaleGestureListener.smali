.class public Lremove/me/when/froyo/comes/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

# interfaces
.implements Lremove/me/when/froyo/comes/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lremove/me/when/froyo/comes/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lremove/me/when/froyo/comes/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Lremove/me/when/froyo/comes/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lremove/me/when/froyo/comes/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 125
    return-void
.end method
