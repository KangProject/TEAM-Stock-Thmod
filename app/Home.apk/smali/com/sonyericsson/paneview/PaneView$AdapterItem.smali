.class Lcom/sonyericsson/paneview/PaneView$AdapterItem;
.super Lcom/sonyericsson/paneview/PaneView$Item;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterItem"
.end annotation


# instance fields
.field private id:J

.field private position:I

.field protected viewValid:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/paneview/PaneView$Item;-><init>(Lcom/sonyericsson/paneview/PaneView$1;)V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->viewValid:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/paneview/PaneView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    iget v0, p0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->position:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/paneview/PaneView$AdapterItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    iput p1, p0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->position:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->id:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/paneview/PaneView$AdapterItem;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->id:J

    return-wide p1
.end method
