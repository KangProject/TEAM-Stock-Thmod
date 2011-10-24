.class public Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;
.super Ljava/lang/Object;
.source "FacebookWrapper.java"


# static fields
.field private static final ACTION_SHARE:Ljava/lang/String; = "com.sonyericsson.appshare.SHARE"

.field private static final EXTRAS_COMMENT:Ljava/lang/String; = "COMMENT"

.field private static final EXTRAS_PKG_NAME:Ljava/lang/String; = "PKG_NAME"

.field protected static final FBI_APPSHARE_PACKAGENAME:Ljava/lang/String; = "com.sonyericsson.appshare"

.field private static final FBI_APPSHARE_SHARESERVICE_PACKAGENAME:Ljava/lang/String; = "com.sonyericsson.appshare.backend.facebook.ShareService"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookWrapper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShareServiceComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sonyericsson.appshare"

    const-string v2, "com.sonyericsson.appshare.backend.facebook.ShareService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->mShareServiceComponent:Landroid/content/ComponentName;

    .line 57
    return-void
.end method

.method private isFbiAppShareAvailable(Landroid/content/ComponentName;)Z
    .locals 10
    .parameter "shareComponent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "FacebookWrapper"

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, isAvailable:Z
    iget-object v5, p0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 113
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2

    .line 114
    const/4 v1, 0x2

    .line 115
    .local v1, enabledFlag:I
    const/4 v2, 0x0

    .line 118
    .local v2, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.sonyericsson.appshare"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 133
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    if-ne v1, v8, :cond_3

    :cond_1
    move v3, v8

    .line 136
    .end local v1           #enabledFlag:I
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_1
    return v3

    .line 123
    .restart local v1       #enabledFlag:I
    .restart local v2       #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 124
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FacebookWrapper"

    const-string v5, "Couldn\'t find package name: com.sonyericsson.appshare"

    invoke-static {v9, v5}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x0

    .line 131
    goto :goto_0

    .line 127
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 128
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "FacebookWrapper"

    const-string v5, "Either [com.sonyericsson.appshare] or [com.sonyericsson.appshare.backend.facebook.ShareService] is not available."

    invoke-static {v9, v5}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x0

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    move v3, v7

    .line 133
    goto :goto_1
.end method


# virtual methods
.method public isFacebookShareAvailable()Z
    .locals 4

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, isFacebookAccountAvailable:Z
    invoke-static {}, Lcom/sonyericsson/home/layer/appshare/facebook/SemcFacebookFactoryWrapper;->createSemcFacebook()Lcom/sonyericsson/facebook/proxy/SemcFacebook;

    move-result-object v2

    .line 75
    .local v2, semcFacebook:Lcom/sonyericsson/facebook/proxy/SemcFacebook;
    if-eqz v2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/sonyericsson/facebook/proxy/SemcFacebook;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 78
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->mShareServiceComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v3}, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->isFbiAppShareAvailable(Landroid/content/ComponentName;)Z

    move-result v1

    .line 80
    .local v1, isFbiAppShareShareServiceAvailable:Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public shareOnFacebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"
    .parameter "comment"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->isFacebookShareAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->mShareServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 94
    const-string v1, "com.sonyericsson.appshare.SHARE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "PKG_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "COMMENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
