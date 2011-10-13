.class public Lcom/sonyericsson/home/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageReceiver.java"


# instance fields
.field private final mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 0
    .parameter "packageLoader"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/PackageReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 48
    .local v2, replacing:Z
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    if-nez v2, :cond_1

    .line 50
    iget-object v3, p0, Lcom/sonyericsson/home/PackageReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageAdded(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/PackageReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/sonyericsson/home/PackageReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    if-nez v2, :cond_0

    .line 58
    iget-object v3, p0, Lcom/sonyericsson/home/PackageReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageRemoved(Ljava/lang/String;)V

    goto :goto_0
.end method
