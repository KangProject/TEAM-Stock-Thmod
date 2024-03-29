.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private final mLastViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "policyMask"

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Ljava/util/HashMap;

    .line 719
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 720
    return-void
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return v0
.end method

.method handleViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 21
    .parameter "info"

    .prologue
    .line 846
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 847
    :cond_0
    const-string v18, "StrictMode"

    const-string/jumbo v19, "unexpected null stacktrace"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_1
    :goto_0
    return-void

    .line 853
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 854
    invoke-static {}, Landroid/os/StrictMode;->access$400()Ljava/lang/ThreadLocal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 855
    .local v17, violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v17, :cond_5

    .line 856
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    .line 857
    .restart local v17       #violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-static {}, Landroid/os/StrictMode;->access$400()Ljava/lang/ThreadLocal;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 862
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/StrictMode$ViolationInfo;

    .line 863
    .local v11, previous:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v11

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    goto :goto_0

    .line 858
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #previous:Landroid/os/StrictMode$ViolationInfo;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    goto :goto_0

    .line 868
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v17           #violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 874
    .local v4, crashFingerprint:Ljava/lang/Integer;
    const-wide/16 v7, 0x0

    .line 875
    .local v7, lastViolationTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 878
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 879
    .local v9, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-nez v18, :cond_d

    const-wide v18, 0x7fffffffffffffffL

    move-wide/from16 v13, v18

    .line 883
    .local v13, timeSinceLastViolationMillis:J
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_9

    const-wide/16 v18, 0x3e8

    cmp-long v18, v13, v18

    if-lez v18, :cond_9

    .line 885
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 886
    const-string v18, "StrictMode"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "StrictMode policy violation; ~duration="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_9
    :goto_2
    const/16 v16, 0x0

    .line 899
    .local v16, violationMaskSubset:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x20

    if-eqz v18, :cond_a

    const-wide/16 v18, 0x7530

    cmp-long v18, v13, v18

    if-lez v18, :cond_a

    .line 901
    or-int/lit8 v16, v16, 0x20

    .line 904
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-nez v18, :cond_b

    .line 905
    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    .line 908
    :cond_b
    if-eqz v16, :cond_c

    .line 909
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->access$500(Ljava/lang/String;)I

    move-result v15

    .line 910
    .local v15, violationBit:I
    or-int v16, v16, v15

    .line 911
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v12

    .line 917
    .local v12, savedPolicyMask:I
    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->access$600(I)V

    .line 919
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    invoke-static {v12}, Landroid/os/StrictMode;->access$600(I)V

    .line 931
    .end local v12           #savedPolicyMask:I
    .end local v15           #violationBit:I
    :cond_c
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x40

    if-eqz v18, :cond_1

    .line 932
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "StrictMode policy violation with POLICY_DEATH; shutting down."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 933
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    .line 934
    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 880
    .end local v13           #timeSinceLastViolationMillis:J
    .end local v16           #violationMaskSubset:I
    :cond_d
    sub-long v18, v9, v7

    move-wide/from16 v13, v18

    goto/16 :goto_1

    .line 889
    .restart local v13       #timeSinceLastViolationMillis:J
    :cond_e
    const-string v18, "StrictMode"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "StrictMode policy violation: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 923
    .restart local v12       #savedPolicyMask:I
    .restart local v15       #violationBit:I
    .restart local v16       #violationMaskSubset:I
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 924
    .local v5, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v18, "StrictMode"

    const-string v19, "RemoteException trying to handle StrictMode violation"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    invoke-static {v12}, Landroid/os/StrictMode;->access$600(I)V

    goto :goto_3

    .end local v5           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v18

    invoke-static {v12}, Landroid/os/StrictMode;->access$600(I)V

    throw v18
.end method

.method handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 792
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 804
    .local v0, looper:Landroid/os/Looper;
    if-nez v0, :cond_1

    .line 805
    const/4 v3, -0x1

    iput v3, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 806
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    .line 811
    .local v1, queue:Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/StrictMode;->access$300()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 812
    .local v2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 816
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 824
    new-instance v3, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;

    invoke-direct {v3, p0, v2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method

.method public onNetwork()V
    .locals 2

    .prologue
    .line 760
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->access$200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    new-instance v0, Landroid/os/StrictMode$StrictModeNetworkViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeNetworkViolation;-><init>(I)V

    .line 767
    .local v0, e:Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 768
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public onReadFromDisk()V
    .locals 2

    .prologue
    .line 747
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->access$200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskReadViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskReadViolation;-><init>(I)V

    .line 754
    .local v0, e:Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 755
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public onWriteToDisk()V
    .locals 2

    .prologue
    .line 734
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->access$200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskWriteViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskWriteViolation;-><init>(I)V

    .line 741
    .local v0, e:Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 742
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public setPolicyMask(I)V
    .locals 0
    .parameter "policyMask"

    .prologue
    .line 772
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 773
    return-void
.end method

.method startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 781
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {p1}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->getPolicy()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 782
    .local v0, info:Landroid/os/StrictMode$ViolationInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 783
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 784
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
