.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$LogStackTrace;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$StrictModeDiskWriteViolation;,
        Landroid/os/StrictMode$StrictModeDiskReadViolation;,
        Landroid/os/StrictMode$StrictModeNetworkViolation;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$ThreadPolicy;
    }
.end annotation


# static fields
.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x200

.field private static final LOG_V:Z = false

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field public static final PENALTY_DEATH:I = 0x40

.field public static final PENALTY_DIALOG:I = 0x20

.field public static final PENALTY_DROPBOX:I = 0x80

.field public static final PENALTY_GATHER:I = 0x100

.field public static final PENALTY_LOG:I = 0x10

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicyMask:I

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 500
    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 699
    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-static {p0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 4

    .prologue
    .line 618
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 619
    .local v1, oldPolicyMask:I
    and-int/lit8 v0, v1, -0x3

    .line 620
    .local v0, newPolicyMask:I
    if-eq v0, v1, :cond_0

    .line 621
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 623
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .locals 4

    .prologue
    .line 599
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 600
    .local v1, oldPolicyMask:I
    and-int/lit8 v0, v1, -0x4

    .line 601
    .local v0, newPolicyMask:I
    if-eq v0, v1, :cond_0

    .line 602
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 604
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method static clearGatheredViolations()V
    .locals 2

    .prologue
    .line 952
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 953
    return-void
.end method

.method public static conditionallyEnableDebugLogging()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 634
    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 650
    :goto_0
    return v1

    .line 638
    :cond_0
    const-string v1, "persist.android.strictmode"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, strictMode:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 640
    goto :goto_0

    .line 642
    :cond_1
    const/16 v1, 0x87

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 647
    const/16 v1, 0x290

    sput v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 650
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static enableDefaults()V
    .locals 1

    .prologue
    .line 981
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 985
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 989
    return-void
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    .prologue
    .line 585
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    move-result v0

    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .locals 3

    .prologue
    .line 970
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$VmPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method static hasGatheredViolations()Z
    .locals 1

    .prologue
    .line 943
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .locals 0
    .parameter "newPolicy"

    .prologue
    .line 1095
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 1096
    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "message"
    .parameter "originStack"

    .prologue
    const-string v5, "StrictMode"

    .line 1002
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 1003
    const-string v4, "StrictMode"

    invoke-static {v5, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    :cond_0
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    .line 1007
    new-instance v1, Landroid/os/StrictMode$ViolationInfo;

    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    invoke-direct {v1, p1, v4}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 1013
    .local v1, info:Landroid/os/StrictMode$ViolationInfo;
    const/16 v3, 0x280

    .line 1014
    .local v3, violationMaskSubset:I
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v2

    .line 1020
    .local v2, savedPolicyMask:I
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1022
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v3, v1}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1034
    .end local v1           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v2           #savedPolicyMask:I
    .end local v3           #violationMaskSubset:I
    :cond_1
    :goto_0
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    .line 1035
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1036
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 1037
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 1039
    :cond_2
    return-void

    .line 1026
    .restart local v1       #info:Landroid/os/StrictMode$ViolationInfo;
    .restart local v2       #savedPolicyMask:I
    .restart local v3       #violationMaskSubset:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1027
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "StrictMode"

    const-string v5, "RemoteException trying to handle StrictMode violation"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v4
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 665
    if-eqz p0, :cond_0

    const-string v3, "policy="

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 676
    :goto_0
    return v3

    .line 668
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 669
    .local v2, spaceIndex:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v3, v4

    .line 670
    goto :goto_0

    .line 672
    :cond_2
    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, policyString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 675
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 676
    goto :goto_0
.end method

.method private static parseViolationFromMessage(Ljava/lang/String;)I
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 684
    if-nez p0, :cond_0

    move v3, v4

    .line 695
    :goto_0
    return v3

    .line 687
    :cond_0
    const-string/jumbo v3, "violation="

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 688
    .local v1, violationIndex:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move v3, v4

    .line 689
    goto :goto_0

    .line 691
    :cond_1
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, violationString:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 694
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 695
    goto :goto_0
.end method

.method static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .locals 13
    .parameter "p"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1067
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 1068
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v8, Landroid/os/StrictMode$LogStackTrace;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/os/StrictMode$LogStackTrace;-><init>(Landroid/os/StrictMode$1;)V

    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v8, v9}, Landroid/os/StrictMode$LogStackTrace;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1069
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1071
    .local v4, ourStack:Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v6

    .line 1072
    .local v6, policyMask:I
    and-int/lit16 v8, v6, 0x100

    if-eqz v8, :cond_1

    move v0, v12

    .line 1074
    .local v0, currentlyGathering:Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1075
    .local v3, numViolations:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1077
    new-instance v2, Landroid/os/StrictMode$ViolationInfo;

    if-nez v0, :cond_2

    move v8, v12

    :goto_2
    invoke-direct {v2, p0, v8}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 1078
    .local v2, info:Landroid/os/StrictMode$ViolationInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "# via Binder call with stack:\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 1079
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v5

    .line 1080
    .local v5, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v8, v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v8, :cond_0

    .line 1081
    check-cast v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v5           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v5, v2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1075
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #currentlyGathering:Z
    .end local v1           #i:I
    .end local v2           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v3           #numViolations:I
    :cond_1
    move v0, v11

    .line 1072
    goto :goto_0

    .restart local v0       #currentlyGathering:Z
    .restart local v1       #i:I
    .restart local v3       #numViolations:I
    :cond_2
    move v8, v11

    .line 1077
    goto :goto_2

    .line 1084
    :cond_3
    return-void
.end method

.method private static setBlockGuardPolicy(I)V
    .locals 4
    .parameter "policyMask"

    .prologue
    .line 539
    if-nez p0, :cond_0

    .line 540
    sget-object v3, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v3}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 550
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    .line 544
    .local v2, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v3, v2, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v3, :cond_1

    .line 545
    new-instance v3, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-direct {v3, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;-><init>(I)V

    invoke-static {v3}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    goto :goto_0

    .line 547
    :cond_1
    move-object v0, v2

    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    move-object v1, v0

    .line 548
    .local v1, androidPolicy:Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    invoke-virtual {v1, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    goto :goto_0
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 522
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 523
    return-void
.end method

.method private static setThreadPolicyMask(I)V
    .locals 0
    .parameter "policyMask"

    .prologue
    .line 531
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 534
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 535
    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 963
    iget v0, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 964
    return-void
.end method

.method private static tooManyViolationsThisLoop()Z
    .locals 2

    .prologue
    .line 707
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .locals 1

    .prologue
    .line 995
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 1045
    sget-object v2, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1046
    .local v1, violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v1, :cond_0

    .line 1047
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    :goto_0
    sget-object v2, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1057
    return-void

    .line 1049
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1051
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v2, p0, v3}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1054
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
