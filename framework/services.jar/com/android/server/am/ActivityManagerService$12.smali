.class Lcom/android/server/am/ActivityManagerService$12;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 7529
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I
    .registers 7
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 7532
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v1, :cond_12

    .line 7533
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v0, v1, :cond_10

    move v0, v2

    .line 7544
    :goto_f
    return v0

    :cond_10
    move v0, v3

    .line 7533
    goto :goto_f

    .line 7535
    :cond_12
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eq v0, v1, :cond_22

    .line 7536
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-le v0, v1, :cond_20

    move v0, v2

    goto :goto_f

    :cond_20
    move v0, v3

    goto :goto_f

    .line 7538
    :cond_22
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->keeping:Z

    iget-boolean v1, p2, Lcom/android/server/am/ProcessRecord;->keeping:Z

    if-eq v0, v1, :cond_30

    .line 7539
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->keeping:Z

    if-eqz v0, :cond_2e

    move v0, v2

    goto :goto_f

    :cond_2e
    move v0, v3

    goto :goto_f

    .line 7541
    :cond_30
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v1, :cond_40

    .line 7542
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-le v0, v1, :cond_3e

    move v0, v2

    goto :goto_f

    :cond_3e
    move v0, v3

    goto :goto_f

    .line 7544
    :cond_40
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7529
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$12;->compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method
