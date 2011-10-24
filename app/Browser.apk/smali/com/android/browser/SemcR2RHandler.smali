.class public Lcom/android/browser/SemcR2RHandler;
.super Ljava/lang/Object;
.source "SemcR2RHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/SemcR2RHandler$R2RResultListener;
    }
.end annotation


# static fields
.field private static sSingleton:Lcom/android/browser/SemcR2RHandler;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsR2RActive:Z

.field private mIsR2RNeeded:Z

.field private final mObserver:Landroid/database/ContentObserver;

.field private mR2RListener:Lcom/android/browser/SemcR2RHandler$R2RResultListener;

.field private mR2RStateFilter:Landroid/content/IntentFilter;

.field private mR2RStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/SemcR2RHandler;->sSingleton:Lcom/android/browser/SemcR2RHandler;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v3, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RActive:Z

    .line 41
    iput-boolean v3, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RNeeded:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/SemcR2RHandler;->mR2RListener:Lcom/android/browser/SemcR2RHandler$R2RResultListener;

    .line 69
    new-instance v0, Lcom/android/browser/SemcR2RHandler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/browser/SemcR2RHandler$1;-><init>(Lcom/android/browser/SemcR2RHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/browser/SemcR2RHandler;->mObserver:Landroid/database/ContentObserver;

    .line 88
    iput-object p1, p0, Lcom/android/browser/SemcR2RHandler;->mActivity:Landroid/app/Activity;

    .line 89
    invoke-direct {p0}, Lcom/android/browser/SemcR2RHandler;->checkR2RNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RNeeded:Z

    .line 90
    iget-object v0, p0, Lcom/android/browser/SemcR2RHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://telephony/carriers/current"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/SemcR2RHandler;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/SemcR2RHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RNeeded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/SemcR2RHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/browser/SemcR2RHandler;->checkR2RNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/browser/SemcR2RHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/browser/SemcR2RHandler;)Lcom/android/browser/SemcR2RHandler$R2RResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/browser/SemcR2RHandler;->mR2RListener:Lcom/android/browser/SemcR2RHandler$R2RResultListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/SemcR2RHandler;Lcom/android/browser/SemcR2RHandler$R2RResultListener;)Lcom/android/browser/SemcR2RHandler$R2RResultListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/browser/SemcR2RHandler;->mR2RListener:Lcom/android/browser/SemcR2RHandler$R2RResultListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/SemcR2RHandler;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/browser/SemcR2RHandler;->mR2RStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/SemcR2RHandler;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/browser/SemcR2RHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private checkR2RNeeded()Z
    .locals 9

    .prologue
    .line 165
    const/4 v7, 0x0

    .line 166
    .local v7, isR2RNeeded:Z
    const/4 v8, 0x0

    .line 168
    .local v8, result:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/SemcR2RHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://telephony/carriers/current"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 171
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v7, 0x1

    .line 177
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 178
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_1
    return v7

    .line 174
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 175
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "SemcR2RHandler"

    const-string v1, "Not possible to query telephony carriers"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/android/browser/SemcR2RHandler;
    .locals 1
    .parameter "activity"

    .prologue
    .line 100
    sget-object v0, Lcom/android/browser/SemcR2RHandler;->sSingleton:Lcom/android/browser/SemcR2RHandler;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/browser/SemcR2RHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/SemcR2RHandler;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/browser/SemcR2RHandler;->sSingleton:Lcom/android/browser/SemcR2RHandler;

    .line 103
    :cond_0
    sget-object v0, Lcom/android/browser/SemcR2RHandler;->sSingleton:Lcom/android/browser/SemcR2RHandler;

    return-object v0
.end method


# virtual methods
.method public isR2RActive()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RActive:Z

    return v0
.end method

.method public startR2RIfNeeded(Lcom/android/browser/SemcR2RHandler$R2RResultListener;)Z
    .locals 6
    .parameter "listener"

    .prologue
    const-string v5, "SemcR2RHandler"

    .line 113
    iget-boolean v2, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RNeeded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RActive:Z

    if-nez v2, :cond_0

    .line 114
    iput-object p1, p0, Lcom/android/browser/SemcR2RHandler;->mR2RListener:Lcom/android/browser/SemcR2RHandler$R2RResultListener;

    .line 117
    const-string v2, "SemcR2RHandler"

    const-string v2, "No usable APNs exist, starting R2R (ReadyToRun)"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonyericsson.r2r.client.intent.action.R2R_DONE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/browser/SemcR2RHandler;->mR2RStateFilter:Landroid/content/IntentFilter;

    .line 120
    new-instance v2, Lcom/android/browser/SemcR2RHandler$2;

    invoke-direct {v2, p0}, Lcom/android/browser/SemcR2RHandler$2;-><init>(Lcom/android/browser/SemcR2RHandler;)V

    iput-object v2, p0, Lcom/android/browser/SemcR2RHandler;->mR2RStateReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/SemcR2RHandler;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/browser/SemcR2RHandler;->mR2RStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/browser/SemcR2RHandler;->mR2RStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.r2r.client.intent.action.START_R2R"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, startR2RIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/browser/SemcR2RHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RActive:Z

    .line 149
    iget-object v2, p0, Lcom/android/browser/SemcR2RHandler;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080001

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1           #startR2RIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/browser/SemcR2RHandler;->mIsR2RActive:Z

    return v2

    .line 151
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SemcR2RHandler"

    const-string v2, "Not possible to start R2R"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
