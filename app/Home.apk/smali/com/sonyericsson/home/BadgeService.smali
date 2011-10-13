.class public Lcom/sonyericsson/home/BadgeService;
.super Landroid/app/Service;
.source "BadgeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/BadgeService$BadgeReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/sonyericsson/home/BadgeService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeApplication;->getBadgeManager()Lcom/sonyericsson/home/badge/BadgeManager;

    move-result-object v0

    .line 20
    .local v0, badgeManager:Lcom/sonyericsson/home/badge/BadgeManager;
    new-instance v1, Lcom/sonyericsson/home/BadgeService$1;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/sonyericsson/home/BadgeService$1;-><init>(Lcom/sonyericsson/home/BadgeService;Lcom/sonyericsson/home/badge/BadgeManager;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/badge/BadgeManager;->addOnStartCompletedCallback(Ljava/lang/Runnable;)V

    .line 27
    const/4 v1, 0x3

    return v1
.end method
