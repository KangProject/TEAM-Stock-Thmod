.class public interface abstract Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
.super Ljava/lang/Object;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/PackageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPackageUpdateListener"
.end annotation


# virtual methods
.method public abstract onPackageAdded(Ljava/lang/String;)V
.end method

.method public abstract onPackageChanged(Ljava/lang/String;)V
.end method

.method public abstract onPackageRemoved(Ljava/lang/String;)V
.end method

.method public abstract onPackagesAvailable([Ljava/lang/String;)V
.end method

.method public abstract onPackagesUnavailable([Ljava/lang/String;)V
.end method
