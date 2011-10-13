.class public Lcom/sonyericsson/home/AvailabilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AvailabilityReceiver.java"


# instance fields
.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 0
    .parameter "packageLoader"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "android.intent.extra.changed_package_list"

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, packageList:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packagesAvailable([Ljava/lang/String;)V

    .line 50
    .end local v0           #packageList:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .restart local v0       #packageList:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packagesUnavailable([Ljava/lang/String;)V

    .line 57
    .end local v0           #packageList:[Ljava/lang/String;
    :cond_1
    return-void
.end method
