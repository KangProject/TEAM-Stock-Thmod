.class public Lcom/sonyericsson/home/AvailabilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AvailabilityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter "packageLoader"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mListeners:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v8, "android.intent.extra.changed_package_list"

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, packageList:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 57
    .local v5, packageName:Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v6, v5}, Lcom/sonyericsson/home/resourceload/PackageLoader;->packageChanged(Ljava/lang/String;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v5           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;

    .line 60
    .local v3, listener:Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;
    invoke-interface {v3, v4}, Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;->onAvailable([Ljava/lang/String;)V

    goto :goto_1

    .line 63
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #len$:I
    .end local v3           #listener:Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;
    .end local v4           #packageList:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 66
    .restart local v4       #packageList:[Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;

    .line 67
    .restart local v3       #listener:Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;
    invoke-interface {v3, v4}, Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;->onUnavailable([Ljava/lang/String;)V

    goto :goto_2

    .line 70
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;
    .end local v4           #packageList:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public registerAvailabilityChangeListener(Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public unregisterAvailabilityChangeListener(Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/home/AvailabilityReceiver;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    return-void
.end method
