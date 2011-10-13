.class Lcom/sonyericsson/paneview/PaneView$Item;
.super Ljava/lang/Object;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field protected location:Lcom/sonyericsson/paneview/PaneLocation;

.field protected renderer:Lcom/sonyericsson/animation/Renderer;

.field protected rendererIsStandard:Z

.field protected view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/paneview/PaneView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/sonyericsson/paneview/PaneView$Item;-><init>()V

    return-void
.end method
