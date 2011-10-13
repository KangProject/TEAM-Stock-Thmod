.class Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;
.super Ljava/lang/Object;
.source "DesktopTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field alpha:I

.field drawRect:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/desktop/DesktopTransformer$State;-><init>()V

    return-void
.end method
