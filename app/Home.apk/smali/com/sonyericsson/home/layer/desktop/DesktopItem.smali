.class public Lcom/sonyericsson/home/layer/desktop/DesktopItem;
.super Ljava/lang/Object;
.source "DesktopItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/desktop/DesktopItem$DesktopItemFactory;
    }
.end annotation


# instance fields
.field private mInfo:Lcom/sonyericsson/home/data/Info;

.field private mLocation:Lcom/sonyericsson/home/layer/desktop/DesktopRect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mInfo:Lcom/sonyericsson/home/data/Info;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V
    .locals 0
    .parameter "info"
    .parameter "location"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mInfo:Lcom/sonyericsson/home/data/Info;

    .line 106
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mLocation:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mLocation:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method


# virtual methods
.method public getInfo()Lcom/sonyericsson/home/data/Info;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mInfo:Lcom/sonyericsson/home/data/Info;

    return-object v0
.end method

.method public getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mLocation:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    return-object v0
.end method

.method public setInfo(Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mInfo:Lcom/sonyericsson/home/data/Info;

    .line 134
    return-void
.end method

.method public setLocation(Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->mLocation:Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 116
    return-void
.end method
