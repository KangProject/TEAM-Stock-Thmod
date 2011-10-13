.class public Lcom/sonyericsson/home/data/AdvWidgetInfo;
.super Lcom/sonyericsson/home/data/Info;
.source "AdvWidgetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/data/AdvWidgetInfo$AdvancedWidgetInfoFactory;
    }
.end annotation


# instance fields
.field private final mAdvWidgetId:Ljava/util/UUID;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 0
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mAdvWidgetId:Ljava/util/UUID;

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mPackageName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/util/UUID;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mAdvWidgetId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mAdvWidgetId:Ljava/util/UUID;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method
