.class public Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x1b7740L

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISBILITY:Z = false

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x11

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

.field static final IDLE_NOW_MSG:I = 0xb

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0xa

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x10

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x9

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x13

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field static final localLOGV:Z


# instance fields
.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;

.field mInitialStartTime:J

.field final mLRUActivities:Ljava/util/ArrayList;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field private mScreenStatusRequest:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserLeaving:Z

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Z)V
    .registers 9
    .parameter "service"
    .parameter "context"
    .parameter "mainStack"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 149
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mScreenStatusRequest:Z

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 213
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 220
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 225
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 232
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 244
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 246
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 255
    new-instance v1, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 318
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 319
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    .line 320
    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    .line 321
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 323
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 324
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 325
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStack;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mScreenStatusRequest:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/ActivityStack;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStack;->mScreenStatusRequest:Z

    return p1
.end method

.method private final completePauseLocked()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x0

    .line 767
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 770
    .local v4, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_12

    .line 771
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_76

    .line 773
    const/4 v6, 0x2

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 806
    :cond_f
    :goto_f
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 809
    :cond_12
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_af

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_af

    .line 810
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 820
    :cond_21
    :goto_21
    if-eqz v4, :cond_26

    .line 821
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 824
    :cond_26
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_73

    iget-wide v6, v4, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_73

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v6

    if-eqz v6, :cond_73

    .line 826
    const-wide/16 v1, 0x0

    .line 827
    .local v1, diff:J
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v6

    .line 828
    :try_start_41
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/ProcessStats;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Lcom/android/server/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v7

    iget-wide v9, v4, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v7, v9

    .line 830
    monitor-exit v6
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_c9

    .line 831
    cmp-long v6, v1, v11

    if-lez v6, :cond_73

    .line 832
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 833
    .local v0, bsi:Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 834
    :try_start_5f
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v5

    .line 837
    .local v5, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v5, :cond_72

    .line 838
    invoke-virtual {v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 840
    :cond_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_cc

    .line 843
    .end local v0           #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1           #diff:J
    .end local v5           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_73
    iput-wide v11, v4, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 844
    return-void

    .line 774
    :cond_76
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_ac

    .line 776
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_86

    .line 777
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 778
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 782
    :cond_86
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v6, :cond_8f

    .line 789
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_f

    .line 791
    :cond_8f
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_f

    .line 797
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 798
    .local v3, msg:Landroid/os/Message;
    const/16 v6, 0xb

    iput v6, v3, Landroid/os/Message;->what:I

    .line 799
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_f

    .line 804
    .end local v3           #msg:Landroid/os/Message;
    :cond_ac
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 812
    :cond_af
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 813
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 815
    :cond_bc
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v6, :cond_21

    .line 816
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_21

    .line 830
    .restart local v1       #diff:J
    :catchall_c9
    move-exception v7

    :try_start_ca
    monitor-exit v6
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v7

    .line 840
    .restart local v0       #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_cc
    move-exception v6

    :try_start_cd
    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v6
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .parameter "next"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 852
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 853
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 854
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 857
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 858
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 859
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 871
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_22

    .line 872
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 875
    :cond_22
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->thumbnail:Landroid/graphics/Bitmap;

    .line 876
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_2d

    .line 877
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 879
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 880
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 881
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService;->executeAppTransition()V

    .line 882
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 887
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5b

    .line 888
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 889
    :try_start_48
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/ProcessStats;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 890
    monitor-exit v1

    .line 894
    :goto_57
    return-void

    .line 890
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_58

    throw v2

    .line 892
    :cond_5b
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_57
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .registers 7
    .parameter "r"
    .parameter "task"

    .prologue
    .line 1864
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1865
    .local v1, i:I
    :cond_6
    if-lez v1, :cond_18

    .line 1866
    add-int/lit8 v1, v1, -0x1

    .line 1867
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1868
    .local v0, candidate:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_1a

    .line 1876
    .end local v0           #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_18
    const/4 v2, -0x1

    :goto_19
    return v2

    .line 1871
    .restart local v0       #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_1a
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    .line 1872
    goto :goto_19
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 448
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 449
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_11
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 453
    .local v0, N:I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_1a
    if-ltz v2, :cond_39

    .line 454
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 455
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_36

    .line 456
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object v4, v3

    .line 465
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :goto_35
    return-object v4

    .line 453
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 465
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_39
    const/4 v4, 0x0

    goto :goto_35
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 402
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 403
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_11
    const/4 v2, 0x0

    .line 408
    .local v2, cp:Lcom/android/server/am/TaskRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 409
    .local v0, N:I
    const/4 v5, 0x1

    sub-int v3, v0, v5

    .local v3, i:I
    :goto_1b
    if-ltz v3, :cond_77

    .line 410
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 411
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_74

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v5, v2, :cond_74

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_74

    .line 413
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 417
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v5, :cond_48

    .line 418
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    move-object v5, v4

    .line 438
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :goto_47
    return-object v5

    .line 422
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    :cond_48
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_5e

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    move-object v5, v4

    .line 427
    goto :goto_47

    .line 428
    :cond_5e
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v5, :cond_74

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    move-object v5, v4

    .line 433
    goto :goto_47

    .line 409
    :cond_74
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 438
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_77
    const/4 v5, 0x0

    goto :goto_47
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .parameter "r"
    .parameter "mode"

    .prologue
    .line 3019
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 3020
    .local v0, index:I
    if-gez v0, :cond_8

    .line 3021
    const/4 v1, 0x0

    .line 3024
    :goto_7
    return-object v1

    :cond_8
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_7
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .parameter "r"
    .parameter "index"
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 3032
    const/4 v2, 0x2

    if-ne p3, v2, :cond_36

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_36

    .line 3033
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 3034
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3035
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2b

    .line 3039
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3040
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3041
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3044
    .end local v0           #msg:Landroid/os/Message;
    :cond_2b
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3045
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()Z

    move-object v2, p1

    .line 3071
    :goto_35
    return-object v2

    .line 3050
    :cond_36
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3051
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3052
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_46

    .line 3053
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3055
    :cond_46
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3056
    .local v1, prevState:Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3058
    if-eqz p3, :cond_56

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_56

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_61

    .line 3063
    :cond_56
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_5f

    move-object v2, v3

    goto :goto_35

    :cond_5f
    move-object v2, p1

    goto :goto_35

    .line 3068
    :cond_61
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3069
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-object v2, p1

    .line 3071
    goto :goto_35
.end method

.method private final finishTaskMoveLocked(I)V
    .registers 3
    .parameter "task"

    .prologue
    .line 3343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3344
    return-void
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .parameter "tag"
    .parameter "r"
    .parameter "task"

    .prologue
    .line 3432
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3437
    return-void
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .parameter "where"

    .prologue
    const/4 v5, 0x1

    .line 1884
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1885
    .local v0, newTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1886
    .local v2, top:I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    sub-int v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1887
    .local v1, oldTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1888
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1889
    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1890
    return-object v0
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .registers 15
    .parameter "taskId"
    .parameter "newR"
    .parameter "launchFlags"
    .parameter "doClear"

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1801
    .local v2, i:I
    :cond_6
    if-lez v2, :cond_1a

    .line 1802
    add-int/lit8 v2, v2, -0x1

    .line 1803
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1804
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_6

    .line 1805
    add-int/lit8 v2, v2, 0x1

    .line 1811
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1a
    if-lez v2, :cond_85

    .line 1812
    add-int/lit8 v2, v2, -0x1

    .line 1813
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1814
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1a

    .line 1817
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_32

    .line 1818
    const/4 v0, 0x0

    .line 1856
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_31
    return-object v0

    .line 1820
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_32
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1822
    move-object v9, v1

    .line 1823
    .local v9, ret:Lcom/android/server/am/ActivityRecord;
    if-eqz p4, :cond_65

    .line 1824
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_65

    .line 1825
    add-int/lit8 v2, v2, 0x1

    .line 1826
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1827
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3f

    .line 1830
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1832
    add-int/lit8 v2, v2, -0x1

    goto :goto_3f

    .line 1840
    :cond_65
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_83

    const/high16 v0, 0x2000

    and-int/2addr v0, p3

    if-nez v0, :cond_83

    .line 1842
    iget-boolean v0, v9, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_83

    .line 1843
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v5

    .line 1844
    .local v5, index:I
    if-ltz v5, :cond_81

    .line 1845
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clear"

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 1848
    :cond_81
    const/4 v0, 0x0

    goto :goto_31

    .end local v5           #index:I
    :cond_83
    move-object v0, v9

    .line 1852
    goto :goto_31

    .line 1856
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    .end local v9           #ret:Lcom/android/server/am/ActivityRecord;
    :cond_85
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .registers 15
    .parameter "r"
    .parameter "changes"
    .parameter "andResume"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3553
    const/4 v2, 0x0

    .line 3554
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 3555
    .local v3, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_b

    .line 3556
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3557
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3562
    :cond_b
    if-eqz p3, :cond_54

    const/16 v0, 0x7543

    :goto_f
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v9

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3566
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v8}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 3570
    :try_start_33
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez p3, :cond_57

    move v5, v9

    :goto_3a
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_43} :catch_59

    .line 3579
    if-eqz p3, :cond_52

    .line 3580
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3581
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3582
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_52

    .line 3583
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_52
    move v0, v9

    .line 3587
    :goto_53
    return v0

    .line 3562
    :cond_54
    const/16 v0, 0x7544

    goto :goto_f

    :cond_57
    move v5, v8

    .line 3570
    goto :goto_3a

    .line 3575
    :catch_59
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    move v0, v8

    .line 3576
    goto :goto_53
.end method

.method private final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 3126
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1f

    .line 3127
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3128
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 3129
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3130
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 3134
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3135
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 3137
    :cond_1f
    return-void
.end method

.method private static removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .parameter "list"
    .parameter "app"

    .prologue
    .line 3258
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3262
    .local v0, i:I
    :cond_4
    :goto_4
    if-lez v0, :cond_16

    .line 3263
    add-int/lit8 v0, v0, -0x1

    .line 3264
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3267
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_4

    .line 3269
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 3272
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_16
    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 29
    .parameter "taskTop"
    .parameter "newActivity"

    .prologue
    .line 1502
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_68

    const/4 v3, 0x1

    move/from16 v18, v3

    .line 1504
    .local v18, forceReset:Z
    :goto_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    cmp-long v3, v6, v8

    if-lez v3, :cond_2b

    .line 1505
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2b

    .line 1507
    const/16 v18, 0x1

    .line 1511
    :cond_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    .line 1516
    .local v24, task:Lcom/android/server/am/TaskRecord;
    const/16 v22, 0x0

    .line 1517
    .local v22, target:Lcom/android/server/am/ActivityRecord;
    const/16 v23, 0x0

    .line 1518
    .local v23, targetI:I
    const/16 v25, -0x1

    .line 1519
    .local v25, taskTopI:I
    const/16 v21, -0x1

    .line 1520
    .local v21, replyChainEnd:I
    const/16 v20, -0x1

    .line 1521
    .local v20, lastReparentPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v19, v3, v4

    .end local p2
    .local v19, i:I
    :goto_47
    const/4 v3, -0x1

    move/from16 v0, v19

    move v1, v3

    if-lt v0, v1, :cond_3a9

    .line 1522
    if-ltz v19, :cond_6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v13, p2

    .line 1524
    .local v13, below:Lcom/android/server/am/ActivityRecord;
    :goto_5f
    if-eqz v13, :cond_6f

    iget-boolean v3, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6f

    .line 1521
    :goto_65
    add-int/lit8 v19, v19, -0x1

    goto :goto_47

    .line 1502
    .end local v13           #below:Lcom/android/server/am/ActivityRecord;
    .end local v18           #forceReset:Z
    .end local v19           #i:I
    .end local v20           #lastReparentPos:I
    .end local v21           #replyChainEnd:I
    .end local v22           #target:Lcom/android/server/am/ActivityRecord;
    .end local v23           #targetI:I
    .end local v24           #task:Lcom/android/server/am/TaskRecord;
    .end local v25           #taskTopI:I
    .restart local p2
    :cond_68
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_e

    .line 1522
    .end local p2
    .restart local v18       #forceReset:Z
    .restart local v19       #i:I
    .restart local v20       #lastReparentPos:I
    .restart local v21       #replyChainEnd:I
    .restart local v22       #target:Lcom/android/server/am/ActivityRecord;
    .restart local v23       #targetI:I
    .restart local v24       #task:Lcom/android/server/am/TaskRecord;
    .restart local v25       #taskTopI:I
    :cond_6c
    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_5f

    .line 1527
    .restart local v13       #below:Lcom/android/server/am/ActivityRecord;
    :cond_6f
    if-nez v22, :cond_78

    .line 1528
    move-object/from16 v22, v13

    .line 1529
    move/from16 v23, v19

    .line 1533
    const/16 v21, -0x1

    .line 1534
    goto :goto_65

    .line 1537
    :cond_78
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    move-object v0, v3

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    .line 1539
    .local v17, flags:I
    and-int/lit8 v3, v17, 0x2

    if-eqz v3, :cond_ca

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 1541
    .local v16, finishOnTaskLaunch:Z
    :goto_89
    and-int/lit8 v3, v17, 0x40

    if-eqz v3, :cond_ce

    const/4 v3, 0x1

    move v12, v3

    .line 1544
    .local v12, allowTaskReparenting:Z
    :goto_8f
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_28c

    .line 1550
    if-gez v25, :cond_9d

    .line 1551
    move/from16 v25, v23

    .line 1553
    :cond_9d
    if-eqz v13, :cond_288

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v0, v3

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_288

    .line 1554
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_d1

    const/4 v3, 0x1

    move v14, v3

    .line 1557
    .local v14, clearWhenTaskReset:Z
    :goto_b6
    if-nez v16, :cond_d4

    if-nez v14, :cond_d4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v3, v0

    if-eqz v3, :cond_d4

    .line 1564
    if-gez v21, :cond_c5

    .line 1565
    move/from16 v21, v23

    .line 1778
    .end local v14           #clearWhenTaskReset:Z
    :cond_c5
    :goto_c5
    move-object/from16 v22, v13

    .line 1779
    move/from16 v23, v19

    goto :goto_65

    .line 1539
    .end local v12           #allowTaskReparenting:Z
    .end local v16           #finishOnTaskLaunch:Z
    :cond_ca
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_89

    .line 1541
    .restart local v16       #finishOnTaskLaunch:Z
    :cond_ce
    const/4 v3, 0x0

    move v12, v3

    goto :goto_8f

    .line 1554
    .restart local v12       #allowTaskReparenting:Z
    :cond_d1
    const/4 v3, 0x0

    move v14, v3

    goto :goto_b6

    .line 1567
    .restart local v14       #clearWhenTaskReset:Z
    :cond_d4
    if-nez v16, :cond_20c

    if-nez v14, :cond_20c

    if-eqz v12, :cond_20c

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_20c

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20c

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1577
    .local v4, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_14b

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v3, v0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 1582
    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1596
    :goto_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move v5, v0

    move-object v0, v3

    move-object/from16 v1, v22

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 1597
    if-gez v21, :cond_131

    .line 1598
    move/from16 v21, v23

    .line 1600
    :cond_131
    const/4 v15, 0x0

    .line 1601
    .local v15, dstPos:I
    move/from16 v5, v23

    .local v5, srcPos:I
    :goto_134
    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_1e5

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1603
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_199

    .line 1601
    :goto_148
    add-int/lit8 v5, v5, 0x1

    goto :goto_134

    .line 1586
    .end local v5           #srcPos:I
    .end local v15           #dstPos:I
    :cond_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget v5, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_167

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    const/4 v5, 0x1

    iput v5, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 1590
    :cond_167
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_197

    const/4 v8, 0x1

    :goto_182
    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1592
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    iput-object v5, v3, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_11a

    .line 1590
    :cond_197
    const/4 v8, 0x0

    goto :goto_182

    .line 1608
    .restart local v5       #srcPos:I
    .restart local v15       #dstPos:I
    :cond_199
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    move v3, v0

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1609
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    iput-object v3, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1610
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    iget v6, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v15, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v3, v15, v4}, Lcom/android/server/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 1615
    add-int/lit8 v15, v15, 0x1

    .line 1619
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_148

    .line 1621
    :cond_1e5
    move-object/from16 v0, p1

    move-object v1, v4

    if-ne v0, v1, :cond_1ec

    .line 1622
    move-object/from16 p1, v13

    .line 1624
    :cond_1ec
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f4

    .line 1625
    const/16 v25, -0x1

    .line 1627
    :cond_1f4
    const/16 v21, -0x1

    .line 1628
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v3, v0

    if-eqz v3, :cond_c5

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v4, v0

    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_c5

    .line 1631
    .end local v5           #srcPos:I
    .end local v15           #dstPos:I
    :cond_20c
    if-nez v18, :cond_212

    if-nez v16, :cond_212

    if-eqz v14, :cond_284

    .line 1637
    :cond_212
    if-eqz v14, :cond_25b

    .line 1641
    add-int/lit8 v21, v23, 0x1

    .line 1644
    :goto_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    move v1, v3

    if-ge v0, v1, :cond_23f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_23f

    .line 1645
    add-int/lit8 v21, v21, 0x1

    goto :goto_216

    .line 1647
    :cond_23f
    add-int/lit8 v21, v21, -0x1

    .line 1651
    :cond_241
    :goto_241
    const/4 v4, 0x0

    .line 1652
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v5, v23

    .restart local v5       #srcPos:I
    :goto_244
    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_271

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1654
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_260

    .line 1652
    :cond_258
    :goto_258
    add-int/lit8 v5, v5, 0x1

    goto :goto_244

    .line 1648
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    .end local v5           #srcPos:I
    :cond_25b
    if-gez v21, :cond_241

    .line 1649
    move/from16 v21, v23

    goto :goto_241

    .line 1657
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v5       #srcPos:I
    :cond_260
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "reset"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_258

    .line 1659
    add-int/lit8 v21, v21, -0x1

    .line 1660
    add-int/lit8 v5, v5, -0x1

    goto :goto_258

    .line 1663
    :cond_271
    move-object/from16 v0, p1

    move-object v1, v4

    if-ne v0, v1, :cond_278

    .line 1664
    move-object/from16 p1, v13

    .line 1666
    :cond_278
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_280

    .line 1667
    const/16 v25, -0x1

    .line 1669
    :cond_280
    const/16 v21, -0x1

    .line 1670
    goto/16 :goto_c5

    .line 1674
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    .end local v5           #srcPos:I
    :cond_284
    const/16 v21, -0x1

    goto/16 :goto_c5

    .line 1679
    .end local v14           #clearWhenTaskReset:Z
    :cond_288
    const/16 v21, -0x1

    goto/16 :goto_c5

    .line 1682
    :cond_28c
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v3, v0

    if-eqz v3, :cond_299

    .line 1689
    if-gez v21, :cond_c5

    .line 1690
    move/from16 v21, v23

    goto/16 :goto_c5

    .line 1693
    :cond_299
    if-ltz v25, :cond_c5

    if-eqz v12, :cond_c5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_c5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 1707
    if-nez v18, :cond_2b8

    if-eqz v16, :cond_2ef

    .line 1708
    :cond_2b8
    if-gez v21, :cond_2bc

    .line 1709
    move/from16 v21, v23

    .line 1711
    :cond_2bc
    const/4 v4, 0x0

    .line 1712
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v5, v23

    .restart local v5       #srcPos:I
    :goto_2bf
    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_2eb

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1714
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2d6

    .line 1712
    :cond_2d3
    :goto_2d3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2bf

    .line 1717
    :cond_2d6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "reset"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d3

    .line 1719
    add-int/lit8 v25, v25, -0x1

    .line 1720
    add-int/lit8 v20, v20, -0x1

    .line 1721
    add-int/lit8 v21, v21, -0x1

    .line 1722
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d3

    .line 1725
    :cond_2eb
    const/16 v21, -0x1

    .line 1726
    goto/16 :goto_c5

    .line 1727
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    .end local v5           #srcPos:I
    :cond_2ef
    if-gez v21, :cond_2f3

    .line 1728
    move/from16 v21, v23

    .line 1730
    :cond_2f3
    move/from16 v5, v21

    .restart local v5       #srcPos:I
    :goto_2f5
    move v0, v5

    move/from16 v1, v23

    if-lt v0, v1, :cond_35f

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1732
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_30c

    .line 1730
    :goto_309
    add-int/lit8 v5, v5, -0x1

    goto :goto_2f5

    .line 1735
    :cond_30c
    if-gez v20, :cond_35c

    .line 1736
    move/from16 v20, v25

    .line 1737
    move-object/from16 p1, v4

    .line 1741
    :goto_312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1742
    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1743
    move-object/from16 v0, v24

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1747
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object v0, v3

    move/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_309

    .line 1739
    :cond_35c
    add-int/lit8 v20, v20, -0x1

    goto :goto_312

    .line 1754
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    :cond_35f
    const/16 v21, -0x1

    .line 1760
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c5

    .line 1761
    const/4 v3, 0x1

    sub-int v8, v20, v3

    .end local v5           #srcPos:I
    .local v8, j:I
    :goto_36e
    if-ltz v8, :cond_c5

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1763
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_382

    .line 1761
    :cond_37f
    :goto_37f
    add-int/lit8 v8, v8, -0x1

    goto :goto_36e

    .line 1766
    :cond_382
    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37f

    .line 1767
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "replace"

    move-object/from16 v6, p0

    move-object v7, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37f

    .line 1769
    add-int/lit8 v25, v25, -0x1

    .line 1770
    add-int/lit8 v20, v20, -0x1

    goto :goto_37f

    .line 1782
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    .end local v8           #j:I
    .end local v12           #allowTaskReparenting:Z
    .end local v13           #below:Lcom/android/server/am/ActivityRecord;
    .end local v16           #finishOnTaskLaunch:Z
    .end local v17           #flags:I
    :cond_3a9
    return-object p1
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 24
    .parameter "r"
    .parameter "newTask"
    .parameter "doResume"

    .prologue
    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1361
    .local v14, NH:I
    const/4 v4, -0x1

    .line 1363
    .local v4, addPos:I
    if-nez p2, :cond_82

    .line 1365
    const/16 v19, 0x1

    .line 1366
    .local v19, startIt:Z
    const/4 v3, 0x1

    sub-int v16, v14, v3

    .local v16, i:I
    :goto_11
    if-ltz v16, :cond_82

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    .line 1368
    .local v17, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move v3, v0

    if-eqz v3, :cond_2b

    .line 1366
    :cond_28
    :goto_28
    add-int/lit8 v16, v16, -0x1

    goto :goto_11

    .line 1371
    :cond_2b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    if-ne v3, v5, :cond_78

    .line 1375
    add-int/lit8 v4, v16, 0x1

    .line 1376
    if-nez v19, :cond_82

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1378
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 1379
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    iget v5, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget v7, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move v8, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 1494
    .end local v16           #i:I
    .end local v17           #p:Lcom/android/server/am/ActivityRecord;
    .end local v19           #startIt:Z
    :cond_77
    :goto_77
    return-void

    .line 1389
    .restart local v16       #i:I
    .restart local v17       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #startIt:Z
    :cond_78
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move v3, v0

    if-eqz v3, :cond_28

    .line 1390
    const/16 v19, 0x0

    goto :goto_28

    .line 1397
    .end local v16           #i:I
    .end local v17           #p:Lcom/android/server/am/ActivityRecord;
    .end local v19           #startIt:Z
    :cond_82
    if-gez v4, :cond_85

    .line 1398
    move v4, v14

    .line 1404
    :cond_85
    if-ge v4, v14, :cond_8d

    .line 1405
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1410
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1411
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 1412
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1413
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    iget v5, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1414
    if-lez v14, :cond_1ec

    .line 1418
    move/from16 v13, p2

    .line 1419
    .local v13, showStartingIcon:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    .line 1420
    .local v18, proc:Lcom/android/server/am/ProcessRecord;
    if-nez v18, :cond_d7

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #proc:Lcom/android/server/am/ProcessRecord;
    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 1423
    .restart local v18       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_d7
    if-eqz v18, :cond_e0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v3, v0

    if-nez v3, :cond_ea

    .line 1424
    :cond_e0
    if-nez p2, :cond_199

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v3, v0

    if-nez v3, :cond_199

    .line 1429
    const/4 v13, 0x0

    .line 1436
    :cond_ea
    :goto_ea
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_19c

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    :goto_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget v7, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move v8, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 1451
    const/4 v15, 0x1

    .line 1452
    .local v15, doShow:Z
    if-eqz p2, :cond_156

    .line 1458
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-eqz v3, :cond_156

    .line 1460
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 1461
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1e1

    const/4 v3, 0x1

    move v15, v3

    .line 1464
    :cond_156
    :goto_156
    if-eqz v15, :cond_18e

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v12, v0

    .line 1470
    .local v12, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_169

    .line 1473
    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    if-eq v3, v5, :cond_1e5

    const/4 v12, 0x0

    .line 1477
    :cond_169
    :goto_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move v11, v0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    .line 1491
    .end local v12           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v13           #showStartingIcon:Z
    .end local v15           #doShow:Z
    .end local v18           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_18e
    :goto_18e
    if-eqz p3, :cond_77

    .line 1492
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_77

    .line 1431
    .restart local v13       #showStartingIcon:Z
    .restart local v18       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_199
    const/4 v13, 0x1

    goto/16 :goto_ea

    .line 1439
    :cond_19c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x8

    and-int/2addr v3, v5

    if-eqz v3, :cond_1c3

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/16 v5, 0x1008

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_10e

    .line 1444
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    if-eqz p2, :cond_1de

    const/16 v5, 0x1008

    :goto_1ce
    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_10e

    .line 1444
    :cond_1de
    const/16 v5, 0x1006

    goto :goto_1ce

    .line 1461
    .restart local v15       #doShow:Z
    :cond_1e1
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_156

    .line 1475
    .restart local v12       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_1e5
    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_169

    const/4 v12, 0x0

    goto/16 :goto_169

    .line 1484
    .end local v12           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v13           #showStartingIcon:Z
    .end local v15           #doShow:Z
    .end local v18           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget v7, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move v8, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    goto :goto_18e
.end method

.method private final startPausingLocked(ZZ)V
    .registers 13
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    const/16 v9, 0x10

    const/4 v7, 0x0

    const-string v8, "ActivityManager"

    .line 656
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_28

    .line 657
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 658
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to pause when pause is already pending for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_28
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 662
    .local v2, prev:Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_3c

    .line 663
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 664
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 735
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_3b
    return-void

    .line 669
    :cond_3c
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 670
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 671
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 672
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 673
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 675
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 677
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_d7

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_d7

    .line 680
    const/16 v3, 0x753d

    const/4 v4, 0x2

    :try_start_5d
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 683
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v3, v2, v4, p1, v5}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 685
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_87

    .line 686
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_87} :catch_c9

    .line 701
    :cond_87
    :goto_87
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_ad

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_ad

    .line 702
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 703
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 705
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 706
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 711
    .end local v1           #msg:Landroid/os/Message;
    :cond_ad
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_dc

    .line 716
    if-nez p2, :cond_b6

    .line 717
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 725
    :cond_b6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 726
    .restart local v1       #msg:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 727
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3b

    .line 688
    .end local v1           #msg:Landroid/os/Message;
    :catch_c9
    move-exception v3

    move-object v0, v3

    .line 690
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 692
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_87

    .line 695
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d7
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 696
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_87

    .line 733
    :cond_dc
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_3b
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 14
    .parameter "r"
    .parameter "andResume"
    .parameter "checkConfig"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 608
    .local v8, app:Lcom/android/server/am/ProcessRecord;
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_31

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 610
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_27

    .line 611
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 617
    :cond_27
    :goto_27
    if-eqz v8, :cond_61

    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_61

    .line 619
    :try_start_2d
    invoke-virtual {p0, p1, v8, p2, p3}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_3e

    .line 632
    :goto_30
    return-void

    .line 613
    :cond_31
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_27

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_27

    .line 621
    :catch_3e
    move-exception v9

    .line 622
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_61
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    const-string v5, "activity"

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;Z)Lcom/android/server/am/ProcessRecord;

    goto :goto_30
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2653
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_20

    .line 2655
    :cond_16
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1f

    .line 2656
    const-string v1, "no-history"

    invoke-virtual {p0, p1, v3, v5, v1}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 2688
    :cond_1f
    :goto_1f
    return-void

    .line 2659
    :cond_20
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1f

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1f

    .line 2660
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_3d

    .line 2661
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_3d

    .line 2662
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2665
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2667
    const/4 v1, 0x0

    :try_start_41
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2668
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2671
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_53

    .line 2672
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2674
    :cond_53
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v1, p1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_5f

    goto :goto_1f

    .line 2675
    :catch_5f
    move-exception v1

    move-object v0, v1

    .line 2679
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Exception thrown during pause"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2681
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2682
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2683
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v1, :cond_1f

    .line 2684
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_1f
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .parameter "r"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 392
    .local v0, hadit:Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    return v0
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .registers 9
    .parameter "token"

    .prologue
    .line 3242
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3243
    :try_start_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x11

    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3245
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 3246
    .local v0, index:I
    if-ltz v0, :cond_28

    .line 3247
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3248
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_28

    .line 3249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3250
    .local v1, origId:J
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3251
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3254
    .end local v1           #origId:J
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_28
    monitor-exit v4

    .line 3255
    return-void

    .line 3254
    .end local v0           #index:I
    :catchall_2a
    move-exception v5

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v5
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .registers 31
    .parameter "token"
    .parameter "fromTimeout"
    .parameter "config"

    .prologue
    .line 2737
    const/16 v24, 0x0

    .line 2738
    .local v24, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v19, 0x0

    .line 2739
    .local v19, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v25, 0x0

    .line 2740
    .local v25, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v14, 0x0

    .line 2741
    .local v14, NS:I
    const/4 v13, 0x0

    .line 2742
    .local v13, NF:I
    const/4 v15, 0x0

    .line 2743
    .local v15, NT:I
    const/16 v23, 0x0

    .line 2744
    .local v23, sendThumbnail:Landroid/app/IApplicationThread;
    const/16 v16, 0x0

    .line 2745
    .local v16, booting:Z
    const/16 v18, 0x0

    .line 2747
    .local v18, enableScreen:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2748
    if-eqz p1, :cond_26

    .line 2749
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0xa

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2753
    :cond_26
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v22

    .line 2754
    .local v22, index:I
    if-ltz v22, :cond_15d

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2757
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_47

    .line 2758
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 2766
    :cond_47
    if-eqz p3, :cond_4e

    .line 2767
    move-object/from16 v0, p3

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 2771
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v3, v0

    if-ne v3, v5, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2778
    :cond_72
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2780
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v3, :cond_95

    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_95

    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_95

    .line 2781
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v23, v0

    .line 2782
    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 2788
    :cond_95
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2791
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v3, v0

    if-eqz v3, :cond_ba

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_ba

    if-nez p2, :cond_ba

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2794
    const/16 v18, 0x1

    .line 2803
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_ba
    :goto_ba
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v24

    .line 2804
    if-eqz v24, :cond_170

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v14, v3

    .line 2805
    :goto_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_eb

    .line 2806
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_e1
    .catchall {:try_start_18 .. :try_end_e1} :catchall_16d

    .line 2807
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_e9
    .catchall {:try_start_e1 .. :try_end_e9} :catchall_1fc

    move-object/from16 v19, v20

    .line 2809
    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_eb
    :try_start_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_113

    .line 2810
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_107
    .catchall {:try_start_eb .. :try_end_107} :catchall_16d

    .line 2811
    .end local v25           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v26, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_111
    .catchall {:try_start_107 .. :try_end_111} :catchall_201

    move-object/from16 v25, v26

    .line 2814
    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v25       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_113
    :try_start_113
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v3, v0

    if-eqz v3, :cond_12c

    .line 2815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    move-object v0, v3

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2818
    :cond_12c
    monitor-exit v17
    :try_end_12d
    .catchall {:try_start_113 .. :try_end_12d} :catchall_16d

    .line 2823
    if-eqz v23, :cond_136

    .line 2825
    :try_start_12f
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_136} :catch_174

    .line 2834
    :cond_136
    :goto_136
    const/16 v21, 0x0

    .local v21, i:I
    :goto_138
    move/from16 v0, v21

    move v1, v14

    if-ge v0, v1, :cond_199

    .line 2835
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2836
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    monitor-enter v3

    .line 2837
    :try_start_14d
    iget-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_18f

    .line 2838
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    .line 2842
    :goto_159
    monitor-exit v3
    :try_end_15a
    .catchall {:try_start_14d .. :try_end_15a} :catchall_196

    .line 2834
    add-int/lit8 v21, v21, 0x1

    goto :goto_138

    .line 2798
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    .end local v21           #i:I
    :cond_15d
    if-eqz p2, :cond_ba

    .line 2799
    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    move-object/from16 v6, p0

    move/from16 v7, p2

    :try_start_168
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_ba

    .line 2818
    .end local v22           #index:I
    :catchall_16d
    move-exception v3

    :goto_16e
    monitor-exit v17
    :try_end_16f
    .catchall {:try_start_168 .. :try_end_16f} :catchall_16d

    throw v3

    .line 2804
    .restart local v22       #index:I
    :cond_170
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_c9

    .line 2826
    :catch_174
    move-exception v17

    .line 2827
    .local v17, e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Exception thrown when requesting thumbnail"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_136

    .line 2840
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v21       #i:I
    :cond_18f
    :try_start_18f
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_159

    .line 2842
    :catchall_196
    move-exception v4

    monitor-exit v3
    :try_end_198
    .catchall {:try_start_18f .. :try_end_198} :catchall_196

    throw v4

    .line 2847
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_199
    const/16 v21, 0x0

    :goto_19b
    move/from16 v0, v21

    move v1, v13

    if-ge v0, v1, :cond_1bf

    .line 2848
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2849
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    monitor-enter v3

    .line 2850
    const/4 v4, 0x1

    :try_start_1b1
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 2851
    monitor-exit v3

    .line 2847
    add-int/lit8 v21, v21, 0x1

    goto :goto_19b

    .line 2851
    :catchall_1bc
    move-exception v4

    monitor-exit v3
    :try_end_1be
    .catchall {:try_start_1b1 .. :try_end_1be} :catchall_1bc

    throw v4

    .line 2855
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1bf
    const/16 v21, 0x0

    :goto_1c1
    move/from16 v0, v21

    move v1, v15

    if-ge v0, v1, :cond_1df

    .line 2856
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2857
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    .line 2855
    add-int/lit8 v21, v21, 0x1

    goto :goto_1c1

    .line 2860
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1df
    if-eqz v16, :cond_1e9

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2864
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 2868
    if-eqz v18, :cond_1fb

    .line 2869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 2871
    :cond_1fb
    return-void

    .line 2818
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v21           #i:I
    .restart local v20       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_1fc
    move-exception v3

    move-object/from16 v19, v20

    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_16e

    .end local v25           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_201
    move-exception v3

    move-object/from16 v25, v26

    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v25       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_16e
.end method

.method final activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;Z)V
    .registers 12
    .parameter "token"
    .parameter "icicle"
    .parameter "timeout"

    .prologue
    .line 742
    const/4 v2, 0x0

    .line 744
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 745
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 746
    .local v1, index:I
    if-ltz v1, :cond_2d

    .line 747
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    .line 748
    if-nez p3, :cond_1b

    .line 749
    iput-object p2, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 750
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 752
    :cond_1b
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 753
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_2f

    .line 754
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 755
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V

    .line 763
    :cond_2d
    :goto_2d
    monitor-exit v4

    .line 764
    return-void

    .line 757
    :cond_2f
    const/16 v3, 0x753c

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_56

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_4d
    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_2d

    .line 763
    .end local v1           #index:I
    :catchall_53
    move-exception v3

    monitor-exit v4
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_53

    throw v3

    .line 757
    .restart local v1       #index:I
    :cond_56
    :try_start_56
    const-string v7, "(none)"
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_53

    goto :goto_4d
.end method

.method checkScreenIdle()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3596
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v2, v3, v5

    .line 3597
    .local v2, top:I
    if-ltz v2, :cond_31

    .line 3598
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    if-nez v2, :cond_32

    move v4, v2

    :goto_10
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3599
    .local v1, p:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3600
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.idle_screen"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3601
    .local v0, StkIntent:Landroid/content/Intent;
    const-string v3, "SCREEN_IDLE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3602
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3605
    .end local v0           #StkIntent:Landroid/content/Intent;
    .end local v1           #p:Lcom/android/server/am/ActivityRecord;
    :cond_31
    return-void

    .line 3598
    :cond_32
    sub-int v4, v2, v5

    goto :goto_10
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 9
    .parameter "r"
    .parameter "cleanServices"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3082
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_8

    .line 3083
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3085
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_12

    .line 3086
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3089
    :cond_12
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 3090
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3095
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3096
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3099
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4a

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_4a

    .line 3100
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3101
    .local v0, apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 3102
    .local v2, rec:Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_2e

    .line 3103
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_2e

    .line 3106
    .end local v0           #apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2           #rec:Lcom/android/server/am/PendingIntentRecord;
    :cond_48
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3109
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4a
    if-eqz p2, :cond_4f

    .line 3110
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3113
    :cond_4f
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_60

    .line 3117
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3121
    :cond_60
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3122
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3123
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 3144
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1f

    .line 3145
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3146
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 3148
    .local v0, c:Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_b

    .line 3150
    .end local v0           #c:Lcom/android/server/am/ConnectionRecord;
    :cond_1d
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 3152
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1f
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 16
    .parameter "r"
    .parameter "removeFromApp"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3165
    const/16 v6, 0x7542

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3169
    const/4 v4, 0x0

    .line 3171
    .local v4, removedFromHistory:Z
    invoke-virtual {p0, p1, v10}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3173
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_c8

    move v1, v11

    .line 3175
    .local v1, hadApp:Z
    :goto_2d
    if-eqz v1, :cond_dc

    .line 3176
    if-eqz p2, :cond_72

    .line 3177
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3178
    .local v2, idx:I
    if-ltz v2, :cond_42

    .line 3179
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3181
    :cond_42
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_61

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_61

    .line 3182
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v12, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 3183
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3186
    :cond_61
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_72

    .line 3189
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v11, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 3193
    .end local v2           #idx:I
    :cond_72
    const/4 v5, 0x0

    .line 3197
    .local v5, skipDestroy:Z
    :try_start_73
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, p1, v7, v8}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7e} :catch_cb

    .line 3211
    :cond_7e
    :goto_7e
    iput-object v12, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3212
    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 3214
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_d7

    if-nez v5, :cond_d7

    .line 3215
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3216
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3217
    .local v3, msg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3218
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3232
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #skipDestroy:Z
    :goto_9d
    iput v10, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3234
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c7

    if-eqz v1, :cond_c7

    .line 3235
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    :cond_c7
    return v4

    .end local v1           #hadApp:Z
    :cond_c8
    move v1, v10

    .line 3173
    goto/16 :goto_2d

    .line 3199
    .restart local v1       #hadApp:Z
    .restart local v5       #skipDestroy:Z
    :catch_cb
    move-exception v6

    move-object v0, v6

    .line 3204
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_7e

    .line 3205
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3206
    const/4 v4, 0x1

    .line 3207
    const/4 v5, 0x1

    goto :goto_7e

    .line 3220
    .end local v0           #e:Ljava/lang/Exception;
    :cond_d7
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_9d

    .line 3224
    .end local v5           #skipDestroy:Z
    :cond_dc
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_e5

    .line 3225
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3226
    const/4 v4, 0x1

    goto :goto_9d

    .line 3228
    :cond_e5
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_9d
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 5
    .parameter "starting"
    .parameter "configChanges"

    .prologue
    const/4 v1, 0x0

    .line 1044
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1045
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_a

    .line 1046
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1048
    :cond_a
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 16
    .parameter "top"
    .parameter "starting"
    .parameter "onlyThisProcess"
    .parameter "configChanges"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "ActivityManager"

    .line 908
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 909
    .local v1, count:I
    sub-int v4, v1, v9

    .line 910
    .local v4, i:I
    :goto_c
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_17

    .line 911
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 914
    :cond_17
    const/4 v0, 0x0

    .line 915
    .local v0, behindFullscreen:Z
    :goto_18
    if-ltz v4, :cond_70

    .line 916
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 920
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_29

    .line 915
    :cond_26
    add-int/lit8 v4, v4, -0x1

    goto :goto_18

    .line 924
    :cond_29
    if-eqz p3, :cond_33

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    :cond_33
    move v2, v9

    .line 929
    .local v2, doThisProcess:Z
    :goto_34
    if-eq v5, p2, :cond_3b

    if-eqz v2, :cond_3b

    .line 930
    invoke-virtual {p0, v5, v8}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 933
    :cond_3b
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_45

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v6, :cond_b1

    .line 934
    :cond_45
    if-eqz p3, :cond_4f

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 941
    :cond_4f
    if-eq v5, p2, :cond_56

    .line 942
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, p4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 944
    :cond_56
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v6, :cond_61

    .line 947
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v6, v5, v9}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 949
    :cond_61
    if-eq v5, p2, :cond_66

    .line 950
    invoke-direct {p0, v5, v8, v8}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 984
    :cond_66
    :goto_66
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr p4, v6

    .line 986
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_26

    .line 990
    const/4 v0, 0x1

    .line 991
    add-int/lit8 v4, v4, -0x1

    .line 998
    .end local v2           #doThisProcess:Z
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_70
    :goto_70
    if-ltz v4, :cond_123

    .line 999
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1004
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_ac

    .line 1005
    if-eqz v0, :cond_11d

    .line 1006
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_ac

    .line 1009
    iput-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1011
    :try_start_86
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1012
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_9a

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_ac

    :cond_9a
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_ac

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_ac

    .line 1017
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_ac} :catch_fc

    .line 1035
    :cond_ac
    :goto_ac
    add-int/lit8 v4, v4, -0x1

    goto :goto_70

    :cond_af
    move v2, v8

    .line 924
    goto :goto_34

    .line 954
    .restart local v2       #doThisProcess:Z
    :cond_b1
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_b9

    .line 959
    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_66

    .line 961
    :cond_b9
    if-nez p3, :cond_66

    .line 964
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_66

    if-eq v5, p2, :cond_66

    .line 969
    iput-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 971
    :try_start_c5
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 972
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v7, 0x1

    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 973
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d9} :catch_da

    goto :goto_66

    .line 974
    :catch_da
    move-exception v6

    move-object v3, v6

    .line 977
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown making visibile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66

    .line 1019
    .end local v2           #doThisProcess:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catch_fc
    move-exception v6

    move-object v3, v6

    .line 1022
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown making hidden: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    .line 1029
    .end local v3           #e:Ljava/lang/Exception;
    :cond_11d
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_ac

    .line 1032
    const/4 v0, 0x1

    goto :goto_ac

    .line 1037
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_123
    return-void
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 10
    .parameter "r"
    .parameter "globalChanges"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3448
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v3, :cond_8

    move v3, v5

    .line 3548
    :goto_7
    return v3

    .line 3459
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 3460
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v3, v1, :cond_12

    move v3, v5

    .line 3463
    goto :goto_7

    .line 3467
    :cond_12
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1b

    .line 3470
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    move v3, v5

    .line 3471
    goto :goto_7

    .line 3476
    :cond_1b
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3477
    .local v2, oldConfig:Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3481
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_29

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_2e

    .line 3484
    :cond_29
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    move v3, v5

    .line 3485
    goto :goto_7

    .line 3489
    :cond_2e
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3496
    .local v0, changes:I
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    if-eqz v3, :cond_74

    .line 3498
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v3, v0

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3499
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v3, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 3500
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4f

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_54

    .line 3503
    :cond_4f
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    :goto_52
    move v3, v6

    .line 3530
    goto :goto_7

    .line 3504
    :cond_54
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_5e

    .line 3510
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    move v3, v5

    .line 3511
    goto :goto_7

    .line 3512
    :cond_5e
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_6c

    .line 3519
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 3520
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_52

    .line 3524
    :cond_6c
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 3525
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_52

    .line 3538
    :cond_74
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_85

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_85

    .line 3541
    :try_start_7e
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_85} :catch_8b

    .line 3546
    :cond_85
    :goto_85
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    move v3, v5

    .line 3548
    goto/16 :goto_7

    .line 3542
    :catch_8b
    move-exception v3

    goto :goto_85
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z
    .registers 14
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 2917
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_1e

    .line 2918
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate finish request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    const/4 v1, 0x0

    .line 3010
    .end local p2
    :goto_1d
    return v1

    .line 2922
    .restart local p2
    :cond_1e
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 2923
    const/16 v1, 0x7531

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2926
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v1, Lcom/android/server/am/TaskRecord;->numActivities:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 2927
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_82

    .line 2928
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 2929
    .local v7, next:Lcom/android/server/am/ActivityRecord;
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v2, :cond_82

    .line 2930
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v1, :cond_70

    .line 2932
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2934
    :cond_70
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_82

    .line 2938
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2943
    .end local v7           #next:Lcom/android/server/am/ActivityRecord;
    :cond_82
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 2944
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_99

    .line 2945
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_99

    .line 2946
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2951
    :cond_99
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2952
    .local v0, resultTo:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c3

    .line 2956
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_b6

    .line 2957
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p4, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2961
    :cond_b6
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2963
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2970
    :cond_c3
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2971
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 2972
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2973
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2975
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e0

    .line 2979
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2982
    :cond_e0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_11e

    .line 2983
    if-lez p2, :cond_f7

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/server/am/ActivityRecord;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v1, v2, :cond_118

    :cond_f7
    const/4 v1, 0x1

    move v6, v1

    .line 2987
    .local v6, endTask:Z
    :goto_f9
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    if-eqz v6, :cond_11b

    const/16 v2, 0x2009

    :goto_101
    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 2992
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2994
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_115

    .line 2997
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 3010
    .end local v6           #endTask:Z
    :cond_115
    const/4 v1, 0x0

    goto/16 :goto_1d

    .line 2983
    :cond_118
    const/4 v1, 0x0

    move v6, v1

    goto :goto_f9

    .line 2987
    .restart local v6       #endTask:Z
    :cond_11b
    const/16 v2, 0x2007

    goto :goto_101

    .line 3000
    .end local v6           #endTask:Z
    .restart local p2
    :cond_11e
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_115

    .line 3004
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_12e

    const/4 v1, 0x1

    goto/16 :goto_1d

    :cond_12e
    const/4 v1, 0x0

    goto/16 :goto_1d
.end method

.method getScreenStatusRequest()Z
    .registers 2

    .prologue
    .line 3591
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mScreenStatusRequest:Z

    return v0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .registers 7
    .parameter "token"

    .prologue
    .line 375
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 378
    .local v0, count:I
    const/4 v2, -0x1

    .line 379
    .local v2, index:I
    const/4 v4, 0x1

    sub-int v1, v0, v4

    .local v1, i:I
    :goto_a
    if-ltz v1, :cond_15

    .line 380
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 381
    .local v3, o:Ljava/lang/Object;
    if-ne v3, p1, :cond_16

    .line 382
    move v2, v1

    .line 387
    .end local v3           #o:Ljava/lang/Object;
    :cond_15
    return v2

    .line 379
    .restart local v3       #o:Ljava/lang/Object;
    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_a
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .registers 16
    .parameter "task"
    .parameter "reason"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 3358
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveTaskToBack: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mScreenStatusRequest:Z

    if-eqz v8, :cond_21

    .line 3361
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkScreenIdle()V

    .line 3367
    :cond_21
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v8, :cond_4d

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v8, :cond_4d

    .line 3368
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 3369
    .local v5, next:Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_35

    .line 3370
    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 3372
    :cond_35
    if-eqz v5, :cond_4d

    .line 3374
    const/4 v3, 0x1

    .line 3376
    .local v3, moveOK:Z
    :try_start_38
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_41} :catch_46

    move-result v3

    .line 3380
    :goto_42
    if-nez v3, :cond_4d

    move v8, v12

    .line 3427
    .end local v3           #moveOK:Z
    .end local v5           #next:Lcom/android/server/am/ActivityRecord;
    :goto_45
    return v8

    .line 3377
    .restart local v3       #moveOK:Z
    .restart local v5       #next:Lcom/android/server/am/ActivityRecord;
    :catch_46
    move-exception v8

    move-object v2, v8

    .line 3378
    .local v2, e:Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v8, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_42

    .line 3386
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #moveOK:Z
    .end local v5           #next:Lcom/android/server/am/ActivityRecord;
    :cond_4d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3391
    .local v4, moved:Ljava/util/ArrayList;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3392
    .local v0, N:I
    const/4 v1, 0x0

    .line 3393
    .local v1, bottom:I
    const/4 v6, 0x0

    .line 3397
    .local v6, pos:I
    :goto_5a
    if-ge v6, v0, :cond_7c

    .line 3398
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 3401
    .local v7, r:Lcom/android/server/am/ActivityRecord;
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, p1, :cond_79

    .line 3403
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3404
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3405
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3406
    add-int/lit8 v1, v1, 0x1

    .line 3408
    :cond_79
    add-int/lit8 v6, v6, 0x1

    .line 3409
    goto :goto_5a

    .line 3411
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_7c
    if-eqz p2, :cond_a7

    iget-object v8, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_a7

    .line 3413
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v8, v12}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 3414
    invoke-virtual {p0, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 3415
    .restart local v7       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_9b

    .line 3416
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3421
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_9b
    :goto_9b
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v8, v4}, Lcom/android/server/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 3426
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 3427
    const/4 v8, 0x1

    goto :goto_45

    .line 3419
    :cond_a7
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/16 v9, 0x200b

    invoke-virtual {v8, v9}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto :goto_9b
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 12
    .parameter "tr"
    .parameter "reason"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3284
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3285
    .local v4, task:I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v5, v6, v7

    .line 3287
    .local v5, top:I
    if-ltz v5, :cond_1c

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, v4, :cond_1d

    .line 3340
    :cond_1c
    :goto_1c
    return-void

    .line 3292
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3296
    .local v1, moved:Ljava/util/ArrayList;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v5, v6, v7

    .line 3297
    move v2, v5

    .line 3301
    .local v2, pos:I
    :goto_2b
    if-ltz v2, :cond_5c

    .line 3302
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3305
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .line 3306
    .local v0, first:Z
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, v4, :cond_59

    .line 3308
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3309
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3310
    invoke-virtual {v1, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3311
    add-int/lit8 v5, v5, -0x1

    .line 3312
    if-eqz v0, :cond_59

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v6, :cond_59

    .line 3313
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 3314
    const/4 v0, 0x0

    .line 3317
    :cond_59
    add-int/lit8 v2, v2, -0x1

    .line 3318
    goto :goto_2b

    .line 3322
    .end local v0           #first:Z
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5c
    if-eqz p2, :cond_8c

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_8c

    .line 3324
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 3325
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3326
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_7c

    .line 3327
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3333
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_7c
    :goto_7c
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 3338
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 3339
    const/16 v6, 0x7532

    invoke-static {v6, v4}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_1c

    .line 3330
    :cond_8c
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/16 v7, 0x100a

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto :goto_7c
.end method

.method pauseIfSleepingLocked()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_38

    .line 636
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 637
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 638
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 639
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 640
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    :cond_2f
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_38

    .line 650
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 653
    :cond_38
    return-void
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .registers 9
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2692
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2693
    .local v0, N:I
    if-gtz v0, :cond_b

    const/4 v5, 0x0

    .line 2730
    :goto_a
    return-object v5

    .line 2695
    :cond_b
    const/4 v4, 0x0

    .line 2697
    .local v4, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_5d

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_5d

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v5, :cond_5d

    const/4 v5, 0x1

    move v2, v5

    .line 2700
    .local v2, nowVisible:Z
    :goto_1e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v0, :cond_5f

    .line 2701
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2705
    .local v3, s:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_41

    if-eqz v2, :cond_41

    .line 2706
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2707
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2708
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_41

    .line 2715
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2718
    :cond_41
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v5, :cond_5a

    if-eqz p1, :cond_5a

    .line 2720
    if-nez v4, :cond_4e

    .line 2721
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2723
    .restart local v4       #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_4e
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2724
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2725
    add-int/lit8 v0, v0, -0x1

    .line 2726
    add-int/lit8 v1, v1, -0x1

    .line 2700
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .end local v1           #i:I
    .end local v2           #nowVisible:Z
    .end local v3           #s:Lcom/android/server/am/ActivityRecord;
    :cond_5d
    move v2, v6

    .line 2697
    goto :goto_1e

    .restart local v1       #i:I
    .restart local v2       #nowVisible:Z
    :cond_5f
    move-object v5, v4

    .line 2730
    goto :goto_a
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 24
    .parameter "r"
    .parameter "app"
    .parameter "andResume"
    .parameter "checkConfig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 481
    if-eqz p4, :cond_40

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_db

    move-object/from16 v7, p1

    :goto_30
    invoke-virtual {v5, v6, v7}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v15

    .line 485
    .local v15, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;)Z

    .line 488
    .end local v15           #config:Landroid/content/res/Configuration;
    :cond_40
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 492
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 493
    .local v17, idx:I
    if-gez v17, :cond_5f

    .line 494
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 499
    :try_start_6e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v5, v0

    if-nez v5, :cond_de

    .line 500
    new-instance v5, Landroid/os/RemoteException;

    invoke-direct {v5}, Landroid/os/RemoteException;-><init>()V

    throw v5
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7b} :catch_7b

    .line 546
    :catch_7b
    move-exception v5

    move-object/from16 v16, v5

    .line 547
    .local v16, e:Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    move v5, v0

    if-eqz v5, :cond_267

    .line 550
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second failure launching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", giving up"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move v6, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v7, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 554
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "2nd-crash"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 556
    const/4 v5, 0x0

    .line 599
    .end local v16           #e:Landroid/os/RemoteException;
    :goto_da
    return v5

    .line 482
    .end local v17           #idx:I
    :cond_db
    const/4 v7, 0x0

    goto/16 :goto_30

    .line 502
    .restart local v17       #idx:I
    :cond_de
    const/4 v11, 0x0

    .line 503
    .local v11, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v12, 0x0

    .line 504
    .local v12, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_ec

    .line 505
    :try_start_e2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v11, v0

    .line 506
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object v12, v0

    .line 512
    :cond_ec
    if-eqz p3, :cond_117

    .line 513
    const/16 v5, 0x7536

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v8, v0

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 517
    :cond_117
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    move v5, v0

    if-eqz v5, :cond_128

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 520
    :cond_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object v10, v0

    if-nez p3, :cond_263

    const/4 v7, 0x1

    move v13, v7

    :goto_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v14

    move-object/from16 v7, p1

    invoke-interface/range {v5 .. v14}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 526
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800

    and-int/2addr v5, v6

    if-eqz v5, :cond_1f5

    .line 531
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f5

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object v0, v5

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_1cb

    .line 534
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting new heavy weight process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when already running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 541
    .local v18, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1f5
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_1f5} :catch_7b

    .line 565
    .end local v18           #msg:Landroid/os/Message;
    :cond_1f5
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 566
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_222

    .line 567
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " being launched, but already in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_222
    if-eqz p3, :cond_273

    .line 574
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 575
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 576
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 577
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 578
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 579
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 580
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->pauseIfSleepingLocked()V

    .line 595
    :goto_251
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_260

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 599
    :cond_260
    const/4 v5, 0x1

    goto/16 :goto_da

    .line 521
    :cond_263
    const/4 v7, 0x0

    move v13, v7

    goto/16 :goto_15e

    .line 561
    .end local v11           #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12           #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v16       #e:Landroid/os/RemoteException;
    :cond_267
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 562
    throw v16

    .line 587
    .end local v16           #e:Landroid/os/RemoteException;
    .restart local v11       #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v12       #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :cond_273
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 588
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_251
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .parameter "app"

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 3276
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 3277
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 3278
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 3279
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 12
    .parameter "timeout"
    .parameter "r"
    .parameter "thisTime"
    .parameter "totalTime"

    .prologue
    .line 2600
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_2d

    .line 2601
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 2602
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 2603
    if-eqz p2, :cond_26

    .line 2604
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 2606
    :cond_26
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 2607
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 2600
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2609
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_2d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2610
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .parameter "r"

    .prologue
    .line 2613
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_37

    .line 2614
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 2615
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 2616
    if-eqz p1, :cond_27

    .line 2617
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 2619
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 2620
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 2613
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2622
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_37
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2623
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z
    .registers 15
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 2883
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 2884
    .local v2, index:I
    if-gez v2, :cond_a

    move v0, v4

    .line 2908
    :goto_9
    return v0

    .line 2887
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2890
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x1

    .line 2891
    .local v7, lastActivity:Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v6, v0, v9

    .local v6, i:I
    :goto_1b
    if-ltz v6, :cond_2c

    .line 2892
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 2893
    .local v8, p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3a

    if-eq v8, v1, :cond_3a

    .line 2894
    const/4 v7, 0x0

    .line 2901
    .end local v8           #p:Lcom/android/server/am/ActivityRecord;
    :cond_2c
    if-eqz v7, :cond_3d

    .line 2902
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v4

    .line 2903
    goto :goto_9

    .line 2891
    .restart local v8       #p:Lcom/android/server/am/ActivityRecord;
    :cond_3a
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b

    .end local v8           #p:Lcom/android/server/am/ActivityRecord;
    :cond_3d
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2907
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move v0, v9

    .line 2908
    goto :goto_9
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 25
    .parameter "prev"

    .prologue
    .line 1061
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1065
    .local v6, next:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v22, v0

    .line 1066
    .local v22, userLeaving:Z
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1068
    if-nez v6, :cond_27

    .line 1071
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_27

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked()Z

    move-result v5

    .line 1354
    .end local v6           #next:Lcom/android/server/am/ActivityRecord;
    :goto_26
    return v5

    .line 1076
    .restart local v6       #next:Lcom/android/server/am/ActivityRecord;
    :cond_27
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-ne v5, v6, :cond_4b

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_4b

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService;->executeAppTransition()V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1084
    const/4 v5, 0x0

    goto :goto_26

    .line 1089
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v5, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v5, :cond_7e

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-ne v5, v6, :cond_7e

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_7e

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService;->executeAppTransition()V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1095
    const/4 v5, 0x0

    goto :goto_26

    .line 1100
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_97

    .line 1109
    const/4 v5, 0x0

    goto :goto_26

    .line 1143
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_aa

    .line 1145
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 1146
    const/4 v5, 0x1

    goto/16 :goto_26

    .line 1149
    :cond_aa
    if-eqz p1, :cond_cf

    move-object/from16 v0, p1

    move-object v1, v6

    if-eq v0, v1, :cond_cf

    .line 1150
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    move v5, v0

    if-nez v5, :cond_1d8

    if-eqz v6, :cond_1d8

    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v5, :cond_1d8

    .line 1151
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_cf
    :goto_cf
    if-eqz p1, :cond_23c

    .line 1183
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move v5, v0

    if-eqz v5, :cond_20a

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f0

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 1193
    :goto_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1220
    :cond_10d
    :goto_10d
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_368

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_368

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    .line 1227
    .local v18, lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    .line 1229
    .local v19, lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1231
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1232
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1233
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 1235
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1239
    const/16 v21, 0x0

    .line 1240
    .local v21, updated:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_192

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1242
    :try_start_164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_26e

    move-object v9, v6

    :goto_17b
    invoke-virtual {v7, v8, v9}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v16

    .line 1245
    .local v16, config:Landroid/content/res/Configuration;
    if-eqz v16, :cond_184

    .line 1246
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1248
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;)Z

    move-result v21

    .line 1249
    monitor-exit v5
    :try_end_192
    .catchall {:try_start_164 .. :try_end_192} :catchall_271

    .line 1251
    .end local v16           #config:Landroid/content/res/Configuration;
    :cond_192
    if-nez v21, :cond_274

    .line 1257
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    .line 1261
    .local v20, nextNext:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v20

    move-object v1, v6

    if-eq v0, v1, :cond_1ab

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v7, 0x13

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1265
    :cond_1ab
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_1ba

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1268
    :cond_1ba
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1269
    .end local v6           #next:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService;->executeAppTransition()V

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1271
    const/4 v5, 0x1

    goto/16 :goto_26

    .line 1164
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v20           #nextNext:Lcom/android/server/am/ActivityRecord;
    .end local v21           #updated:Z
    .restart local v6       #next:Lcom/android/server/am/ActivityRecord;
    :cond_1d8
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move v5, v0

    if-eqz v5, :cond_cf

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_cf

    .line 1189
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v7, v0

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v7, v8, :cond_207

    const/16 v7, 0x2007

    :goto_202
    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_f1

    :cond_207
    const/16 v7, 0x2009

    goto :goto_202

    .line 1198
    :cond_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_222

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_10d

    .line 1201
    :cond_222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v7, v0

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v7, v8, :cond_239

    const/16 v7, 0x1006

    :goto_234
    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_10d

    :cond_239
    const/16 v7, 0x1008

    goto :goto_234

    .line 1210
    :cond_23c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_10d

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_260

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_10d

    .line 1216
    :cond_260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/16 v7, 0x1006

    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_10d

    .line 1242
    .restart local v18       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v21       #updated:Z
    :cond_26e
    const/4 v9, 0x0

    goto/16 :goto_17b

    .line 1249
    .end local v6           #next:Lcom/android/server/am/ActivityRecord;
    :catchall_271
    move-exception v6

    :try_start_272
    monitor-exit v5
    :try_end_273
    .catchall {:try_start_272 .. :try_end_273} :catchall_271

    throw v6

    .line 1276
    .restart local v6       #next:Lcom/android/server/am/ActivityRecord;
    :cond_274
    :try_start_274
    iget-object v15, v6, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1277
    .local v15, a:Ljava/util/ArrayList;
    if-eqz v15, :cond_289

    .line 1278
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1279
    .local v14, N:I
    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_289

    if-lez v14, :cond_289

    .line 1283
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5, v6, v15}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1287
    .end local v14           #N:I
    :cond_289
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v5, :cond_296

    .line 1288
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-interface {v5, v7, v6}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 1291
    :cond_296
    const/16 v5, 0x7537

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1295
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->pauseIfSleepingLocked()V
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_2cc} :catch_2e1

    .line 1322
    const/4 v5, 0x1

    :try_start_2cd
    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1323
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_2d5} :catch_339

    .line 1334
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1335
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1336
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1354
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v21           #updated:Z
    :goto_2de
    const/4 v5, 0x1

    goto/16 :goto_26

    .line 1300
    .restart local v18       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v21       #updated:Z
    :catch_2e1
    move-exception v5

    move-object/from16 v17, v5

    .line 1302
    .local v17, e:Ljava/lang/Exception;
    move-object/from16 v0, v19

    move-object v1, v6

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1303
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1304
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restarting because process died: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v5, :cond_31b

    .line 1306
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 1315
    :cond_30e
    :goto_30e
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1316
    const/4 v5, 0x1

    goto/16 :goto_26

    .line 1308
    :cond_31b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_30e

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v8, v6, Lcom/android/server/am/ActivityRecord;->theme:I

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v10, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    iget v11, v6, Lcom/android/server/am/ActivityRecord;->icon:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    goto :goto_30e

    .line 1324
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #a:Ljava/util/ArrayList;
    :catch_339
    move-exception v5

    move-object/from16 v17, v5

    .line 1327
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception thrown during resume of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "resume-exception"

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 1330
    const/4 v5, 0x1

    goto/16 :goto_26

    .line 1340
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v17           #e:Ljava/lang/Exception;
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v21           #updated:Z
    :cond_368
    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v5, :cond_37b

    .line 1341
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 1351
    :goto_36f
    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_2de

    .line 1344
    :cond_37b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v8, v6, Lcom/android/server/am/ActivityRecord;->theme:I

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v10, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    iget v11, v6, Lcom/android/server/am/ActivityRecord;->icon:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    goto :goto_36f
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 15
    .parameter "callingUid"
    .parameter "r"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2628
    if-lez p1, :cond_d

    .line 2629
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2636
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_4a

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4a

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4a

    .line 2638
    :try_start_1b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2639
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, p2, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_30

    .line 2649
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_2f
    return-void

    .line 2643
    :catch_30
    move-exception v0

    move-object v6, v0

    .line 2644
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2648
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4a
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_2f
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIZZ)I
    .registers 46
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "aInfo"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "onlyIfNeeded"
    .parameter "componentSpecified"

    .prologue
    .line 1901
    const/16 v24, 0x0

    .line 1903
    .local v24, err:I
    const/16 v22, 0x0

    .line 1904
    .local v22, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_24

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v22

    .line 1906
    if-eqz v22, :cond_8a

    .line 1907
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p10, v0

    .line 1908
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v0

    .line 1917
    :cond_24
    :goto_24
    if-nez v24, :cond_52

    .line 1918
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v22, :cond_c4

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move v7, v0

    :goto_47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_52
    const/16 v30, 0x0

    .line 1923
    .local v30, sourceRecord:Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    .line 1924
    .local v7, resultRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_7a

    .line 1925
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v25

    .line 1928
    .local v25, index:I
    if-ltz v25, :cond_7a

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v30, Lcom/android/server/am/ActivityRecord;

    .line 1930
    .restart local v30       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    if-ltz p9, :cond_7a

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move v5, v0

    if-nez v5, :cond_7a

    .line 1931
    move-object/from16 v7, v30

    .line 1936
    .end local v25           #index:I
    :cond_7a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    .line 1938
    .local v26, launchFlags:I
    const/high16 v5, 0x200

    and-int v5, v5, v26

    if-eqz v5, :cond_ea

    if-eqz v30, :cond_ea

    .line 1942
    if-ltz p9, :cond_c7

    .line 1943
    const/4 v5, -0x3

    .line 2051
    :goto_89
    return v5

    .line 1910
    .end local v7           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v26           #launchFlags:I
    .end local v30           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_8a
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") when starting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    const/16 v24, -0x4

    goto/16 :goto_24

    :cond_c4
    move/from16 v7, p10

    .line 1918
    goto :goto_47

    .line 1945
    .restart local v7       #resultRecord:Lcom/android/server/am/ActivityRecord;
    .restart local v26       #launchFlags:I
    .restart local v30       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_c7
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v7, v0

    .line 1946
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p8, v0

    .line 1947
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p9, v0

    .line 1948
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1949
    if-eqz v7, :cond_ea

    .line 1950
    move-object v0, v7

    move-object/from16 v1, v30

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1955
    :cond_ea
    if-nez v24, :cond_f4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_f4

    .line 1958
    const/16 v24, -0x1

    .line 1961
    :cond_f4
    if-nez v24, :cond_fa

    if-nez p6, :cond_fa

    .line 1964
    const/16 v24, -0x2

    .line 1967
    :cond_fa
    if-eqz v24, :cond_10e

    .line 1968
    if-eqz v7, :cond_10a

    .line 1969
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_10a
    move/from16 v5, v24

    .line 1973
    goto/16 :goto_89

    .line 1976
    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p6

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move v8, v0

    if-eqz v8, :cond_19f

    const/4 v8, -0x1

    :goto_120
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p10

    move/from16 v3, p11

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;III)I

    move-result v29

    .line 1978
    .local v29, perm:I
    if-eqz v29, :cond_1a8

    .line 1979
    if-eqz v7, :cond_13b

    .line 1980
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1984
    :cond_13b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1988
    .local v27, msg:Ljava/lang/String;
    const-string v5, "ActivityManager"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    new-instance v5, Ljava/lang/SecurityException;

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1976
    .end local v27           #msg:Ljava/lang/String;
    .end local v29           #perm:I
    :cond_19f
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    goto/16 :goto_120

    .line 1992
    .restart local v29       #perm:I
    :cond_1a8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_1fc

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_1fc

    .line 1994
    const/16 v21, 0x0

    .line 1998
    .local v21, abort:Z
    :try_start_1ba
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v31

    .line 1999
    .local v31, watchIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v31

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_1d3
    .catch Landroid/os/RemoteException; {:try_start_1ba .. :try_end_1d3} :catch_1f0

    move-result v5

    if-nez v5, :cond_1ec

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 2005
    .end local v31           #watchIntent:Landroid/content/Intent;
    :goto_1d9
    if-eqz v21, :cond_1fc

    .line 2006
    if-eqz v7, :cond_1e9

    .line 2007
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2013
    :cond_1e9
    const/4 v5, 0x0

    goto/16 :goto_89

    .line 1999
    .restart local v31       #watchIntent:Landroid/content/Intent;
    :cond_1ec
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_1d9

    .line 2001
    .end local v31           #watchIntent:Landroid/content/Intent;
    :catch_1f0
    move-exception v5

    move-object/from16 v23, v5

    .line 2002
    .local v23, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_1d9

    .line 2018
    .end local v21           #abort:Z
    .end local v23           #e:Landroid/os/RemoteException;
    :cond_1fc
    new-instance v8, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-object/from16 v11, v22

    move/from16 v12, p11

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p6

    move-object/from16 v17, v7

    move-object/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p13

    invoke-direct/range {v8 .. v20}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V

    .line 2022
    .local v8, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_2a2

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_242

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v5

    move/from16 v1, p11

    if-eq v0, v1, :cond_287

    .line 2025
    :cond_242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const-string v6, "Activity start"

    move-object v0, v5

    move/from16 v1, p10

    move/from16 v2, p11

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_287

    .line 2026
    new-instance v28, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    .line 2027
    .local v28, pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object v0, v8

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 2028
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2029
    move-object/from16 v0, p4

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->grantedUriPermissions:[Landroid/net/Uri;

    .line 2030
    move/from16 v0, p5

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->grantedMode:I

    .line 2031
    move/from16 v0, p12

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->onlyIfNeeded:Z

    .line 2032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2033
    const/4 v5, 0x4

    goto/16 :goto_89

    .line 2037
    .end local v28           #pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_2b4

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const-wide/16 v9, 0x0

    iput-wide v9, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 2048
    :goto_299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 2051
    :cond_2a2
    const/4 v15, 0x1

    move-object/from16 v9, p0

    move-object v10, v8

    move-object/from16 v11, v30

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p12

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;[Landroid/net/Uri;IZZ)I

    move-result v5

    goto/16 :goto_89

    .line 2045
    :cond_2b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_299
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;)I
    .registers 53
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "onlyIfNeeded"
    .parameter "debug"
    .parameter "outResult"
    .parameter "config"

    .prologue
    .line 2409
    if-eqz p2, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2410
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "File descriptors passed in Intent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2413
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mScreenStatusRequest:Z

    move v4, v0

    if-eqz v4, :cond_5f

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v39, v4, v5

    .line 2415
    .local v39, top:I
    if-ltz v39, :cond_5f

    .line 2416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/am/ActivityRecord;

    .line 2417
    .local v33, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v4, v0

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 2418
    new-instance v26, Landroid/content/Intent;

    const-string v4, "android.intent.action.stk.idle_screen"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2419
    .local v26, StkIntent:Landroid/content/Intent;
    const-string v4, "SCREEN_IDLE"

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2425
    .end local v26           #StkIntent:Landroid/content/Intent;
    .end local v33           #p:Lcom/android/server/am/ActivityRecord;
    .end local v39           #top:I
    :cond_5f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_29d

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 2428
    .local v25, componentSpecified:Z
    :goto_68
    new-instance v11, Landroid/content/Intent;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2433
    .end local p2
    .local v11, intent:Landroid/content/Intent;
    :try_start_70
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const v5, 0x10400

    move-object v0, v4

    move-object v1, v11

    move-object/from16 v2, p3

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v35

    .line 2438
    .local v35, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v35, :cond_2a2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_87} :catch_2a7

    move-object/from16 v18, v4

    .line 2443
    .end local v35           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v18, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_89
    if-eqz v18, :cond_bd

    .line 2448
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2452
    if-eqz p10, :cond_bd

    .line 2453
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bd

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 2459
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2462
    if-nez p1, :cond_2ae

    .line 2463
    :try_start_c6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 2464
    .local v22, callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2469
    .local v23, callingUid:I
    :goto_ce
    if-eqz p12, :cond_2b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object v0, v4

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_2b4

    const/4 v4, 0x1

    :goto_e1
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 2474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v31

    .line 2476
    .local v31, origId:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v4, v0

    if-eqz v4, :cond_379

    if-eqz v18, :cond_379

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    if-eqz v4, :cond_379

    .line 2480
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_379

    .line 2481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_379

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_142

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_379

    .line 2484
    :cond_142
    move/from16 v36, v22

    .line 2485
    .local v36, realCallingPid:I
    move/from16 v7, v23

    .line 2486
    .local v7, realCallingUid:I
    if-eqz p1, :cond_163

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v27

    .line 2488
    .local v27, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz v27, :cond_2b7

    .line 2489
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v36, v0

    .line 2490
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2499
    .end local v27           #callerApp:Lcom/android/server/am/ProcessRecord;
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v13, 0x5000

    move-object/from16 v12, p3

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v38

    .line 2505
    .local v38, target:Landroid/content/IIntentSender;
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 2506
    .local v30, newIntent:Landroid/content/Intent;
    if-ltz p8, :cond_187

    .line 2508
    const-string v4, "has_result"

    const/4 v5, 0x1

    move-object/from16 v0, v30

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2510
    :cond_187
    const-string v4, "intent"

    new-instance v5, Landroid/content/IntentSender;

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v30

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d5

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/ActivityRecord;

    .line 2514
    .local v29, hist:Lcom/android/server/am/ActivityRecord;
    const-string v4, "cur_app"

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v30

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2516
    const-string v4, "cur_task"

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v30

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2519
    .end local v29           #hist:Lcom/android/server/am/ActivityRecord;
    :cond_1d5
    const-string v4, "new_app"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v30

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2521
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v4

    move-object/from16 v0, v30

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2522
    const-string v4, "android"

    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1fc
    .catchall {:try_start_c6 .. :try_end_1fc} :catchall_370

    .line 2524
    move-object/from16 p2, v30

    .line 2525
    .end local v11           #intent:Landroid/content/Intent;
    .restart local p2
    const/16 p3, 0x0

    .line 2526
    const/16 p1, 0x0

    .line 2527
    :try_start_202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2528
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_209
    .catchall {:try_start_202 .. :try_end_209} :catchall_341

    move-result v22

    .line 2529
    const/16 v25, 0x1

    .line 2531
    :try_start_20c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x10400

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v35

    .line 2536
    .restart local v35       #rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v35, :cond_2f2

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0
    :try_end_224
    .catchall {:try_start_20c .. :try_end_224} :catchall_341
    .catch Landroid/os/RemoteException; {:try_start_20c .. :try_end_224} :catch_2f7

    move-object/from16 v18, v4

    .end local v7           #realCallingUid:I
    .end local v30           #newIntent:Landroid/content/Intent;
    .end local v35           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v36           #realCallingPid:I
    .end local v38           #target:Landroid/content/IIntentSender;
    :goto_226
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move/from16 v24, p9

    .line 2544
    :try_start_23a
    invoke-virtual/range {v12 .. v25}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIZZ)I

    move-result v37

    .line 2549
    .local v37, res:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    move v4, v0

    if-eqz v4, :cond_26b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v4, v0

    if-eqz v4, :cond_26b

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    const-string v5, "android.permission.CHANGE_CONFIGURATION"

    const-string v6, "updateConfiguration()"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p12

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;)Z

    .line 2562
    :cond_26b
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2564
    if-eqz p11, :cond_299

    .line 2565
    move/from16 v0, v37

    move-object/from16 v1, p11

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 2566
    if-nez v37, :cond_2fe

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_283
    .catchall {:try_start_23a .. :try_end_283} :catchall_341

    .line 2570
    :cond_283
    :try_start_283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_28b
    .catchall {:try_start_283 .. :try_end_28b} :catchall_341
    .catch Ljava/lang/InterruptedException; {:try_start_283 .. :try_end_28b} :catch_376

    .line 2573
    :goto_28b
    :try_start_28b
    move-object/from16 v0, p11

    iget-boolean v0, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    move v4, v0

    if-nez v4, :cond_299

    move-object/from16 v0, p11

    iget-object v0, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    move-object v4, v0

    if-eqz v4, :cond_283

    .line 2594
    :cond_299
    :goto_299
    monitor-exit v26
    :try_end_29a
    .catchall {:try_start_28b .. :try_end_29a} :catchall_341

    move/from16 v4, v37

    .end local v37           #res:I
    :goto_29c
    return v4

    .line 2425
    .end local v18           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v22           #callingPid:I
    .end local v23           #callingUid:I
    .end local v25           #componentSpecified:Z
    .end local v31           #origId:J
    :cond_29d
    const/4 v4, 0x0

    move/from16 v25, v4

    goto/16 :goto_68

    .line 2438
    .end local p2
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v25       #componentSpecified:Z
    .restart local v35       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_2a2
    const/4 v4, 0x0

    move-object/from16 v18, v4

    goto/16 :goto_89

    .line 2439
    .end local v35           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_2a7
    move-exception v4

    move-object/from16 v28, v4

    .line 2440
    .local v28, e:Landroid/os/RemoteException;
    const/16 v18, 0x0

    .restart local v18       #aInfo:Landroid/content/pm/ActivityInfo;
    goto/16 :goto_89

    .line 2466
    .end local v28           #e:Landroid/os/RemoteException;
    :cond_2ae
    const/16 v23, -0x1

    .restart local v23       #callingUid:I
    move/from16 v22, v23

    .restart local v22       #callingPid:I
    goto/16 :goto_ce

    .line 2469
    :cond_2b4
    const/4 v4, 0x0

    goto/16 :goto_e1

    .line 2492
    .restart local v7       #realCallingUid:I
    .restart local v27       #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v31       #origId:J
    .restart local v36       #realCallingPid:I
    :cond_2b7
    :try_start_2b7
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when starting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    const/4 v4, -0x4

    monitor-exit v26
    :try_end_2ef
    .catchall {:try_start_2b7 .. :try_end_2ef} :catchall_370

    move-object/from16 p2, v11

    .end local v11           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_29c

    .line 2536
    .end local v27           #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v30       #newIntent:Landroid/content/Intent;
    .restart local v35       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v38       #target:Landroid/content/IIntentSender;
    :cond_2f2
    const/4 v4, 0x0

    move-object/from16 v18, v4

    goto/16 :goto_226

    .line 2537
    .end local v35           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_2f7
    move-exception v4

    move-object/from16 v28, v4

    .line 2538
    .restart local v28       #e:Landroid/os/RemoteException;
    const/16 v18, 0x0

    goto/16 :goto_226

    .line 2574
    .end local v7           #realCallingUid:I
    .end local v28           #e:Landroid/os/RemoteException;
    .end local v30           #newIntent:Landroid/content/Intent;
    .end local v36           #realCallingPid:I
    .end local v38           #target:Landroid/content/IIntentSender;
    .restart local v37       #res:I
    :cond_2fe
    const/4 v4, 0x2

    move/from16 v0, v37

    move v1, v4

    if-ne v0, v1, :cond_299

    .line 2575
    const/4 v4, 0x0

    :try_start_305
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    .line 2576
    .local v34, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    move v4, v0

    if-eqz v4, :cond_344

    .line 2577
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p11

    iput-boolean v0, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 2578
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p11

    iput-object v0, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 2579
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p11

    iput-wide v0, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 2580
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p11

    iput-wide v0, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_299

    .line 2595
    .end local v22           #callingPid:I
    .end local v23           #callingUid:I
    .end local v31           #origId:J
    .end local v34           #r:Lcom/android/server/am/ActivityRecord;
    .end local v37           #res:I
    :catchall_341
    move-exception v4

    :goto_342
    monitor-exit v26
    :try_end_343
    .catchall {:try_start_305 .. :try_end_343} :catchall_341

    throw v4

    .line 2582
    .restart local v22       #callingPid:I
    .restart local v23       #callingUid:I
    .restart local v31       #origId:J
    .restart local v34       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v37       #res:I
    :cond_344
    :try_start_344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p11

    iput-wide v0, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_358
    .catchall {:try_start_344 .. :try_end_358} :catchall_341

    .line 2586
    :cond_358
    :try_start_358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_360
    .catchall {:try_start_358 .. :try_end_360} :catchall_341
    .catch Ljava/lang/InterruptedException; {:try_start_358 .. :try_end_360} :catch_374

    .line 2589
    :goto_360
    :try_start_360
    move-object/from16 v0, p11

    iget-boolean v0, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    move v4, v0

    if-nez v4, :cond_299

    move-object/from16 v0, p11

    iget-object v0, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    move-object v4, v0
    :try_end_36c
    .catchall {:try_start_360 .. :try_end_36c} :catchall_341

    if-eqz v4, :cond_358

    goto/16 :goto_299

    .line 2595
    .end local v22           #callingPid:I
    .end local v23           #callingUid:I
    .end local v31           #origId:J
    .end local v34           #r:Lcom/android/server/am/ActivityRecord;
    .end local v37           #res:I
    .end local p2
    .restart local v11       #intent:Landroid/content/Intent;
    :catchall_370
    move-exception v4

    move-object/from16 p2, v11

    .end local v11           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_342

    .line 2587
    .restart local v22       #callingPid:I
    .restart local v23       #callingUid:I
    .restart local v31       #origId:J
    .restart local v34       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v37       #res:I
    :catch_374
    move-exception v4

    goto :goto_360

    .line 2571
    .end local v34           #r:Lcom/android/server/am/ActivityRecord;
    :catch_376
    move-exception v4

    goto/16 :goto_28b

    .end local v37           #res:I
    .end local p2
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_379
    move-object/from16 p2, v11

    .end local v11           #intent:Landroid/content/Intent;
    .restart local p2
    goto/16 :goto_226
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;[Landroid/net/Uri;IZZ)I
    .registers 34
    .parameter "r"
    .parameter "sourceRecord"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "onlyIfNeeded"
    .parameter "doResume"

    .prologue
    .line 2058
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    .line 2059
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move v15, v0

    .line 2061
    .local v15, callingUid:I
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getFlags()I

    move-result v20

    .line 2065
    .local v20, launchFlags:I
    const/high16 v5, 0x4

    and-int v5, v5, v20

    if-nez v5, :cond_155

    const/4 v5, 0x1

    :goto_16
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2072
    if-nez p6, :cond_23

    .line 2073
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2076
    :cond_23
    const/high16 v5, 0x100

    and-int v5, v5, v20

    if-eqz v5, :cond_158

    move-object/from16 v22, p1

    .line 2083
    .local v22, notTop:Lcom/android/server/am/ActivityRecord;
    :goto_2b
    if-eqz p5, :cond_4b

    .line 2084
    move-object/from16 v16, p2

    .line 2085
    .local v16, checkedCaller:Lcom/android/server/am/ActivityRecord;
    if-nez v16, :cond_39

    .line 2086
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 2088
    :cond_39
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 2090
    const/16 p5, 0x0

    .line 2094
    .end local v16           #checkedCaller:Lcom/android/server/am/ActivityRecord;
    :cond_4b
    if-nez p2, :cond_15d

    .line 2097
    const/high16 v5, 0x1000

    and-int v5, v5, v20

    if-nez v5, :cond_72

    .line 2098
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    const/high16 v5, 0x1000

    or-int v20, v20, v5

    .line 2114
    :cond_72
    :goto_72
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_a3

    const/high16 v5, 0x1000

    and-int v5, v5, v20

    if-eqz v5, :cond_a3

    .line 2120
    const-string v5, "ActivityManager"

    const-string v6, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2124
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2127
    :cond_a3
    const/4 v13, 0x0

    .line 2128
    .local v13, addingToTask:Z
    const/high16 v5, 0x1000

    and-int v5, v5, v20

    if-eqz v5, :cond_b0

    const/high16 v5, 0x800

    and-int v5, v5, v20

    if-eqz v5, :cond_c0

    :cond_b0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2a6

    .line 2135
    :cond_c0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-nez v5, :cond_2a6

    .line 2140
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_181

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    move-object/from16 v24, v5

    .line 2143
    .local v24, taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_df
    if-eqz v24, :cond_2a6

    .line 2144
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v5, :cond_fb

    .line 2149
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2157
    :cond_fb
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 2158
    .local v17, curTop:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    if-eq v5, v6, :cond_138

    .line 2159
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    const/high16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2160
    if-eqz p2, :cond_127

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    if-ne v5, v6, :cond_193

    :cond_127
    const/4 v5, 0x1

    move v14, v5

    .line 2162
    .local v14, callerAtFront:Z
    :goto_129
    if-eqz v14, :cond_138

    .line 2165
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2170
    .end local v14           #callerAtFront:Z
    :cond_138
    const/high16 v5, 0x20

    and-int v5, v5, v20

    if-eqz v5, :cond_148

    .line 2171
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 2173
    :cond_148
    if-eqz p5, :cond_196

    .line 2178
    if-eqz p6, :cond_153

    .line 2179
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2181
    :cond_153
    const/4 v5, 0x1

    .line 2400
    .end local v17           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v24           #taskTop:Lcom/android/server/am/ActivityRecord;
    .end local p5
    :goto_154
    return v5

    .line 2065
    .end local v13           #addingToTask:Z
    .end local v22           #notTop:Lcom/android/server/am/ActivityRecord;
    .restart local p5
    :cond_155
    const/4 v5, 0x0

    goto/16 :goto_16

    .line 2076
    :cond_158
    const/4 v5, 0x0

    move-object/from16 v22, v5

    goto/16 :goto_2b

    .line 2102
    .restart local v22       #notTop:Lcom/android/server/am/ActivityRecord;
    :cond_15d
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_16b

    .line 2106
    const/high16 v5, 0x1000

    or-int v20, v20, v5

    goto/16 :goto_72

    .line 2107
    :cond_16b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_17b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_72

    .line 2111
    :cond_17b
    const/high16 v5, 0x1000

    or-int v20, v20, v5

    goto/16 :goto_72

    .line 2140
    .restart local v13       #addingToTask:Z
    :cond_181
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    move-object/from16 v24, v5

    goto/16 :goto_df

    .line 2160
    .restart local v17       #curTop:Lcom/android/server/am/ActivityRecord;
    .restart local v24       #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_193
    const/4 v5, 0x0

    move v14, v5

    goto :goto_129

    .line 2183
    :cond_196
    const/high16 v5, 0x400

    and-int v5, v5, v20

    if-nez v5, :cond_1ac

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1ac

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_209

    .line 2190
    :cond_1ac
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move/from16 v3, v20

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2192
    .local v25, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_205

    .line 2193
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move v5, v0

    if-eqz v5, :cond_1db

    .line 2198
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2200
    :cond_1db
    const/16 v5, 0x7533

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2201
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v25

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2252
    .end local v25           #top:Lcom/android/server/am/ActivityRecord;
    :cond_1f7
    :goto_1f7
    if-nez v13, :cond_2a6

    .line 2256
    if-eqz p6, :cond_202

    .line 2257
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2259
    :cond_202
    const/4 v5, 0x2

    goto/16 :goto_154

    .line 2207
    .restart local v25       #top:Lcom/android/server/am/ActivityRecord;
    :cond_205
    const/4 v13, 0x1

    .line 2211
    move-object/from16 p2, v24

    goto :goto_1f7

    .line 2213
    .end local v25           #top:Lcom/android/server/am/ActivityRecord;
    :cond_209
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27e

    .line 2220
    const/high16 v5, 0x2000

    and-int v5, v5, v20

    if-eqz v5, :cond_267

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_267

    .line 2222
    const/16 v5, 0x7533

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2223
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move v5, v0

    if-eqz v5, :cond_25a

    .line 2224
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2226
    :cond_25a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v24

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto :goto_1f7

    .line 2227
    :cond_267
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_1f7

    .line 2231
    const/4 v13, 0x1

    .line 2232
    move-object/from16 p2, v24

    goto/16 :goto_1f7

    .line 2234
    :cond_27e
    const/high16 v5, 0x20

    and-int v5, v5, v20

    if-nez v5, :cond_289

    .line 2240
    const/4 v13, 0x1

    .line 2241
    move-object/from16 p2, v24

    goto/16 :goto_1f7

    .line 2242
    :cond_289
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v5, :cond_1f7

    .line 2250
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_1f7

    .line 2271
    .end local v17           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v24           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_2a6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_321

    .line 2275
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2276
    .restart local v25       #top:Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_342

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-nez v5, :cond_342

    .line 2277
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_342

    .line 2278
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    if-eqz v5, :cond_342

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_342

    .line 2279
    const/high16 v5, 0x2000

    and-int v5, v5, v20

    if-nez v5, :cond_2f4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2f4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_342

    .line 2282
    :cond_2f4
    const/16 v5, 0x7533

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v25

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2285
    if-eqz p6, :cond_30d

    .line 2286
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2288
    :cond_30d
    if-eqz p5, :cond_312

    .line 2292
    const/4 v5, 0x1

    goto/16 :goto_154

    .line 2294
    :cond_312
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v25

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2295
    const/4 v5, 0x3

    goto/16 :goto_154

    .line 2302
    .end local v25           #top:Lcom/android/server/am/ActivityRecord;
    :cond_321
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_33f

    .line 2303
    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2307
    :cond_33f
    const/4 v5, -0x2

    goto/16 :goto_154

    .line 2310
    .restart local v25       #top:Lcom/android/server/am/ActivityRecord;
    :cond_342
    const/16 v21, 0x0

    .line 2313
    .local v21, newTask:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-nez v5, :cond_3d7

    if-nez v13, :cond_3d7

    const/high16 v5, 0x1000

    and-int v5, v5, v20

    if-eqz v5, :cond_3d7

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v5, :cond_36f

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2320
    :cond_36f
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_3d5

    const/4 v8, 0x1

    :goto_389
    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2324
    const/16 v21, 0x1

    .line 2325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_3ad

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2385
    .end local p5
    :cond_3ad
    :goto_3ad
    if-eqz p3, :cond_4c8

    if-lez v15, :cond_4c8

    .line 2386
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3b3
    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_4c8

    .line 2387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v7, v0

    aget-object v8, p3, v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v10

    move v6, v15

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionLocked(ILjava/lang/String;Landroid/net/Uri;ILcom/android/server/am/UriPermissionOwner;)V

    .line 2386
    add-int/lit8 v18, v18, 0x1

    goto :goto_3b3

    .line 2320
    .end local v18           #i:I
    .restart local p5
    :cond_3d5
    const/4 v8, 0x0

    goto :goto_389

    .line 2329
    :cond_3d7
    if-eqz p2, :cond_475

    .line 2330
    if-nez v13, :cond_41f

    const/high16 v5, 0x400

    and-int v5, v5, v20

    if-eqz v5, :cond_41f

    .line 2335
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move/from16 v3, v20

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2337
    if-eqz v25, :cond_469

    .line 2338
    const/16 v5, 0x7533

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2339
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v25

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2342
    if-eqz p6, :cond_41c

    .line 2343
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2345
    :cond_41c
    const/4 v5, 0x3

    goto/16 :goto_154

    .line 2347
    :cond_41f
    if-nez v13, :cond_469

    const/high16 v5, 0x2

    and-int v5, v5, v20

    if-eqz v5, :cond_469

    .line 2352
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v26

    .line 2353
    .local v26, where:I
    if-ltz v26, :cond_469

    .line 2354
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2355
    const/16 v5, 0x7533

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2356
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v25

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2357
    if-eqz p6, :cond_466

    .line 2358
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2360
    :cond_466
    const/4 v5, 0x3

    goto/16 :goto_154

    .line 2366
    .end local v26           #where:I
    :cond_469
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto/16 :goto_3ad

    .line 2374
    :cond_475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2375
    .local v12, N:I
    if-lez v12, :cond_49e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v12, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    .end local p5
    check-cast p5, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, p5

    .line 2377
    .local v23, prev:Lcom/android/server/am/ActivityRecord;
    :goto_490
    if-eqz v23, :cond_4a2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    :goto_497
    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto/16 :goto_3ad

    .line 2375
    .end local v23           #prev:Lcom/android/server/am/ActivityRecord;
    .restart local p5
    :cond_49e
    const/4 v5, 0x0

    move-object/from16 v23, v5

    goto :goto_490

    .line 2377
    .end local p5
    .restart local v23       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_4a2
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_4c6

    const/4 v8, 0x1

    :goto_4bc
    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    goto :goto_497

    :cond_4c6
    const/4 v8, 0x0

    goto :goto_4bc

    .line 2392
    .end local v12           #N:I
    .end local v23           #prev:Lcom/android/server/am/ActivityRecord;
    :cond_4c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v7

    move-object v0, v5

    move v1, v15

    move-object v2, v6

    move-object/from16 v3, v19

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2395
    if-eqz v21, :cond_4ed

    .line 2396
    const/16 v5, 0x7534

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2398
    :cond_4ed
    const/16 v5, 0x7535

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2400
    const/4 v5, 0x0

    goto/16 :goto_154
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .registers 7
    .parameter "token"
    .parameter "taskId"

    .prologue
    .line 362
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 363
    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_24

    .line 364
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 366
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_21

    if-eq p1, v1, :cond_21

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_21

    move-object v2, v1

    .line 371
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_20
    return-object v2

    .line 369
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    .line 370
    goto :goto_9

    .line 371
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_24
    const/4 v2, 0x0

    goto :goto_20
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .parameter "notTop"

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 330
    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1e

    .line 331
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 332
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1b

    if-eq v1, p1, :cond_1b

    move-object v2, v1

    .line 337
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1a
    return-object v2

    .line 335
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    .line 336
    goto :goto_9

    .line 337
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .parameter "notTop"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 342
    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_22

    .line 343
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 344
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1f

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_1f

    if-eq v1, p1, :cond_1f

    move-object v2, v1

    .line 349
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1e
    return-object v2

    .line 347
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    .line 348
    goto :goto_9

    .line 349
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_22
    const/4 v2, 0x0

    goto :goto_1e
.end method
