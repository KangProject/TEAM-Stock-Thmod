.class public Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncreasingTimeOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$Alarm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 11
    .parameter "a1"
    .parameter "a2"

    .prologue
    const-wide/16 v6, 0x0

    .line 595
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 596
    .local v0, when1:J
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 597
    .local v2, when2:J
    sub-long v4, v0, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    .line 598
    const/4 v4, 0x1

    .line 603
    :goto_d
    return v4

    .line 600
    :cond_e
    sub-long v4, v0, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_16

    .line 601
    const/4 v4, -0x1

    goto :goto_d

    .line 603
    :cond_16
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 593
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p1
    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method
