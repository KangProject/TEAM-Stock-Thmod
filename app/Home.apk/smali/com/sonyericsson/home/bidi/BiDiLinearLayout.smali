.class public Lcom/sonyericsson/home/bidi/BiDiLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BiDiLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-static {p0}, Lcom/sonyericsson/home/bidi/Utils;->setDirectionalityLeftToRight(Landroid/view/ViewGroup;)V

    .line 31
    return-void
.end method
