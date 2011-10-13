.class public Lcom/sonyericsson/view/BackgroundFadeSrcXferView;
.super Landroid/view/View;
.source "BackgroundFadeSrcXferView.java"


# static fields
.field private static final MAX_ALPHA:I = 0xb0


# instance fields
.field private mAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;->mAlpha:I

    shl-int/lit8 v0, v0, 0x18

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 32
    return-void
.end method

.method public setOpacity(F)V
    .locals 1
    .parameter "opacity"

    .prologue
    .line 40
    const v0, 0x3a83126f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 41
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;->setVisibility(I)V

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;->setVisibility(I)V

    .line 46
    :cond_1
    const/high16 v0, 0x4330

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/view/BackgroundFadeSrcXferView;->mAlpha:I

    goto :goto_0
.end method
