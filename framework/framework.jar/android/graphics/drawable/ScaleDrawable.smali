.class public Landroid/graphics/drawable/ScaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScaleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ScaleDrawable$1;,
        Landroid/graphics/drawable/ScaleDrawable$ScaleState;
    }
.end annotation


# instance fields
.field private mMutated:Z

.field private mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IFF)V
    .locals 1
    .parameter "drawable"
    .parameter "gravity"
    .parameter "scaleWidth"
    .parameter "scaleHeight"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    .line 62
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput-object p1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p2, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 64
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p3, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 65
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput p4, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 70
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 315
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/graphics/drawable/ScaleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 316
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private static getPercent(Landroid/content/res/TypedArray;I)F
    .locals 5
    .parameter "a"
    .parameter "name"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, f:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    .line 87
    .end local v0           #f:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/high16 v2, -0x4080

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/ScaleDrawable;->draw(Landroid/graphics/Canvas;Z)V

    .line 153
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 1
    .parameter "canvas"
    .parameter "mirror"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mChangingConfigurations:I

    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 97
    sget-object v7, Lcom/android/internal/R$styleable;->ScaleDrawable:[I

    invoke-virtual {p1, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {v0, v9}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;I)F

    move-result v5

    .line 100
    .local v5, sw:F
    invoke-static {v0, v10}, Landroid/graphics/drawable/ScaleDrawable;->getPercent(Landroid/content/res/TypedArray;I)F

    move-result v4

    .line 101
    .local v4, sh:F
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 102
    .local v2, g:I
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 104
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 108
    .local v3, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_2

    .line 109
    :cond_1
    if-ne v6, v10, :cond_0

    .line 112
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_2
    if-nez v1, :cond_3

    .line 116
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No drawable specified for <scale>"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 119
    :cond_3
    iget-object v7, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput-object v1, v7, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v7, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v5, v7, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    .line 121
    iget-object v7, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v4, v7, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    .line 122
    iget-object v7, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iput v2, v7, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    .line 123
    if-eqz v1, :cond_4

    .line 124
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    :cond_4
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mMutated:Z

    .line 261
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 12
    .parameter "bounds"

    .prologue
    const/16 v11, 0x2710

    const/4 v10, 0x0

    const v9, 0x461c4000

    const/4 v8, 0x0

    .line 217
    iget-object v4, p0, Landroid/graphics/drawable/ScaleDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 218
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getLevel()I

    move-result v3

    .line 219
    .local v3, level:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 220
    .local v5, w:I
    const/4 v2, 0x0

    .line 221
    .local v2, iw:I
    iget-object v6, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v6, v6, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_0

    .line 222
    sub-int v6, v5, v10

    sub-int v7, v11, v3

    mul-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v7, v7, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    sub-int/2addr v5, v6

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 225
    .local v0, h:I
    const/4 v1, 0x0

    .line 226
    .local v1, ih:I
    iget-object v6, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v6, v6, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    .line 227
    sub-int v6, v0, v10

    sub-int v7, v11, v3

    mul-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v7, v7, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v9

    float-to-int v6, v6

    sub-int/2addr v0, v6

    .line 229
    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget v6, v6, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    invoke-static {v6, v5, v0, p1, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 231
    if-lez v5, :cond_2

    if-lez v0, :cond_2

    .line 232
    iget-object v6, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v6, v6, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    :cond_2
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 209
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 210
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 211
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->invalidateSelf()V

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 202
    iget-object v1, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v1, v1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 203
    .local v0, changed:Z
    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/ScaleDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 204
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 140
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 183
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 187
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 188
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mScaleState:Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    iget-object v0, v0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 177
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/graphics/drawable/ScaleDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    return-void
.end method
