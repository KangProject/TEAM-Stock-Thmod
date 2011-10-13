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

.field private final mCustomizationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/home/data/AdvWidgetInfo;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V
    .locals 1
    .parameter "packageName"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, custMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mAdvWidgetId:Ljava/util/UUID;

    .line 84
    iput-object p1, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mPackageName:Ljava/lang/String;

    .line 85
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mCustomizationMap:Ljava/util/HashMap;

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/util/UUID;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mAdvWidgetId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mCustomizationMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getCustomization()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mCustomizationMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mAdvWidgetId:Ljava/util/UUID;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/home/data/AdvWidgetInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method
