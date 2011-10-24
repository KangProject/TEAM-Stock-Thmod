.class public Lcom/sonyericsson/home/networkname/NetworkNameManager;
.super Ljava/lang/Object;
.source "NetworkNameManager.java"


# instance fields
.field private final mFadeInAnimation:Landroid/view/animation/Animation;

.field private final mFadeOutAnimation:Landroid/view/animation/Animation;

.field private final mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSpnStringsUpdatedAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/networkname/NetworkNameView;)V
    .locals 6
    .parameter "networkNameView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->getExtraPlmn()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, extraPlmn:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->getSpnStringsUpdatedAction()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, spnStringsUpdatedAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->showNetworkName()Z

    move-result v3

    move v1, v3

    .line 51
    .local v1, showNetworkName:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p1, v5}, Lcom/sonyericsson/home/networkname/NetworkNameView;->setVisibility(I)V

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    .line 56
    iput-object v2, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mSpnStringsUpdatedAction:Ljava/lang/String;

    .line 57
    new-instance v3, Lcom/sonyericsson/home/networkname/NetworkNameManager$1;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/home/networkname/NetworkNameManager$1;-><init>(Lcom/sonyericsson/home/networkname/NetworkNameManager;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    invoke-virtual {p1}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040009

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 70
    invoke-virtual {p1}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f04000a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 79
    :goto_1
    return-void

    .end local v1           #showNetworkName:Z
    :cond_0
    move v1, v5

    .line 48
    goto :goto_0

    .line 73
    .restart local v1       #showNetworkName:Z
    :cond_1
    iput-object v4, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    .line 74
    iput-object v4, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mSpnStringsUpdatedAction:Ljava/lang/String;

    .line 75
    iput-object v4, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object v4, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 77
    iput-object v4, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mFadeOutAnimation:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/networkname/NetworkNameManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mSpnStringsUpdatedAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/networkname/NetworkNameManager;)Lcom/sonyericsson/home/networkname/NetworkNameView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    return-object v0
.end method

.method private getExtraPlmn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    :try_start_0
    const-string v1, "android.provider.Telephony$Intents"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EXTRA_PLMN"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 150
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkNameManager"

    const-string v2, "Failed to get EXTRA_PLMN"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 150
    goto :goto_0
.end method

.method private getSpnStringsUpdatedAction()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    :try_start_0
    const-string v1, "android.provider.Telephony$Intents"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SPN_STRINGS_UPDATED_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    .line 161
    :goto_0
    return-object v1

    .line 157
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 158
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkNameManager"

    const-string v2, "Failed to get spn string update action"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 161
    goto :goto_0
.end method

.method private showNetworkName()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 130
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 132
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "cust.att.carriername"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    .local v2, result:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 139
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/String;
    :goto_0
    return v3

    .line 134
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 135
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "NetworkNameManager"

    const-string v4, "Failed to get system property for carrier name"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v8

    .line 139
    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->clearAnimation()V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/networkname/NetworkNameView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/networkname/NetworkNameView;->setVisibility(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mSpnStringsUpdatedAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-virtual {v1}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-virtual {v4}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    invoke-virtual {v0}, Lcom/sonyericsson/home/networkname/NetworkNameView;->clearAnimation()V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/networkname/NetworkNameView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager;->mNetworkNameView:Lcom/sonyericsson/home/networkname/NetworkNameView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/networkname/NetworkNameView;->setVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method
