.class public Lcom/sonyericsson/home/statistics/ActivityStats;
.super Ljava/lang/Object;
.source "ActivityStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/statistics/ActivityStats$ActivityStatsFactory;
    }
.end annotation


# static fields
.field public static final SOURCE_ALL:I = 0xff

.field public static final SOURCE_APPTRAY:I = 0x1

.field public static final SOURCE_DESKTOP:I = 0x2

.field public static final SOURCE_FIXED_ITEM:I = 0x4

.field public static final SOURCE_FOLDER:I = 0x8


# instance fields
.field private mInfo:Lcom/sonyericsson/home/data/ActivityInfo;

.field private mInstallTime:J

.field private mLastStartedTime:J

.field private mStartCountAppTray:I

.field private mStartCountDesktop:I

.field private mStartCountFixedItem:I

.field private mStartCountFolder:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/statistics/ActivityStats;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mInstallTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/statistics/ActivityStats;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mInstallTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/statistics/ActivityStats;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mLastStartedTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/home/statistics/ActivityStats;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mLastStartedTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/statistics/ActivityStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountAppTray:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/home/statistics/ActivityStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountAppTray:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/statistics/ActivityStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountDesktop:I

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/home/statistics/ActivityStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountDesktop:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/statistics/ActivityStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFixedItem:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/statistics/ActivityStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFixedItem:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/statistics/ActivityStats;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFolder:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/statistics/ActivityStats;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFolder:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/statistics/ActivityStats;)Lcom/sonyericsson/home/data/ActivityInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    return-object v0
.end method


# virtual methods
.method public getInfo()Lcom/sonyericsson/home/data/ActivityInfo;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mInfo:Lcom/sonyericsson/home/data/ActivityInfo;

    return-object v0
.end method

.method public getInstallTime()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mInstallTime:J

    return-wide v0
.end method

.method public getStartCount(I)I
    .locals 2
    .parameter "source"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, totalStartCount:I
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_0

    .line 153
    iget v1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountAppTray:I

    add-int/2addr v0, v1

    .line 156
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_1

    .line 157
    iget v1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountDesktop:I

    add-int/2addr v0, v1

    .line 160
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_2

    .line 161
    iget v1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFixedItem:I

    add-int/2addr v0, v1

    .line 164
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_3

    .line 165
    iget v1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFolder:I

    add-int/2addr v0, v1

    .line 168
    :cond_3
    return v0
.end method

.method public registerInstall(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mInstallTime:J

    .line 148
    return-void
.end method

.method public registerStart(IJ)V
    .locals 1
    .parameter "source"
    .parameter "time"

    .prologue
    .line 125
    sparse-switch p1, :sswitch_data_0

    .line 140
    iget v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountAppTray:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountAppTray:I

    .line 143
    :goto_0
    iput-wide p2, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mLastStartedTime:J

    .line 144
    return-void

    .line 127
    :sswitch_0
    iget v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountDesktop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountDesktop:I

    goto :goto_0

    .line 131
    :sswitch_1
    iget v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFixedItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFixedItem:I

    goto :goto_0

    .line 135
    :sswitch_2
    iget v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFolder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/statistics/ActivityStats;->mStartCountFolder:I

    goto :goto_0

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method
