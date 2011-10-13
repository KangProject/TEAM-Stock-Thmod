.class public Lcom/sonyericsson/home/FakeRadioButton;
.super Landroid/widget/ImageView;
.source "FakeRadioButton.java"


# instance fields
.field private radioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/home/FakeRadioButton;->radioButton:Landroid/widget/RadioButton;

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/home/FakeRadioButton;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->draw(Landroid/graphics/Canvas;)V

    .line 61
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/home/FakeRadioButton;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/sonyericsson/home/FakeRadioButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/home/FakeRadioButton;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RadioButton;->layout(IIII)V

    .line 56
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/home/FakeRadioButton;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RadioButton;->measure(II)V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/home/FakeRadioButton;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/home/FakeRadioButton;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/FakeRadioButton;->setMeasuredDimension(II)V

    .line 50
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/FakeRadioButton;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/home/FakeRadioButton;->invalidate()V

    .line 43
    return-void
.end method
