.class public Lcom/sonyericsson/home/layer/folder/FolderView;
.super Landroid/view/ViewGroup;
.source "FolderView.java"


# instance fields
.field private final mArrowDim:I

.field private mContentHeight:I

.field private final mContentPaddingBottom:I

.field private final mContentPaddingLeft:I

.field private final mContentPaddingRight:I

.field private final mContentPaddingTop:I

.field private mContentWidth:I

.field private mExpansion:I

.field private final mFolderBgBottom:Landroid/graphics/drawable/Drawable;

.field private final mFolderBgLeft:Landroid/graphics/drawable/Drawable;

.field private final mFolderBgMidDown:Landroid/graphics/drawable/Drawable;

.field private final mFolderBgMidLeft:Landroid/graphics/drawable/Drawable;

.field private final mFolderBgMidRight:Landroid/graphics/drawable/Drawable;

.field private final mFolderBgMidUp:Landroid/graphics/drawable/Drawable;

.field private final mFolderBgParts:[Landroid/graphics/drawable/Drawable;

.field private final mFolderBgRight:Landroid/graphics/drawable/Drawable;

.field private final mFolderBgTop:Landroid/graphics/drawable/Drawable;

.field private mFolderContent:Landroid/view/View;

.field private mFolderTitle:Landroid/view/View;

.field private mSourceX:I

.field private mSourceY:I

.field private final mTitleHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgLeft:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgRight:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgTop:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgBottom:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgMidUp:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgMidDown:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgMidLeft:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgMidRight:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingLeft:I

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingRight:I

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingTop:I

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingBottom:I

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mTitleHeight:I

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/folder/FolderView;->setAnimationCacheEnabled(Z)V

    .line 95
    return-void
.end method

.method private layoutFolderContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 207
    iget v2, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingLeft:I

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    :goto_0
    add-int v0, v2, v3

    .line 208
    .local v0, left:I
    iget v2, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingTop:I

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    :goto_1
    add-int v1, v2, v3

    .line 209
    .local v1, top:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderContent:Landroid/view/View;

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 210
    return-void

    .end local v0           #left:I
    .end local v1           #top:I
    :cond_0
    move v3, v5

    .line 207
    goto :goto_0

    .restart local v0       #left:I
    :cond_1
    move v3, v5

    .line 208
    goto :goto_1
.end method

.method private layoutFolderTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 200
    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentWidth:I

    iget v4, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingRight:I

    add-int v0, v3, v4

    .line 201
    .local v0, folderWidth:I
    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    move v1, v3

    .line 202
    .local v1, left:I
    :goto_0
    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    move v2, v3

    .line 203
    .local v2, top:I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderTitle:Landroid/view/View;

    add-int v4, v1, v0

    iget v5, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mTitleHeight:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 204
    return-void

    .end local v1           #left:I
    .end local v2           #top:I
    :cond_0
    move v1, v5

    .line 201
    goto :goto_0

    .restart local v1       #left:I
    :cond_1
    move v2, v5

    .line 202
    goto :goto_1
.end method

.method private setupBackgroundGraphics(II)V
    .locals 12
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 165
    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentWidth:I

    iget v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingLeft:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingRight:I

    add-int v1, v6, v7

    .line 166
    .local v1, folderWidth:I
    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentHeight:I

    iget v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentPaddingBottom:I

    add-int v0, v6, v7

    .line 168
    .local v0, folderHeight:I
    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    invoke-static {v6}, Lcom/sonyericsson/home/layer/folder/Expansion;->isVertical(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgLeft:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v10

    .line 170
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    if-ne v7, v11, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgMidUp:Landroid/graphics/drawable/Drawable;

    :goto_0
    aput-object v7, v6, v9

    .line 171
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgRight:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v11

    .line 173
    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    move v5, v6

    .line 174
    .local v5, sidesDTop:I
    :goto_1
    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mSourceX:I

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    .line 176
    .local v2, middleLeft:I
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    add-int v7, v5, v0

    invoke-virtual {v6, v10, v5, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v2

    iget v8, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    add-int/2addr v8, v0

    invoke-virtual {v6, v2, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v11

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v2

    add-int v8, v5, v0

    invoke-virtual {v6, v7, v5, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    .end local v2           #middleLeft:I
    .end local v5           #sidesDTop:I
    :goto_2
    return-void

    .line 170
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgMidDown:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    move v5, v10

    .line 173
    goto :goto_1

    .line 182
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgTop:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v10

    .line 183
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgMidLeft:Landroid/graphics/drawable/Drawable;

    :goto_3
    aput-object v7, v6, v9

    .line 185
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgBottom:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v11

    .line 187
    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    if-ne v6, v9, :cond_4

    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    move v4, v6

    .line 188
    .local v4, sidesDLeft:I
    :goto_4
    iget v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mSourceY:I

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 190
    .local v3, middleTop:I
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v10

    add-int v7, v4, v1

    invoke-virtual {v6, v4, v10, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v9

    iget v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mArrowDim:I

    add-int/2addr v7, v1

    iget-object v8, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v6, v10, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v11

    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v3

    add-int v8, v4, v1

    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 183
    .end local v3           #middleTop:I
    .end local v4           #sidesDLeft:I
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgMidRight:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    move v4, v10

    .line 187
    goto :goto_4
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderBgParts:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 220
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "currentFocus"
    .parameter "direction"

    .prologue
    .line 161
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSourceX()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mSourceX:I

    int-to-float v0, v0

    return v0
.end method

.method public getSourceY()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mSourceY:I

    int-to-float v0, v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/folder/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderTitle:Landroid/view/View;

    .line 100
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/folder/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderContent:Landroid/view/View;

    .line 101
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 149
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderView;->setupBackgroundGraphics(II)V

    .line 151
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->layoutFolderTitle()V

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->layoutFolderContent()V

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderView;->invalidate()V

    .line 156
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderTitle:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mFolderContent:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 145
    return-void
.end method

.method preLayout(IIIII)V
    .locals 0
    .parameter "expansion"
    .parameter "sourceX"
    .parameter "sourceY"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 114
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mExpansion:I

    .line 115
    iput p4, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentWidth:I

    .line 116
    iput p5, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mContentHeight:I

    .line 117
    iput p2, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mSourceX:I

    .line 118
    iput p3, p0, Lcom/sonyericsson/home/layer/folder/FolderView;->mSourceY:I

    .line 119
    return-void
.end method
