.class public Lcom/sonyericsson/home/data/WidgetInfo;
.super Lcom/sonyericsson/home/data/Info;
.source "WidgetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/data/WidgetInfo$WidgetInfoFactory;
    }
.end annotation


# instance fields
.field private final mAppWidgetId:I

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "packageName"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 74
    iput p1, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mAppWidgetId:I

    .line 75
    iput-object p3, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mPackageName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/data/WidgetInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mAppWidgetId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/data/WidgetInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/data/WidgetInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mAppWidgetId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/home/data/WidgetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method
