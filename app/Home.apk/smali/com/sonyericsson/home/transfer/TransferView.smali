.class public Lcom/sonyericsson/home/transfer/TransferView;
.super Landroid/widget/RelativeLayout;
.source "TransferView.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferHandler;
.implements Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/transfer/TransferView$TransferListener;
    }
.end annotation


# static fields
.field public static final TRANSFER_TARGET_TAG:I


# instance fields
.field private mDeleteRect:Landroid/graphics/Rect;

.field private mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

.field private mDeleteView:Landroid/view/View;

.field private mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

.field private mRenderer:Lcom/sonyericsson/animation/Renderer;

.field private mTargetRect:Landroid/graphics/Rect;

.field private mTouchX:I

.field private mTouchXOffset:I

.field private mTouchY:I

.field private mTouchYOffset:I

.field private mTouchingView:Z

.field private mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

.field private mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    .line 116
    return-void
.end method

.method private doHinting(II)Lcom/sonyericsson/home/transfer/TransferTarget;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 173
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 174
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v0}, Lcom/sonyericsson/animation/Renderer;->getCurrentRect(Landroid/graphics/Rect;)V

    .line 175
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/home/transfer/TransferView;->updateViewPosition(II)V

    .line 176
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 178
    invoke-direct {p0, p0, p1, p2}, Lcom/sonyericsson/home/transfer/TransferView;->hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v1

    .line 179
    .local v1, target:Lcom/sonyericsson/home/transfer/TransferTarget;
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    if-eq v1, v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    iget-object v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/home/transfer/TransferTarget;->cancelHint(Lcom/sonyericsson/animation/Renderer;)V

    .line 182
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 184
    return-object v1
.end method

.method private hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonyericsson/home/transfer/TransferTarget;
    .locals 19
    .parameter "group"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 211
    const/4 v10, 0x0

    .line 212
    .local v10, target:Lcom/sonyericsson/home/transfer/TransferTarget;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 213
    .local v11, targetHitRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 214
    .local v6, hintHitRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x1

    sub-int v7, v14, v15

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_4

    if-nez v10, :cond_4

    .line 215
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 216
    .local v5, child:Landroid/view/View;
    sget v14, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    invoke-virtual {v5, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 220
    .local v8, tag:Ljava/lang/Object;
    invoke-virtual {v5, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    invoke-virtual {v14, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 222
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v11, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 224
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 225
    .local v12, xOffset:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    .line 226
    .local v13, yOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    neg-int v15, v12

    invoke-virtual {v14, v15}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    neg-int v15, v13

    invoke-virtual {v14, v15}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 228
    if-eqz v8, :cond_2

    instance-of v14, v8, Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_2

    .line 229
    check-cast v8, Ljava/lang/ref/WeakReference;

    .end local v8           #tag:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 230
    .local v9, tagObj:Ljava/lang/Object;
    if-eqz v9, :cond_0

    instance-of v14, v9, Lcom/sonyericsson/home/transfer/TransferTarget;

    if-eqz v14, :cond_0

    move-object v0, v9

    check-cast v0, Lcom/sonyericsson/home/transfer/TransferTarget;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v15, v0

    sub-int v16, p2, v12

    sub-int v17, p3, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    move-object/from16 v18, v0

    invoke-interface/range {v14 .. v18}, Lcom/sonyericsson/home/transfer/TransferTarget;->hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 232
    move-object v0, v9

    check-cast v0, Lcom/sonyericsson/home/transfer/TransferTarget;

    move-object v10, v0

    .line 240
    .end local v5           #child:Landroid/view/View;
    .end local v9           #tagObj:Ljava/lang/Object;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    invoke-virtual {v14, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 214
    .end local v12           #xOffset:I
    .end local v13           #yOffset:I
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 234
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #tag:Ljava/lang/Object;
    .restart local v12       #xOffset:I
    .restart local v13       #yOffset:I
    :cond_2
    instance-of v14, v5, Lcom/sonyericsson/home/transfer/TransferTarget;

    if-eqz v14, :cond_3

    move-object v0, v5

    check-cast v0, Lcom/sonyericsson/home/transfer/TransferTarget;

    move-object v8, v0

    .end local v8           #tag:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    sub-int v15, p2, v12

    sub-int v16, p3, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    move-object/from16 v17, v0

    move-object v0, v8

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sonyericsson/home/transfer/TransferTarget;->hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 236
    move-object v0, v5

    check-cast v0, Lcom/sonyericsson/home/transfer/TransferTarget;

    move-object v10, v0

    goto :goto_1

    .line 237
    :cond_3
    instance-of v14, v5, Landroid/view/ViewGroup;

    if-eqz v14, :cond_0

    .line 238
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5           #child:Landroid/view/View;
    sub-int v14, p2, v12

    sub-int v15, p3, v13

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v14

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/transfer/TransferView;->hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v10

    goto :goto_1

    .line 244
    .end local v12           #xOffset:I
    .end local v13           #yOffset:I
    :cond_4
    invoke-static {v6}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 245
    const/4 v6, 0x0

    .line 246
    invoke-static {v11}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 247
    const/4 v11, 0x0

    .line 249
    return-object v10
.end method

.method private offsetView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "view"
    .parameter "sourceView"

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, xOffset:I
    const/4 v3, 0x0

    .line 306
    .local v3, yOffset:I
    :goto_0
    if-eqz p2, :cond_1

    if-eq p2, p0, :cond_1

    .line 307
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    add-int/2addr v2, v4

    .line 308
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 309
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 310
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 311
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object p2, v0

    goto :goto_0

    .line 313
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 316
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 317
    invoke-virtual {p1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 318
    return-void
.end method

.method private updateViewPosition(II)V
    .locals 4
    .parameter "left"
    .parameter "top"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 195
    .local v0, currentLeft:I
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 196
    .local v1, currentTop:I
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 197
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    sub-int v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 198
    return-void
.end method


# virtual methods
.method public cancelTransfer()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/transfer/TransferTarget;->cancelHint(Lcom/sonyericsson/animation/Renderer;)V

    .line 364
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/transfer/TransferView;->dropFinished(Z)V

    .line 366
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 272
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 277
    .local v6, newFrame:Z
    if-eqz v6, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    .line 281
    .end local v6           #newFrame:Z
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 284
    .restart local v6       #newFrame:Z
    if-eqz v6, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    .line 293
    .end local v6           #newFrame:Z
    :cond_1
    :goto_0
    return-void

    .line 287
    .restart local v6       #newFrame:Z
    :cond_2
    iput-object v7, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    .line 288
    iput-object v7, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    .line 289
    iput-object v7, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteView:Landroid/view/View;

    .line 290
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    goto :goto_0
.end method

.method public dropFinished(Z)V
    .locals 7
    .parameter "success"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    const-string v1, "COMMAND_DROP"

    invoke-interface {v0, v1, v2, v2, v6}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 372
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    if-eqz v0, :cond_0

    .line 373
    if-eqz p1, :cond_2

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    invoke-interface {v0}, Lcom/sonyericsson/home/transfer/TransferSource;->onTransferCompleted()V

    .line 387
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    invoke-interface {v0, v2}, Lcom/sonyericsson/home/transfer/TransferView$TransferListener;->onTransferEnd(Z)V

    .line 391
    :cond_1
    iput-object v6, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 392
    iput-object v6, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    .line 393
    iput-object v6, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 394
    return-void

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/home/transfer/TransferSource;->onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteView:Landroid/view/View;

    .line 379
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 382
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/transfer/TransferView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    .line 267
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    iget-object v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    move v4, v8

    .line 161
    :goto_0
    return v4

    .line 123
    :cond_0
    iget-boolean v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchingView:Z

    if-nez v4, :cond_1

    move v4, v9

    .line 127
    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 131
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 132
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 134
    .local v3, y:I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchXOffset:I

    add-int/2addr v5, v6

    sub-int v5, v2, v5

    iget-object v6, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchYOffset:I

    add-int/2addr v6, v7

    sub-int v6, v3, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 138
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/home/transfer/TransferView;->doHinting(II)Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 141
    :cond_2
    if-ne v0, v9, :cond_3

    .line 144
    iget v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    iget v5, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/home/transfer/TransferView;->doHinting(II)Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v1

    .line 146
    .local v1, target:Lcom/sonyericsson/home/transfer/TransferTarget;
    if-eqz v1, :cond_4

    .line 147
    iget-object v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v1, v4, v5, p0}, Lcom/sonyericsson/home/transfer/TransferTarget;->drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 153
    :goto_1
    iput-boolean v8, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchingView:Z

    .line 156
    .end local v1           #target:Lcom/sonyericsson/home/transfer/TransferTarget;
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    .line 158
    iput v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    .line 159
    iput v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    move v4, v9

    .line 161
    goto :goto_0

    .line 149
    .restart local v1       #target:Lcom/sonyericsson/home/transfer/TransferTarget;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/transfer/TransferView;->dropFinished(Z)V

    goto :goto_1
.end method

.method public setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V
    .locals 0
    .parameter "transferListener"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    .line 357
    return-void
.end method

.method public transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "source"
    .parameter "view"
    .parameter "sourceView"

    .prologue
    const/4 v6, 0x0

    .line 323
    iput-object p1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 324
    iput-object p2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchingView:Z

    .line 327
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/transfer/TransferView;->offsetView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 331
    new-instance v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;

    invoke-direct {v0}, Lcom/sonyericsson/graphics/mesh/MeshRenderer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    .line 333
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 334
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 335
    iget v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchXOffset:I

    .line 336
    iget v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchYOffset:I

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    iget v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchXOffset:I

    iget v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchYOffset:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 339
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/transfer/TransferView$TransferListener;->onTransferStart()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    const-string v2, "COMMAND_PICKUP"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v6, v6, v3}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 347
    iget v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    iget v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/home/transfer/TransferView;->doHinting(II)Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 348
    return-void
.end method
