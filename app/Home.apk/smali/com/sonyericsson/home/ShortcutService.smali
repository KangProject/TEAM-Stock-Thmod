.class public Lcom/sonyericsson/home/ShortcutService;
.super Landroid/app/Service;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/ShortcutService$UninstallShortcutReceiver;,
        Lcom/sonyericsson/home/ShortcutService$InstallShortcutReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "ShortcutService.INSTALL_SHORTCUT"

.field private static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "ShortcutService.UNINSTALL_SHORTCUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 81
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
    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/home/ShortcutService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/home/HomeApplication;->getDesktopController()Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    .line 39
    .local v0, desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;
    new-instance v1, Lcom/sonyericsson/home/ShortcutService$1;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/sonyericsson/home/ShortcutService$1;-><init>(Lcom/sonyericsson/home/ShortcutService;Landroid/content/Intent;Lcom/sonyericsson/home/layer/desktop/DesktopController;I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addOnSyncCompletedCallback(Ljava/lang/Runnable;)V

    .line 51
    const/4 v1, 0x3

    return v1
.end method
