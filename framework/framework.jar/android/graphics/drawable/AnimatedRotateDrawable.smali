.class public Landroid/graphics/drawable/AnimatedRotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedRotateDrawable$1;,
        Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    }
.end annotation


# instance fields
.field private mCurrentDegrees:F

.field private mIncrement:F

.field private mMutated:Z

.field private mRunning:Z

.field private mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "rotateState"
    .parameter "res"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/graphics/drawable/AnimatedRotateDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->init()V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedRotateDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 61
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 62
    .local v1, state:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    const/high16 v2, 0x43b4

    iget v3, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    .line 63
    iget-object v0, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 66
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 67
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method private nextFrame()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v2, v2, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 115
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->draw(Landroid/graphics/Canvas;Z)V

    .line 74
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 10
    .parameter "canvas"
    .parameter "mirror"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 79
    .local v5, saveCount:I
    iget-object v6, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 80
    .local v6, st:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iget-object v1, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 83
    .local v0, bounds:Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v8, v9

    .line 84
    .local v7, w:I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .line 86
    .local v2, h:I
    iget-boolean v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    if-eqz v8, :cond_0

    int-to-float v8, v7

    iget v9, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    mul-float/2addr v8, v9

    move v3, v8

    .line 87
    .local v3, px:F
    :goto_0
    iget-boolean v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    if-eqz v8, :cond_1

    int-to-float v8, v2

    iget v9, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    mul-float/2addr v8, v9

    move v4, v8

    .line 89
    .local v4, py:F
    :goto_1
    iget v8, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    invoke-virtual {p1, v8, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 91
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;Z)V

    .line 93
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 94
    return-void

    .line 86
    .end local v3           #px:F
    .end local v4           #py:F
    :cond_0
    iget v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    move v3, v8

    goto :goto_0

    .line 87
    .restart local v3       #px:F
    :cond_1
    iget v8, v6, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    move v4, v8

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 21
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
    .line 225
    sget-object v18, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 227
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, v18

    invoke-super {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 229
    const/16 v18, 0x2

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 230
    .local v16, tv:Landroid/util/TypedValue;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    move/from16 v11, v18

    .line 231
    .local v11, pivotXRel:Z
    :goto_0
    if-eqz v11, :cond_4

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v18

    move/from16 v10, v18

    .line 233
    .local v10, pivotX:F
    :goto_1
    const/16 v18, 0x3

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 234
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    move/from16 v13, v18

    .line 235
    .local v13, pivotYRel:Z
    :goto_2
    if-eqz v13, :cond_6

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v18

    move/from16 v12, v18

    .line 237
    .local v12, pivotY:F
    :goto_3
    const/16 v18, 0x5

    const/16 v19, 0xc

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 238
    .local v8, framesCount:I
    const/16 v18, 0x4

    const/16 v19, 0x96

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 240
    .local v7, frameDuration:I
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 241
    .local v14, res:I
    const/4 v6, 0x0

    .line 242
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    if-lez v14, :cond_0

    .line 243
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 246
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 250
    .local v9, outerDepth:I
    :cond_1
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, type:I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_7

    .line 253
    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 257
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 258
    const-string v18, "drawable"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Bad element under <animated-rotate>: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 230
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #frameDuration:I
    .end local v8           #framesCount:I
    .end local v9           #outerDepth:I
    .end local v10           #pivotX:F
    .end local v11           #pivotXRel:Z
    .end local v12           #pivotY:F
    .end local v13           #pivotYRel:Z
    .end local v14           #res:I
    .end local v17           #type:I
    :cond_3
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_0

    .line 231
    .restart local v11       #pivotXRel:Z
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v18

    move/from16 v10, v18

    goto/16 :goto_1

    .line 234
    .restart local v10       #pivotX:F
    :cond_5
    const/16 v18, 0x0

    move/from16 v13, v18

    goto/16 :goto_2

    .line 235
    .restart local v13       #pivotYRel:Z
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v18

    move/from16 v12, v18

    goto/16 :goto_3

    .line 263
    .restart local v6       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v7       #frameDuration:I
    .restart local v8       #framesCount:I
    .restart local v9       #outerDepth:I
    .restart local v12       #pivotY:F
    .restart local v14       #res:I
    .restart local v17       #type:I
    :cond_7
    if-nez v6, :cond_8

    .line 264
    const-string v18, "drawable"

    const-string v19, "No drawable specified for <animated-rotate>"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    move-object v15, v0

    .line 268
    .local v15, rotateState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    iput-object v6, v15, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    iput-boolean v11, v15, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    .line 270
    iput v10, v15, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .line 271
    iput-boolean v13, v15, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    .line 272
    iput v12, v15, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .line 273
    iput v8, v15, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    .line 274
    iput v7, v15, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    .line 276
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->init()V

    .line 278
    if-eqz v6, :cond_9

    .line 279
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 281
    :cond_9
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mMutated:Z

    .line 289
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bounds"

    .prologue
    .line 199
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 121
    iget v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    const/high16 v1, 0x43b4

    iget v2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->invalidateSelf()V

    .line 125
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    .line 126
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 176
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 179
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 159
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 162
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 163
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 130
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 131
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 132
    .local v0, changed:Z
    if-eqz p1, :cond_2

    .line 133
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 134
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 135
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    .line 140
    :cond_1
    :goto_0
    return v0

    .line 138
    :cond_2
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    .line 99
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    .line 101
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    .line 105
    invoke-virtual {p0, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 182
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 185
    :cond_0
    return-void
.end method
