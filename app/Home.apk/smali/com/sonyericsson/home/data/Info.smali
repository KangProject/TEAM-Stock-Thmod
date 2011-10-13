.class public abstract Lcom/sonyericsson/home/data/Info;
.super Ljava/lang/Object;
.source "Info.java"


# static fields
.field private static COUNTER:J


# instance fields
.field private mUniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sonyericsson/home/data/Info;->COUNTER:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-wide v0, Lcom/sonyericsson/home/data/Info;->COUNTER:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/sonyericsson/home/data/Info;->COUNTER:J

    iput-wide v0, p0, Lcom/sonyericsson/home/data/Info;->mUniqueId:J

    .line 26
    return-void
.end method


# virtual methods
.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public final getUniqueId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sonyericsson/home/data/Info;->mUniqueId:J

    return-wide v0
.end method

.method public abstract isEnabled()Z
.end method

.method public final setNewUniqueID()V
    .locals 4

    .prologue
    .line 42
    sget-wide v0, Lcom/sonyericsson/home/data/Info;->COUNTER:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/sonyericsson/home/data/Info;->COUNTER:J

    iput-wide v0, p0, Lcom/sonyericsson/home/data/Info;->mUniqueId:J

    .line 43
    return-void
.end method
