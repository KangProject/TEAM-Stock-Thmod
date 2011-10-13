.class Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;
.super Ljava/lang/Object;
.source "DesktopTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transformation"
.end annotation


# instance fields
.field enabled:Z

.field start:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

.field target:Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;

.field targetVx:F

.field targetVy:F

.field zOrder:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$Transformation;-><init>()V

    return-void
.end method
