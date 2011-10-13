.class public Lcom/sonyericsson/cornerbutton/BottomLeft;
.super Lcom/sonyericsson/cornerbutton/CornerButton;
.source "BottomLeft.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cornerbutton/CornerButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getDirection()F
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x4234

    return v0
.end method

.method protected getFocusRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "outRect"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getFocusRect(Landroid/graphics/Rect;)V

    .line 30
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x46

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 31
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x3c

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 32
    return-void
.end method

.method protected getNextFocus(Lcom/sonyericsson/cornerbutton/Action;I)Lcom/sonyericsson/cornerbutton/Action;
    .locals 1
    .parameter "focusedAction"
    .parameter "direction"

    .prologue
    .line 36
    sparse-switch p2, :sswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/BottomLeft;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getActionBelow(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    goto :goto_0

    .line 42
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/BottomLeft;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->getActionAbove(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    goto :goto_0

    .line 36
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x21 -> :sswitch_1
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setCenterPos(IIF)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "showHideProgress"

    .prologue
    .line 22
    const/16 v0, 0xa

    iput v0, p0, Lcom/sonyericsson/cornerbutton/BottomLeft;->mCenterX:I

    .line 23
    int-to-float v0, p2

    const/high16 v1, 0x4120

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/cornerbutton/BottomLeft;->mCenterY:I

    .line 24
    return-void
.end method
