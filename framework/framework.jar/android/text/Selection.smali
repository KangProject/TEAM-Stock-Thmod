.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$LEADING_START;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_LEADING_START:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 457
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 473
    new-instance v0, Landroid/text/Selection$LEADING_START;

    invoke-direct {v0, v1}, Landroid/text/Selection$LEADING_START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .parameter "layout"
    .parameter "direction"
    .parameter "off1"
    .parameter "off2"

    .prologue
    .line 407
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 408
    .local v3, line1:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 410
    .local v4, line2:I
    if-ne v3, v4, :cond_3

    .line 413
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 414
    .local v0, h1:F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 416
    .local v1, h2:F
    if-gez p1, :cond_1

    .line 419
    cmpg-float v6, v0, v1

    if-gez v6, :cond_0

    move v6, p2

    .line 444
    .end local v0           #h1:F
    .end local v1           #h2:F
    :goto_0
    return v6

    .restart local v0       #h1:F
    .restart local v1       #h2:F
    :cond_0
    move v6, p3

    .line 422
    goto :goto_0

    .line 426
    :cond_1
    cmpl-float v6, v0, v1

    if-lez v6, :cond_2

    move v6, p2

    .line 427
    goto :goto_0

    :cond_2
    move v6, p3

    .line 429
    goto :goto_0

    .line 438
    .end local v0           #h1:F
    .end local v1           #h2:F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 439
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 441
    .local v5, textdir:I
    if-ne v5, p1, :cond_4

    .line 442
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 444
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 308
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 309
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 311
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_1

    .line 314
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 316
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 317
    .local v1, h:F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 322
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 329
    .end local v3           #move:I
    :goto_1
    return v4

    .line 319
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 324
    .end local v3           #move:I
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 325
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 326
    goto :goto_1

    :cond_2
    move v4, v6

    .line 329
    goto :goto_1
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 337
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 338
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 340
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 341
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 345
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 353
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 354
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 356
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 357
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 361
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .parameter "text"
    .parameter "index"

    .prologue
    .line 122
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 123
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 124
    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 365
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 366
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 367
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 371
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 372
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 373
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 279
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 280
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 282
    .local v2, line:I
    if-lez v2, :cond_1

    .line 285
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    sub-int v5, v2, v6

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 287
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 288
    .local v1, h:F
    sub-int v4, v2, v6

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 293
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 300
    .end local v3           #move:I
    :goto_1
    return v4

    .line 290
    :cond_0
    sub-int v4, v2, v6

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 295
    .end local v3           #move:I
    :cond_1
    if-eqz v0, :cond_2

    .line 296
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 297
    goto :goto_1

    :cond_2
    move v4, v6

    .line 300
    goto :goto_1
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 6
    .parameter "text"
    .parameter "layout"
    .parameter "dir"

    .prologue
    const/4 v5, 0x1

    .line 389
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 390
    .local v3, pt:I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 391
    .local v1, line:I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 393
    .local v2, pdir:I
    mul-int v4, p2, v2

    if-gez v4, :cond_0

    .line 394
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 401
    :goto_0
    return v4

    .line 396
    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 398
    .local v0, end:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    move v4, v0

    .line 399
    goto :goto_0

    .line 401
    :cond_1
    sub-int v4, v0, v5

    goto :goto_0
.end method

.method public static getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;
    .locals 3
    .parameter "text"
    .parameter "pos"

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    new-instance p1, Landroid/text/Layout$CursorPosition;

    .end local p1
    invoke-direct {p1}, Landroid/text/Layout$CursorPosition;-><init>()V

    .line 487
    .restart local p1
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 489
    .local v1, trailing:I
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 490
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v2, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 495
    .local v0, lead:I
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/text/Layout$CursorPosition;->setAbsPositions(II)V

    .line 497
    return-object p1

    .line 492
    .end local v0           #lead:I
    .restart local p0
    :cond_1
    move v0, v1

    .restart local v0       #lead:I
    goto :goto_0
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 58
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 61
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 47
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 50
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 185
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 186
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 188
    .local v0, end:I
    if-eq v6, v0, :cond_1

    .line 189
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 190
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 192
    .local v3, max:I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 194
    if-nez v4, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ne v3, v7, :cond_0

    move v7, v8

    .line 218
    .end local v3           #max:I
    .end local v4           #min:I
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_0
    move v7, v9

    .line 198
    goto :goto_0

    .line 200
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 202
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v2, v7, :cond_3

    .line 205
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 207
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 208
    .local v1, h:F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 213
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v9

    .line 214
    goto :goto_0

    .line 210
    .end local v5           #move:I
    :cond_2
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1

    .end local v5           #move:I
    :cond_3
    move v7, v8

    .line 218
    goto :goto_0
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v4, 0x1

    .line 227
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 228
    .local v2, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 230
    .local v0, end:I
    if-eq v2, v0, :cond_0

    .line 231
    const/4 v3, -0x1

    invoke-static {p1, v3, v2, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 244
    :goto_0
    return v3

    .line 235
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/text/Selection;->getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;

    move-result-object v1

    .line 236
    .local v1, pos:Landroid/text/Layout$CursorPosition;
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 238
    invoke-static {p0, v1}, Landroid/text/Selection;->setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V

    .line 239
    invoke-virtual {v1}, Landroid/text/Layout$CursorPosition;->getLogicalIndex()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v3, v4

    .line 240
    goto :goto_0

    .line 244
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v4, 0x1

    .line 254
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 255
    .local v2, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 257
    .local v0, end:I
    if-eq v2, v0, :cond_0

    .line 258
    invoke-static {p1, v4, v2, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 271
    :goto_0
    return v3

    .line 262
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/text/Selection;->getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;

    move-result-object v1

    .line 263
    .local v1, pos:Landroid/text/Layout$CursorPosition;
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 265
    invoke-static {p0, v1}, Landroid/text/Selection;->setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V

    .line 266
    invoke-virtual {v1}, Landroid/text/Layout$CursorPosition;->getLogicalIndex()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v3, v4

    .line 267
    goto :goto_0

    .line 271
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 377
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 378
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 379
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 383
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 384
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 385
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 144
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 145
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 147
    .local v0, end:I
    if-eq v6, v0, :cond_1

    .line 148
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 149
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 151
    .local v3, max:I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 153
    if-nez v4, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ne v3, v7, :cond_0

    move v7, v8

    .line 177
    .end local v3           #max:I
    .end local v4           #min:I
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_0
    move v7, v9

    .line 157
    goto :goto_0

    .line 159
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 161
    .local v2, line:I
    if-lez v2, :cond_3

    .line 164
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    sub-int v8, v2, v9

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 166
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 167
    .local v1, h:F
    sub-int v7, v2, v9

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 172
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v9

    .line 173
    goto :goto_0

    .line 169
    .end local v5           #move:I
    :cond_2
    sub-int v7, v2, v9

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1

    .end local v5           #move:I
    :cond_3
    move v7, v8

    .line 177
    goto :goto_0
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 130
    sget-object v0, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 131
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 132
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p0, v1, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 116
    return-void
.end method

.method public static setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "text"
    .parameter "pos"

    .prologue
    .line 508
    invoke-virtual {p1}, Landroid/text/Layout$CursorPosition;->getTrailingAbsPos()I

    move-result v0

    .line 509
    .local v0, trail:I
    invoke-virtual {p1}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    invoke-static {p0, v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 510
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .parameter "text"
    .parameter "index"

    .prologue
    .line 108
    invoke-static {p0, p1, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 109
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 77
    invoke-static {p0, p1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 78
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;III)V
    .locals 5
    .parameter "text"
    .parameter "leading"
    .parameter "start"
    .parameter "stop"

    .prologue
    const/16 v4, 0x222

    .line 90
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 91
    .local v2, ostart:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 92
    .local v0, oend:I
    sget-object v3, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 94
    .local v1, olead:I
    if-ne v1, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-eq v0, p3, :cond_1

    .line 95
    :cond_0
    sget-object v3, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v3, p1, p1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 97
    sget-object v3, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v3, p2, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 99
    sget-object v3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v4, 0x22

    invoke-interface {p0, v3, p3, p3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 102
    :cond_1
    return-void
.end method
