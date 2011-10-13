.class public Lcom/sonyericsson/home/layer/folder/FolderLayout;
.super Landroid/view/ViewGroup;
.source "FolderLayout.java"


# static fields
.field private static final VISIBILITY_HIDDEN:I = 0x0

.field private static final VISIBILITY_PENDING_SHOW:I = 0x1

.field private static final VISIBILITY_SHOWN:I = 0x2


# instance fields
.field private mAnimateShow:Z

.field private final mArrowDim:I

.field private mContentHeight:I

.field private final mContentPaddingBottom:I

.field private final mContentPaddingLeft:I

.field private final mContentPaddingRight:I

.field private final mContentPaddingTop:I

.field private mContentWidth:I

.field private mCount:I

.field private mExpansion:I

.field private mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

.field private mLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

.field private mMaxCols:I

.field private mMaxRows:I

.field private mOpenFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSourceRect:Landroid/graphics/Rect;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mVisibility:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    .line 82
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingLeft:I

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingRight:I

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingTop:I

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingBottom:I

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mArrowDim:I

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mMaxCols:I

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mMaxRows:I

    .line 95
    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setAnimationCacheEnabled(Z)V

    .line 96
    return-void
.end method

.method private calculateExpansion(II)V
    .locals 19
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/home/layer/folder/FolderLocator;->getCellWidth()I

    move-result v3

    .line 228
    .local v3, cellWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/home/layer/folder/FolderLocator;->getCellHeight()I

    move-result v2

    .line 231
    .local v2, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, p2, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    const/16 v16, 0x2

    move/from16 v12, v16

    .line 233
    .local v12, verticalExpansion:I
    :goto_0
    const/16 v16, 0x2

    move v0, v12

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v13, v16

    .line 235
    .local v13, verticalMaxExpand:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingLeft:I

    move/from16 v16, v0

    sub-int v16, p1, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingRight:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int v16, v16, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mMaxCols:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 237
    .local v11, verticalCols:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingBottom:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mArrowDim:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int v16, v16, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mMaxRows:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 240
    .local v14, verticalMaxRows:I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    div-int v16, v16, v11

    add-int/lit8 v15, v16, 0x1

    .line 243
    .local v15, verticalRows:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v17, p1, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    const/16 v16, 0x0

    move/from16 v6, v16

    .line 245
    .local v6, horizontalExpansion:I
    :goto_2
    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v7, v16

    .line 247
    .local v7, horizontalMaxExpand:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingLeft:I

    move/from16 v16, v0

    sub-int v16, v7, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingRight:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mArrowDim:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int v16, v16, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mMaxCols:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 250
    .local v5, horizontalCols:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingTop:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingBottom:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int v16, v16, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mMaxRows:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 252
    .local v8, horizontalMaxRows:I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    div-int v16, v16, v5

    add-int/lit8 v9, v16, 0x1

    .line 254
    .local v9, horizontalRows:I
    mul-int v16, v11, v14

    mul-int v17, v5, v8

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    move/from16 v16, v12

    :goto_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/home/layer/folder/Expansion;->isVertical(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move v4, v11

    .line 258
    .local v4, cols:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/home/layer/folder/Expansion;->isVertical(I)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v10, v16

    .line 261
    .local v10, rows:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderLocator;->setGridCols(I)V

    .line 263
    mul-int v16, v4, v3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentWidth:I

    .line 264
    mul-int v16, v10, v2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentHeight:I

    .line 265
    return-void

    .line 231
    .end local v4           #cols:I
    .end local v5           #horizontalCols:I
    .end local v6           #horizontalExpansion:I
    .end local v7           #horizontalMaxExpand:I
    .end local v8           #horizontalMaxRows:I
    .end local v9           #horizontalRows:I
    .end local v10           #rows:I
    .end local v11           #verticalCols:I
    .end local v12           #verticalExpansion:I
    .end local v13           #verticalMaxExpand:I
    .end local v14           #verticalMaxRows:I
    .end local v15           #verticalRows:I
    :cond_0
    const/16 v16, 0x3

    move/from16 v12, v16

    goto/16 :goto_0

    .line 233
    .restart local v12       #verticalExpansion:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v13, v16

    goto/16 :goto_1

    .line 243
    .restart local v11       #verticalCols:I
    .restart local v13       #verticalMaxExpand:I
    .restart local v14       #verticalMaxRows:I
    .restart local v15       #verticalRows:I
    :cond_2
    const/16 v16, 0x1

    move/from16 v6, v16

    goto/16 :goto_2

    .line 245
    .restart local v6       #horizontalExpansion:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, p1, v16

    move/from16 v7, v16

    goto/16 :goto_3

    .restart local v5       #horizontalCols:I
    .restart local v7       #horizontalMaxExpand:I
    .restart local v8       #horizontalMaxRows:I
    .restart local v9       #horizontalRows:I
    :cond_4
    move/from16 v16, v6

    .line 254
    goto :goto_4

    :cond_5
    move v4, v5

    .line 257
    goto :goto_5

    .line 258
    .restart local v4       #cols:I
    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v10, v16

    goto :goto_6
.end method

.method private layoutFolderView(II)V
    .locals 10
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v4, 0x0

    .line 268
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentWidth:I

    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/Expansion;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    add-int v9, v0, v1

    .line 270
    .local v9, folderWidth:I
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentHeight:I

    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentPaddingBottom:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/Expansion;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mArrowDim:I

    :goto_1
    add-int v6, v0, v1

    .line 275
    .local v6, folderHeight:I
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/Expansion;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, v9, 0x2

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 277
    .local v7, folderLeft:I
    add-int v0, v7, v9

    sub-int/2addr v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v7, v0

    .line 278
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    move v8, v0

    .line 289
    .local v8, folderTop:I
    :goto_2
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    packed-switch v0, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 268
    .end local v6           #folderHeight:I
    .end local v7           #folderLeft:I
    .end local v8           #folderTop:I
    .end local v9           #folderWidth:I
    :cond_0
    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mArrowDim:I

    goto :goto_0

    .restart local v9       #folderWidth:I
    :cond_1
    move v1, v4

    .line 270
    goto :goto_1

    .line 278
    .restart local v6       #folderHeight:I
    .restart local v7       #folderLeft:I
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    goto :goto_2

    .line 281
    .end local v7           #folderLeft:I
    :cond_3
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v9

    move v7, v0

    .line 283
    .restart local v7       #folderLeft:I
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, v6, 0x2

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 284
    .restart local v8       #folderTop:I
    add-int v0, v8, v6

    sub-int/2addr v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v8, v0

    goto :goto_2

    .line 281
    .end local v7           #folderLeft:I
    .end local v8           #folderTop:I
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    goto :goto_3

    .line 291
    .restart local v7       #folderLeft:I
    .restart local v8       #folderTop:I
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v7

    .line 292
    .local v2, sourceX:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int v3, v0, v8

    .line 314
    .local v3, sourceY:I
    :goto_4
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mExpansion:I

    iget v4, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentWidth:I

    iget v5, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mContentHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/home/layer/folder/FolderView;->preLayout(IIIII)V

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    add-int v1, v7, v9

    add-int v4, v8, v6

    invoke-virtual {v0, v7, v8, v1, v4}, Lcom/sonyericsson/home/layer/folder/FolderView;->layout(IIII)V

    .line 317
    return-void

    .line 296
    .end local v2           #sourceX:I
    .end local v3           #sourceY:I
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 297
    .restart local v2       #sourceX:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int v3, v0, v8

    .line 298
    .restart local v3       #sourceY:I
    goto :goto_4

    .line 301
    .end local v2           #sourceX:I
    .end local v3           #sourceY:I
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v2, v0, v7

    .line 302
    .restart local v2       #sourceX:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v0, v8

    .line 303
    .restart local v3       #sourceY:I
    goto :goto_4

    .line 306
    .end local v2           #sourceX:I
    .end local v3           #sourceY:I
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v2, v0, v7

    .line 307
    .restart local v2       #sourceX:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v0, v8

    .line 308
    .restart local v3       #sourceY:I
    goto :goto_4

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startHideAnimations()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v5, 0x0

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 340
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 341
    .local v9, alphaAnimationOpen:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 342
    invoke-virtual {p0, v9}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderView;->getSourceX()F

    move-result v6

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderView;->getSourceY()F

    move-result v8

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 347
    .local v0, scaleAnimationOpen:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 348
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 350
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setVisibility(I)V

    .line 351
    return-void
.end method

.method private startShowAnimations()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 320
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mAnimateShow:Z

    if-eqz v3, :cond_0

    .line 321
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 322
    .local v9, alphaAnimationOpen:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 323
    invoke-virtual {p0, v9}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderView;->getSourceX()F

    move-result v6

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderView;->getSourceY()F

    move-result v8

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 331
    .local v0, scaleAnimationOpen:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 332
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f333333

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    .end local v0           #scaleAnimationOpen:Landroid/view/animation/ScaleAnimation;
    .end local v9           #alphaAnimationOpen:Landroid/view/animation/AlphaAnimation;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setVisibility(I)V

    .line 337
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mOpenFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mOpenFolderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mOpenFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 224
    return-void
.end method

.method public getOpenFolderDrawableHeight()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mOpenFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getOpenFolderDrawableWidth()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mOpenFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 165
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mVisibility:I

    packed-switch v0, :pswitch_data_0

    .line 180
    const-string v0, "FolderLayout"

    const-string v1, "hide() invoked while hidden"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iput v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mVisibility:I

    goto :goto_0

    .line 171
    :pswitch_1
    iput v1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mVisibility:I

    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->startHideAnimations()V

    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 187
    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/folder/FolderView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    invoke-static {v0}, Lcom/sonyericsson/home/bidi/Utils;->setDirectionalityLeftToRight(Landroid/view/ViewGroup;)V

    .line 189
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    if-eqz v2, :cond_0

    .line 200
    sub-int v1, p4, p2

    .line 201
    .local v1, width:I
    sub-int v0, p5, p3

    .line 203
    .local v0, height:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->calculateExpansion(II)V

    .line 206
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->layoutFolderView(II)V

    .line 208
    iget v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mVisibility:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 209
    const/4 v2, 0x2

    iput v2, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mVisibility:I

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->startShowAnimations()V

    .line 214
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mFolderView:Lcom/sonyericsson/home/layer/folder/FolderView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/home/layer/folder/FolderView;->measure(II)V

    .line 195
    return-void
.end method

.method public setLocator(Lcom/sonyericsson/home/layer/folder/FolderLocator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    .line 105
    return-void
.end method

.method public setOpenFolderDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "openFolderDrawable"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mOpenFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->invalidate()V

    .line 115
    return-void
.end method

.method public show(Landroid/graphics/Rect;IZ)V
    .locals 2
    .parameter "sourceRect"
    .parameter "count"
    .parameter "animate"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mSourceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 144
    iput p2, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mCount:I

    .line 145
    iput-boolean p3, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mAnimateShow:Z

    .line 147
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mVisibility:I

    packed-switch v0, :pswitch_data_0

    .line 153
    const-string v0, "FolderLayout"

    const-string v1, "show() invoked while not hidden"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->requestLayout()V

    .line 158
    return-void

    .line 149
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderLayout;->mVisibility:I

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
