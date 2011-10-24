.class public Lcom/sonyericsson/home/transfer/TransferView;
.super Landroid/widget/RelativeLayout;
.source "TransferView.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferHandler;
.implements Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;,
        Lcom/sonyericsson/home/transfer/TransferView$TransferListener;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z

.field public static final TRANSFER_TARGET_TAG:I


# instance fields
.field private mDeleteRect:Landroid/graphics/Rect;

.field private mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

.field private mDeleteView:Landroid/view/View;

.field private mFocusHandler:Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;

.field private mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

.field private mRenderer:Lcom/sonyericsson/animation/Renderer;

.field private mResetFocusability:Z

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
    .line 98
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
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setDescendantFocusability(I)V

    .line 159
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    .line 160
    return-void
.end method

.method private doHinting(II)Lcom/sonyericsson/home/transfer/TransferTarget;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 236
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 237
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v0}, Lcom/sonyericsson/animation/Renderer;->getCurrentRect(Landroid/graphics/Rect;)V

    .line 238
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/home/transfer/TransferView;->updateViewPosition(II)V

    .line 239
    invoke-static {v0}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 241
    invoke-direct {p0, p0, p1, p2}, Lcom/sonyericsson/home/transfer/TransferView;->hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v1

    .line 242
    .local v1, target:Lcom/sonyericsson/home/transfer/TransferTarget;
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    if-eq v1, v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    iget-object v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v2, v3}, Lcom/sonyericsson/home/transfer/TransferTarget;->cancelHint(Lcom/sonyericsson/animation/Renderer;)V

    .line 245
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 247
    return-object v1
.end method

.method private hintTransferTarget(Landroid/view/ViewGroup;II)Lcom/sonyericsson/home/transfer/TransferTarget;
    .locals 19
    .parameter "group"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 274
    const/4 v10, 0x0

    .line 275
    .local v10, target:Lcom/sonyericsson/home/transfer/TransferTarget;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 276
    .local v11, targetHitRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 277
    .local v6, hintHitRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x1

    sub-int v7, v14, v15

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_4

    if-nez v10, :cond_4

    .line 278
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 279
    .local v5, child:Landroid/view/View;
    sget v14, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    invoke-virtual {v5, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 283
    .local v8, tag:Ljava/lang/Object;
    invoke-virtual {v5, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    invoke-virtual {v14, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 285
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v11, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 287
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 288
    .local v12, xOffset:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    .line 289
    .local v13, yOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    neg-int v15, v12

    invoke-virtual {v14, v15}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    neg-int v15, v13

    invoke-virtual {v14, v15}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 291
    if-eqz v8, :cond_2

    instance-of v14, v8, Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_2

    .line 292
    check-cast v8, Ljava/lang/ref/WeakReference;

    .end local v8           #tag:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 293
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

    .line 297
    move-object v0, v9

    check-cast v0, Lcom/sonyericsson/home/transfer/TransferTarget;

    move-object v10, v0

    .line 305
    .end local v5           #child:Landroid/view/View;
    .end local v9           #tagObj:Ljava/lang/Object;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    invoke-virtual {v14, v12}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    move-object v14, v0

    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 277
    .end local v12           #xOffset:I
    .end local v13           #yOffset:I
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 299
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

    .line 301
    move-object v0, v5

    check-cast v0, Lcom/sonyericsson/home/transfer/TransferTarget;

    move-object v10, v0

    goto :goto_1

    .line 302
    :cond_3
    instance-of v14, v5, Landroid/view/ViewGroup;

    if-eqz v14, :cond_0

    .line 303
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

    .line 309
    .end local v12           #xOffset:I
    .end local v13           #yOffset:I
    :cond_4
    invoke-static {v6}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 310
    const/4 v6, 0x0

    .line 311
    invoke-static {v11}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 312
    const/4 v11, 0x0

    .line 314
    return-object v10
.end method

.method private offsetView(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .parameter "sourceView"

    .prologue
    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, xOffset:I
    const/4 v3, 0x0

    .line 381
    .local v3, yOffset:I
    :goto_0
    if-eqz p2, :cond_1

    if-eq p2, p0, :cond_1

    .line 382
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v2, v4

    .line 383
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 384
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 385
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 386
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object p2, v0

    goto :goto_0

    .line 388
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 391
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 392
    invoke-virtual {p1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 393
    return-void
.end method

.method private updateViewPosition(II)V
    .locals 4
    .parameter "left"
    .parameter "top"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 258
    .local v0, currentLeft:I
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 259
    .local v1, currentTop:I
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 260
    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    sub-int v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 261
    return-void
.end method


# virtual methods
.method public cancelTransfer()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/transfer/TransferTarget;->cancelHint(Lcom/sonyericsson/animation/Renderer;)V

    .line 468
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/transfer/TransferView;->dropFinished(I)V

    .line 470
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 337
    const-wide/16 v7, 0x0

    .line 342
    .local v7, startTime:J
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 347
    .local v6, newFrame:Z
    if-eqz v6, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    .line 351
    .end local v6           #newFrame:Z
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->draw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Rect;J)Z

    move-result v6

    .line 354
    .restart local v6       #newFrame:Z
    if-eqz v6, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    .line 368
    .end local v6           #newFrame:Z
    :cond_1
    :goto_0
    return-void

    .line 357
    .restart local v6       #newFrame:Z
    :cond_2
    iput-object v9, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    .line 358
    iput-object v9, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    .line 359
    iput-object v9, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteView:Landroid/view/View;

    .line 360
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mFocusHandler:Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mFocusHandler:Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;->onUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x1

    .line 519
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dropFinished(I)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    const-string v1, "COMMAND_DROP"

    invoke-interface {v0, v1, v2, v2, v6}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    if-eqz v0, :cond_0

    .line 477
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    invoke-interface {v0}, Lcom/sonyericsson/home/transfer/TransferSource;->onTransferCompleted()V

    .line 494
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    invoke-interface {v0, v2}, Lcom/sonyericsson/home/transfer/TransferView$TransferListener;->onTransferEnd(Z)V

    .line 498
    :cond_1
    iput-object v6, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 499
    iput-object v6, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    .line 500
    iput-object v6, p0, Lcom/sonyericsson/home/transfer/TransferView;->mPreviousHintTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 501
    return-void

    .line 479
    :cond_2
    if-nez p1, :cond_3

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/home/transfer/TransferSource;->onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteView:Landroid/view/View;

    .line 483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 486
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    goto :goto_0

    .line 489
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    iget-object v1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    invoke-interface {v0, v1, v6}, Lcom/sonyericsson/home/transfer/TransferSource;->onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mDeleteRenderer:Lcom/sonyericsson/animation/Renderer;

    goto :goto_0
.end method

.method public isInTransferMode()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThisViewInTransfer(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/transfer/TransferView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 324
    const/4 v0, 0x1

    .line 332
    :goto_0
    return v0

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    .line 332
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mFocusHandler:Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mFocusHandler:Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x1

    .line 529
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 183
    iget-object v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    move v4, v8

    .line 224
    :goto_0
    return v4

    .line 186
    :cond_0
    iget-boolean v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchingView:Z

    if-nez v4, :cond_1

    move v4, v9

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 194
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 195
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 197
    .local v3, y:I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 198
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

    .line 201
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/home/transfer/TransferView;->doHinting(II)Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 204
    :cond_2
    if-ne v0, v9, :cond_3

    .line 207
    iget v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    iget v5, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/home/transfer/TransferView;->doHinting(II)Lcom/sonyericsson/home/transfer/TransferTarget;

    move-result-object v1

    .line 209
    .local v1, target:Lcom/sonyericsson/home/transfer/TransferTarget;
    if-eqz v1, :cond_4

    .line 210
    iget-object v4, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    invoke-interface {v1, v4, v5, p0}, Lcom/sonyericsson/home/transfer/TransferTarget;->drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 216
    :goto_1
    iput-boolean v8, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchingView:Z

    .line 219
    .end local v1           #target:Lcom/sonyericsson/home/transfer/TransferTarget;
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/home/transfer/TransferView;->invalidate()V

    .line 221
    iput v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    .line 222
    iput v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    move v4, v9

    .line 224
    goto :goto_0

    .line 212
    .restart local v1       #target:Lcom/sonyericsson/home/transfer/TransferTarget;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/transfer/TransferView;->dropFinished(I)V

    goto :goto_1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mResetFocusability:Z

    if-eqz v0, :cond_0

    .line 166
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/transfer/TransferView;->setDescendantFocusability(I)V

    .line 168
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setFocusHandler(Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mFocusHandler:Lcom/sonyericsson/home/transfer/TransferView$FocusHandler;

    .line 510
    return-void
.end method

.method public setResetFocusability(Z)V
    .locals 0
    .parameter "reset"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mResetFocusability:Z

    .line 179
    return-void
.end method

.method public setTransferListener(Lcom/sonyericsson/home/transfer/TransferView$TransferListener;)V
    .locals 0
    .parameter "transferListener"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    .line 434
    return-void
.end method

.method public transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/animation/Renderer;
    .locals 7
    .parameter "source"
    .parameter "view"
    .parameter "sourceView"

    .prologue
    const/4 v6, 0x0

    .line 398
    iput-object p1, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferSource:Lcom/sonyericsson/home/transfer/TransferSource;

    .line 399
    iput-object p2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchingView:Z

    .line 402
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/transfer/TransferView;->offsetView(Landroid/view/View;Landroid/view/View;)V

    .line 406
    new-instance v0, Lcom/sonyericsson/graphics/mesh/MeshRenderer;

    invoke-direct {v0}, Lcom/sonyericsson/graphics/mesh/MeshRenderer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    .line 408
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 409
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 410
    iget v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchXOffset:I

    .line 411
    iget v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchYOffset:I

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    iget v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchXOffset:I

    iget v3, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchYOffset:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/animation/Renderer;->start(Landroid/graphics/Rect;IIJ)V

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 414
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTransferListener:Lcom/sonyericsson/home/transfer/TransferView$TransferListener;

    iget-object v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mView:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/sonyericsson/home/transfer/TransferView$TransferListener;->onTransferStart(Landroid/view/View;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    const-string v2, "COMMAND_PICKUP"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v6, v6, v3}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 422
    iget v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchX:I

    iget v2, p0, Lcom/sonyericsson/home/transfer/TransferView;->mTouchY:I

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/home/transfer/TransferView;->doHinting(II)Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/home/transfer/TransferView;->mRenderer:Lcom/sonyericsson/animation/Renderer;

    return-object v0
.end method
