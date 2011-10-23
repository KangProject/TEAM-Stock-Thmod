.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Landroid/app/Activity;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastTotalSize:J

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveErrorCode:I

.field private mMoveInProgress:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 91
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 111
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 112
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 113
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 114
    iput-wide v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 140
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 694
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$7;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 711
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 703
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 705
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/applications/InstalledAppDetails;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 709
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 688
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 690
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 691
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 692
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    const-string v1, ""

    .line 212
    packed-switch p1, :pswitch_data_0

    .line 226
    const-string v0, ""

    move-object v0, v1

    :goto_0
    return-object v0

    .line 214
    :pswitch_0
    const v0, 0x7f09032c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_1
    const v0, 0x7f09032d

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_2
    const v0, 0x7f09032e

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_3
    const v0, 0x7f09032f

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_4
    const v0, 0x7f090330

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_5
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 188
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f090302

    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f09030c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 207
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, dataOnly:Z
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_0

    move v0, v5

    .line 232
    :goto_0
    const/4 v1, 0x1

    .line 233
    .local v1, moveDisable:Z
    if-eqz v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f090328

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 244
    :goto_1
    if-eqz v1, :cond_4

    .line 245
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    :goto_2
    return-void

    .end local v1           #moveDisable:Z
    :cond_0
    move v0, v4

    .line 231
    goto :goto_0

    .line 235
    .restart local v1       #moveDisable:Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f090329

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 238
    const/4 v1, 0x0

    goto :goto_1

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f09032a

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 241
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v2}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 242
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v5

    :goto_3
    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_3

    .line 247
    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private initUninstallButtons()V
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 254
    const/4 v0, 0x1

    .line 255
    .local v0, enabled:Z
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v2, 0x7f090303

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 291
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_0
    return-void

    .line 253
    .end local v0           #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 258
    .restart local v0       #enabled:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 259
    const/4 v0, 0x0

    goto :goto_1

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v2, 0x7f0902ff

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initiateClearUserData()V
    .locals 6

    .prologue
    const-string v5, "InstalledAppDetails"

    .line 571
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 573
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 574
    .local v1, packageName:Ljava/lang/String;
    const-string v3, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    .line 576
    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 578
    :cond_0
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 579
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    .line 580
    .local v2, res:Z
    if-nez v2, :cond_1

    .line 582
    const-string v3, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldnt clear application user data for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f090317

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 526
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 527
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 528
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f090302

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 529
    if-ne v1, v4, :cond_0

    .line 530
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 535
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 536
    return-void

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 551
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 552
    .local v1, result:I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 554
    .local v0, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 555
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 556
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 563
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 564
    return-void

    .line 560
    :cond_0
    iput v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveErrorCode:I

    .line 561
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 541
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDataButtons()V

    .line 542
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V

    .line 548
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f09032b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 477
    :cond_0
    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 478
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 519
    :goto_0
    return-void

    .line 488
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 489
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 491
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    :cond_3
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 494
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 495
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_4
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 499
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_5
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 502
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 503
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v0, :cond_8

    .line 507
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 512
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_9

    .line 513
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 509
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 515
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 402
    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v9, :cond_0

    move v9, v13

    .line 461
    :goto_0
    return v9

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 407
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, packageName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v9, v5}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 410
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_1

    move v9, v12

    .line 411
    goto :goto_0

    .line 416
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2240

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v7, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v4, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4, v7, v5}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 432
    const v9, 0x7f0b0055

    invoke-virtual {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 433
    .local v1, autoLaunchView:Landroid/widget/TextView;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_2

    .line 435
    const v9, 0x7f090305

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 436
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    :goto_1
    const v9, 0x7f0b0057

    invoke-virtual {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 445
    .local v6, permsView:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    invoke-direct {v0, p0, v5}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    .local v0, asp:Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 447
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    const v9, 0x7f0b0058

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 451
    .local v8, securityList:Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 452
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    .end local v8           #securityList:Landroid/widget/LinearLayout;
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 458
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 459
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 460
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    move v9, v13

    .line 461
    goto/16 :goto_0

    .line 420
    .end local v0           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v1           #autoLaunchView:Landroid/widget/TextView;
    .end local v4           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v6           #permsView:Landroid/widget/LinearLayout;
    .end local v7           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 421
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "InstalledAppDetails"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception when retrieving package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v9, v12

    .line 422
    goto/16 :goto_0

    .line 438
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #autoLaunchView:Landroid/widget/TextView;
    .restart local v4       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v7       #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_2
    const v9, 0x7f090304

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 439
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 440
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 454
    .restart local v0       #asp:Landroid/widget/AppSecurityPermissions;
    .restart local v6       #permsView:Landroid/widget/LinearLayout;
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .parameter "pkgInfo"

    .prologue
    const/4 v7, 0x0

    .line 338
    const v3, 0x7f0b0045

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, appSnippet:Landroid/view/View;
    const v3, 0x7f0b0068

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 340
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 341
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    const v3, 0x7f0b0069

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 344
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const v3, 0x7f0b006a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 348
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const v4, 0x7f090327

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 2
    .parameter "finish"
    .parameter "appChanged"

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "chg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->setResult(ILandroid/content/Intent;)V

    .line 469
    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->finish()V

    .line 472
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->showDialog(I)V

    .line 592
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 682
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 683
    .local v1, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 684
    invoke-direct {p0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 685
    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 736
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 737
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    .line 738
    iget-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 739
    invoke-direct {p0, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    .line 780
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 741
    .restart local p0
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 742
    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_2

    move v5, v8

    :goto_1
    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v4, v6, [Ljava/lang/Object;

    const/4 p0, 0x0

    check-cast p0, Ljava/lang/Object;

    .end local p0
    aput-object p0, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .restart local p0
    :cond_2
    move v5, v7

    goto :goto_1

    .line 746
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_4
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 750
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 751
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 752
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 753
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 754
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 759
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    goto :goto_0

    .line 761
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 763
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v3, :cond_8

    .line 764
    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 766
    :cond_8
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 767
    :cond_9
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_a

    .line 768
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(I)V

    goto/16 :goto_0

    .line 770
    :cond_a
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_0

    .line 771
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v3, :cond_b

    .line 772
    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 774
    :cond_b
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    move v1, v6

    .line 776
    .local v1, moveFlags:I
    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 777
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 778
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    .end local v1           #moveFlags:I
    :cond_c
    move v1, v8

    .line 774
    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const v5, 0x7f0b00d1

    const v4, 0x7f0b00d0

    .line 301
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 306
    new-instance v2, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v2}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 308
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setContentView(I)V

    .line 310
    const v2, 0x7f090324

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 313
    const v2, 0x7f0b0049

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 314
    const v2, 0x7f0b004b

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 315
    const v2, 0x7f0b004e

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 318
    const v2, 0x7f0b0046

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 320
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v3, 0x7f0902fb

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 321
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 322
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 325
    const v2, 0x7f0b004f

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 326
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 327
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 330
    const v2, 0x7f0b0053

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 331
    const v2, 0x7f0b0054

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 333
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 334
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "id"
    .parameter "args"

    .prologue
    const v3, 0x7f09031b

    const/4 v8, 0x0

    const v7, 0x7f0a001b

    const v6, 0x7f09031a

    const v5, 0x1080027

    .line 596
    packed-switch p1, :pswitch_data_0

    move-object v1, v8

    .line 676
    :goto_0
    return-object v1

    .line 598
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f090318

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090319

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 612
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f09031f

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090320

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 626
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f09031c

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09031c

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 639
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f090321

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090322

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 653
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f090331

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090332

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$6;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 667
    :pswitch_5
    const v1, 0x7f090334

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveErrorCode:I

    invoke-direct {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f090333

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 384
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 395
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 370
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->pause()V

    .line 371
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 361
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsState;->resume(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 365
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 399
    return-void
.end method
