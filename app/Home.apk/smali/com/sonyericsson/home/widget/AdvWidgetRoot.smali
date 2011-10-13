.class public Lcom/sonyericsson/home/widget/AdvWidgetRoot;
.super Landroid/widget/FrameLayout;
.source "AdvWidgetRoot.java"


# instance fields
.field private mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;)V
    .locals 3
    .parameter "context"
    .parameter "proxy"

    .prologue
    const/4 v2, -0x1

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    .line 30
    invoke-virtual {p2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, root:Landroid/view/View;
    if-nez v0, :cond_0

    .line 32
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 34
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    return-void
.end method

.method private getChild()Landroid/view/View;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 38
    iget-object v2, p0, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getSnapshot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    .local v1, ret:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getChild()Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 42
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 46
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-object v1
.end method

.method public getWidgetType()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->mProxy:Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {v0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->getType()I

    move-result v0

    return v0
.end method

.method public hideWidget()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getChild()Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 68
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public showWidget()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/home/widget/AdvWidgetRoot;->getChild()Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_0
    return-void
.end method
