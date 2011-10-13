.class public Lcom/sonyericsson/home/data/InfoGroup;
.super Lcom/sonyericsson/home/data/Info;
.source "InfoGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/data/InfoGroup$1;,
        Lcom/sonyericsson/home/data/InfoGroup$InfoGroupFactory;
    }
.end annotation


# instance fields
.field private mIcon:I

.field private mLabel:Ljava/lang/String;

.field private mUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 107
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;Ljava/lang/String;I)V
    .locals 0
    .parameter "uuid"
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/home/data/InfoGroup;->mUuid:Ljava/util/UUID;

    .line 102
    iput-object p2, p0, Lcom/sonyericsson/home/data/InfoGroup;->mLabel:Ljava/lang/String;

    .line 103
    iput p3, p0, Lcom/sonyericsson/home/data/InfoGroup;->mIcon:I

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Ljava/lang/String;ILcom/sonyericsson/home/data/InfoGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/util/UUID;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/data/InfoGroup;)Ljava/util/UUID;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/home/data/InfoGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/data/InfoGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/home/data/InfoGroup;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/data/InfoGroup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/sonyericsson/home/data/InfoGroup;->mIcon:I

    return v0
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/sonyericsson/home/data/InfoGroup;->mIcon:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/home/data/InfoGroup;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/home/data/InfoGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 134
    iput p1, p0, Lcom/sonyericsson/home/data/InfoGroup;->mIcon:I

    .line 135
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonyericsson/home/data/InfoGroup;->mLabel:Ljava/lang/String;

    .line 117
    return-void
.end method
