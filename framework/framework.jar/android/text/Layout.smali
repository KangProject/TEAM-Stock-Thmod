.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$1;,
        Landroid/text/Layout$SpanList;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$CursorPosition;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_SPACING_ADD:F = 0.0f

.field private static final DEFAULT_SPACING_MULT:F = 1.0f

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field static sBlockLayoutDesired:Landroid/graphics/BlockLayout;

.field private static final sBlockLayoutFlags:I

.field static sBlockTextDesired:Landroid/graphics/Text;

.field static sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

.field private static final sHasThaiDict:Z

.field static sSpanList:Landroid/text/Layout$SpanList;

.field static sWorkPaintDesired:Landroid/text/TextPaint;


# instance fields
.field choosehtv:[I

.field mAlignment:Landroid/text/Layout$Alignment;

.field mBlockLayout:Landroid/graphics/BlockLayout;

.field mBlockText:Landroid/graphics/Text;

.field mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

.field mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

.field mDynamicAlignment:Z

.field mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mIncludepad:Z

.field private mLastUsedPaint:Landroid/text/TextPaint;

.field private mLastUsedSource:Ljava/lang/CharSequence;

.field private mLeadingMargintArray:[I

.field private mLm:Landroid/graphics/Paint$FontMetricsInt;

.field private mLmh:Landroid/graphics/Paint$FontMetricsInt;

.field mPaint:Landroid/text/TextPaint;

.field mRange:Landroid/graphics/Text$TextRange;

.field private mSm:Landroid/graphics/Paint$FontMetricsInt;

.field private mSmh:Landroid/graphics/Paint$FontMetricsInt;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpanList:Landroid/text/Layout$SpanList;

.field private mSpannedText:Z

.field private mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mTempRect:Landroid/graphics/Rect;

.field mText:Ljava/lang/CharSequence;

.field private mTmpCursorPos:Landroid/text/Layout$CursorPosition;

.field mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 60
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 65
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 67
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 74
    :goto_0
    invoke-static {}, Landroid/graphics/BlockLayout;->hasThaiDict()Z

    move-result v0

    sput-boolean v0, Landroid/text/Layout;->sHasThaiDict:Z

    .line 76
    sget-boolean v0, Landroid/text/Layout;->sHasThaiDict:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    sput v0, Landroid/text/Layout;->sBlockLayoutFlags:I

    .line 116
    new-instance v0, Landroid/graphics/Text;

    invoke-direct {v0}, Landroid/graphics/Text;-><init>()V

    sput-object v0, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    .line 119
    new-instance v0, Landroid/graphics/BlockLayout;

    sget-object v1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-direct {v0, v1}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;)V

    sput-object v0, Landroid/text/Layout;->sBlockLayoutDesired:Landroid/graphics/BlockLayout;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/Layout;->sWorkPaintDesired:Landroid/text/TextPaint;

    .line 125
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    sput-object v0, Landroid/text/Layout;->sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

    .line 128
    new-instance v0, Landroid/text/Layout$SpanList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/Layout$SpanList;-><init>(Landroid/text/Layout$1;)V

    sput-object v0, Landroid/text/Layout;->sSpanList:Landroid/text/Layout$SpanList;

    .line 2141
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [S

    const/16 v2, 0x7fff

    aput-short v2, v1, v3

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2145
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 69
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 70
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    :cond_1
    move v0, v3

    .line 76
    goto :goto_1

    .line 2145
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0xfft 0x7ft
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 11
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 251
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 252
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "dynamicAlignment"

    .prologue
    .line 262
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 263
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V
    .locals 10
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "dynamicAlignment"

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 604
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    .line 605
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    .line 606
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    .line 607
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    .line 608
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->choosehtv:[I

    .line 2105
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2137
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/text/Layout;->mDynamicAlignment:Z

    .line 274
    if-gez p3, :cond_0

    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 279
    move/from16 v0, p7

    move-object v1, p0

    iput-boolean v0, v1, Landroid/text/Layout;->mIncludepad:Z

    .line 280
    if-nez p8, :cond_1

    move v2, p3

    :goto_0
    iput v2, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    .line 281
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p10

    .line 283
    invoke-virtual/range {v2 .. v9}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 284
    return-void

    :cond_1
    move/from16 v2, p9

    .line 280
    goto :goto_0
.end method

.method static synthetic access$100(Landroid/text/Layout;III[CI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private applyLineHeight(IILandroid/graphics/Text;Landroid/text/TextPaint;)V
    .locals 29
    .parameter "start"
    .parameter "end"
    .parameter "blockText"
    .parameter "paint"

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 711
    :cond_0
    return-void

    .line 617
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    check-cast v6, Landroid/text/Spanned;

    .line 619
    .local v6, spanned:Landroid/text/Spanned;
    const/16 v28, 0x0

    .line 621
    .local v28, vDiff:I
    if-eqz v6, :cond_0

    .line 622
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v7, v0

    move-object v0, v6

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;

    move-result-object v20

    .line 624
    .local v20, lineHeightSpans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v5, v0

    iget-object v5, v5, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-lez v5, :cond_5

    const/4 v5, 0x1

    move/from16 v27, v5

    .line 626
    .local v27, usesLineHeightSpans:Z
    :goto_0
    if-eqz v27, :cond_0

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 630
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    .line 631
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    .line 632
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    .line 633
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    .line 637
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v14

    .line 638
    .local v14, firstParagraph:I
    const/4 v5, 0x1

    sub-int v5, p2, v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v17

    .line 639
    .local v17, lastParagraph:I
    move/from16 v25, v14

    .local v25, paragraph:I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    move-object/from16 v26, v0

    .line 643
    .local v26, textRange:Landroid/graphics/Text$TextRange;
    move-object/from16 v0, p3

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 644
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v24, v0

    .line 645
    .local v24, paraStart:I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move v5, v0

    add-int v23, v24, v5

    .line 646
    .local v23, paraEnd:I
    const/4 v12, 0x0

    .line 648
    .local v12, chooseht:[Ljava/lang/Object;
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v7, v0

    move-object v0, v6

    move/from16 v1, v24

    move/from16 v2, v23

    move-object v3, v5

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;

    move-result-object v12

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v5, v0

    iget-object v5, v5, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-lez v5, :cond_7

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v7, v0

    iget-object v7, v7, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    if-ge v5, v7, :cond_4

    .line 653
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v5, v0

    iget-object v5, v5, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->choosehtv:[I

    .line 657
    :cond_4
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v5, v0

    iget-object v5, v5, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v8, 0x0

    aget v5, v5, v8

    if-ge v7, v5, :cond_7

    .line 658
    aget-object v5, v12, v7

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 659
    .local v22, o:I
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    aput v8, v5, v7

    .line 657
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 624
    .end local v7           #i:I
    .end local v12           #chooseht:[Ljava/lang/Object;
    .end local v14           #firstParagraph:I
    .end local v17           #lastParagraph:I
    .end local v22           #o:I
    .end local v23           #paraEnd:I
    .end local v24           #paraStart:I
    .end local v25           #paragraph:I
    .end local v26           #textRange:Landroid/graphics/Text$TextRange;
    .end local v27           #usesLineHeightSpans:Z
    :cond_5
    const/4 v5, 0x0

    move/from16 v27, v5

    goto/16 :goto_0

    .line 665
    .restart local v7       #i:I
    .restart local v12       #chooseht:[Ljava/lang/Object;
    .restart local v14       #firstParagraph:I
    .restart local v17       #lastParagraph:I
    .restart local v22       #o:I
    .restart local v23       #paraEnd:I
    .restart local v24       #paraStart:I
    .restart local v25       #paragraph:I
    .restart local v26       #textRange:Landroid/graphics/Text$TextRange;
    .restart local v27       #usesLineHeightSpans:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int v8, v8, v28

    aput v8, v5, v7

    goto :goto_3

    .line 671
    .end local v7           #i:I
    .end local v22           #o:I
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 672
    .local v13, firstLine:I
    const/4 v5, 0x1

    sub-int v5, v23, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v16

    .line 673
    .local v16, lastLine:I
    move/from16 v18, v13

    .local v18, line:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_b

    .line 674
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v21

    .line 675
    .local v21, lineStart:I
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v19

    .line 677
    .local v19, lineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/Layout;->zeroizeFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/Layout;->zeroizeFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 681
    move/from16 v7, v21

    .restart local v7       #i:I
    :goto_5
    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 682
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v6

    move v1, v7

    move/from16 v2, v19

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    .line 686
    .local v8, next:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v7

    move-object v3, v5

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getPaintAndMetrics(Landroid/graphics/Text;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->updateLineMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->copyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 691
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v9, v0

    invoke-static {v6, v7, v8, v5, v9}, Landroid/text/Layout;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;

    move-result-object v20

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v5, v0

    iget-object v5, v5, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v9, 0x0

    aget v5, v5, v9

    if-lez v5, :cond_9

    .line 693
    const/4 v15, 0x0

    .local v15, l:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v5, v0

    iget-object v5, v5, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v9, 0x0

    aget v5, v5, v9

    if-ge v15, v5, :cond_8

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    aget v9, v5, v15

    .line 698
    .local v9, spanstartv:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int v10, v5, v28

    .line 699
    .local v10, v:I
    aget-object v5, v20, v15

    check-cast v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    .line 693
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 702
    .end local v9           #spanstartv:I
    .end local v10           #v:I
    :cond_8
    sub-int v5, v8, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v10, v0

    move-object/from16 v0, p3

    move v1, v7

    move v2, v5

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 704
    .end local v15           #l:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v7, v0

    .end local v7           #i:I
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->updateLineMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 681
    move v7, v8

    .restart local v7       #i:I
    goto/16 :goto_5

    .line 706
    .end local v8           #next:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v7, v0

    .end local v7           #i:I
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->metricsDiff(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;I)I

    move-result v5

    add-int v28, v28, v5

    .line 673
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 639
    .end local v19           #lineEnd:I
    .end local v21           #lineStart:I
    :cond_b
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1
.end method

.method private applyLineSpacing(IILandroid/graphics/Text;Landroid/text/TextPaint;)V
    .locals 9
    .parameter "start"
    .parameter "end"
    .parameter "blockText"
    .parameter "paint"

    .prologue
    const/high16 v8, 0x3f80

    .line 716
    iget v5, p0, Landroid/text/Layout;->mSpacingMult:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    iget v5, p0, Landroid/text/Layout;->mSpacingAdd:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 718
    :cond_0
    iget-object v2, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 720
    .local v2, range:Landroid/graphics/Text$TextRange;
    iget-object v0, p0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 724
    .local v0, fmi:Landroid/graphics/Paint$FontMetricsInt;
    :cond_1
    invoke-virtual {p3, p1, p4, v2, v0}, Landroid/graphics/Text;->getPaint(ILandroid/text/TextPaint;Landroid/graphics/Text$TextRange;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 725
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    iget v6, v2, Landroid/graphics/Text$TextRange;->count:I

    add-int v3, v5, v6

    .line 727
    .local v3, rangeEnd:I
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, v5, v6

    .line 729
    .local v1, lineHeight:I
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v5, v5

    int-to-float v6, v1

    iget v7, p0, Landroid/text/Layout;->mSpacingMult:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 730
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v5, v5

    iget v6, p0, Landroid/text/Layout;->mSpacingAdd:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 731
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v5, v5

    int-to-float v6, v1

    iget v7, p0, Landroid/text/Layout;->mSpacingMult:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 732
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Landroid/text/Layout;->mSpacingAdd:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 735
    if-ge v3, p2, :cond_3

    move v5, v3

    :goto_0
    iget v6, v2, Landroid/graphics/Text$TextRange;->index:I

    sub-int v4, v5, v6

    .line 736
    .local v4, updateCount:I
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    invoke-virtual {p3, v5, v4, p4, v0}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 737
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    iget v6, v2, Landroid/graphics/Text$TextRange;->count:I

    add-int p1, v5, v6

    .line 738
    if-lt p1, p2, :cond_1

    .line 740
    .end local v0           #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .end local v1           #lineHeight:I
    .end local v2           #range:Landroid/graphics/Text$TextRange;
    .end local v3           #rangeEnd:I
    .end local v4           #updateCount:I
    :cond_2
    return-void

    .restart local v0       #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v1       #lineHeight:I
    .restart local v2       #range:Landroid/graphics/Text$TextRange;
    .restart local v3       #rangeEnd:I
    :cond_3
    move v5, p2

    .line 735
    goto :goto_0
.end method

.method private applyParagraph(IILandroid/graphics/Text;Landroid/graphics/BlockLayout;Landroid/text/TextPaint;)V
    .locals 32
    .parameter "start"
    .parameter "end"
    .parameter "blockText"
    .parameter "blockLayout"
    .parameter "paint"

    .prologue
    .line 427
    const/16 v25, 0x14

    .line 428
    .local v25, tabStop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v26

    .line 431
    .local v26, textLength:I
    sub-int v28, p2, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mDynamicAlignment:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v28

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->setAlignment(IILandroid/text/Layout$Alignment;Z)V

    .line 433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v28, v0

    if-eqz v28, :cond_12

    .line 434
    const/16 v24, 0x0

    .line 435
    .local v24, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    move-object/from16 v18, v0

    .line 436
    .local v18, paragraphRange:Landroid/graphics/Text$TextRange;
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v9

    .line 437
    .local v9, firstParagraph:I
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v11

    .line 438
    .local v11, lastParagraph:I
    const/16 v22, 0x0

    .line 439
    .local v22, spanend:I
    const/16 v21, 0x0

    .line 441
    .local v21, spanCount:I
    move/from16 v16, v9

    .local v16, paragraph:I
    :goto_0
    move/from16 v0, v16

    move v1, v11

    if-gt v0, v1, :cond_12

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object v5, v0

    .line 443
    .local v5, alignment:Landroid/text/Layout$Alignment;
    const/4 v8, 0x0

    .line 444
    .local v8, firstLineIntent:I
    const/16 v17, 0x0

    .line 445
    .local v17, paragraphIndent:I
    const/4 v12, 0x0

    .line 446
    .local v12, leadingMargin:I
    const/4 v15, 0x0

    .line 448
    .local v15, maxLeadingMarginCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 449
    const/16 v28, 0xa

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLeadingMargintArray:[I

    .line 452
    :cond_0
    const/4 v14, 0x0

    .local v14, line:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move v0, v14

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput v29, v28, v14

    .line 452
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 456
    :cond_1
    move-object/from16 v0, p3

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    check-cast v23, Landroid/text/Spanned;

    .line 460
    .local v23, spanned:Landroid/text/Spanned;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 461
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    const-class v29, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v26

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v22

    .line 464
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    const-class v29, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v22

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;

    move-result-object v24

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/text/Layout$SpanList;->mCount:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v21, v28, v29

    .line 470
    :cond_2
    if-lez v21, :cond_9

    .line 471
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move v0, v10

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 472
    aget-object v19, v24, v10

    .line 474
    .local v19, paragraphStyle:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/style/AlignmentSpan;

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 475
    move-object/from16 v0, v19

    check-cast v0, Landroid/text/style/AlignmentSpan;

    move-object/from16 v20, v0

    .line 476
    .local v20, span:Landroid/text/style/AlignmentSpan;
    invoke-interface/range {v20 .. v20}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 471
    .end local v19           #paragraphStyle:Ljava/lang/Object;
    .end local v20           #span:Landroid/text/style/AlignmentSpan;
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 477
    .restart local v19       #paragraphStyle:Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/style/TabStopSpan;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 478
    check-cast v19, Landroid/text/style/TabStopSpan;

    .end local v19           #paragraphStyle:Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v25

    goto :goto_3

    .line 479
    .restart local v19       #paragraphStyle:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 480
    move-object/from16 v0, v19

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object v13, v0

    .line 481
    .local v13, leadingMarginSpan:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface {v13}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v6

    .line 482
    .local v6, count:I
    const/16 v28, 0x1

    move-object v0, v13

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMargin(Z)I

    move-result v12

    .line 483
    const/16 v28, 0x0

    move-object v0, v13

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMargin(Z)I

    move-result v28

    add-int v17, v17, v28

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move v0, v6

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 485
    add-int/lit8 v28, v6, 0xa

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 486
    .local v27, tmpArray:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v27

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLeadingMargintArray:[I

    .line 489
    .end local v27           #tmpArray:[I
    :cond_6
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v6, :cond_7

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v28, v0

    aget v29, v28, v14

    add-int v29, v29, v12

    aput v29, v28, v14

    .line 489
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 492
    :cond_7
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 493
    goto/16 :goto_3

    .end local v6           #count:I
    .end local v13           #leadingMarginSpan:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_8
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 494
    move-object/from16 v0, v19

    check-cast v0, Landroid/text/style/LeadingMarginSpan;

    move-object v13, v0

    .line 495
    .local v13, leadingMarginSpan:Landroid/text/style/LeadingMarginSpan;
    const/16 v28, 0x1

    move-object v0, v13

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v28

    add-int v8, v8, v28

    .line 496
    const/16 v28, 0x0

    move-object v0, v13

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v28

    add-int v17, v17, v28

    goto/16 :goto_3

    .line 504
    .end local v10           #i:I
    .end local v13           #leadingMarginSpan:Landroid/text/style/LeadingMarginSpan;
    .end local v19           #paragraphStyle:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraphDirection(I)I

    move-result v7

    .line 508
    .local v7, direction:I
    if-nez v7, :cond_a

    .line 509
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getAlignment(ILandroid/graphics/Text$TextRange;)I

    move-result v28

    packed-switch v28, :pswitch_data_0

    .line 526
    :cond_a
    :goto_5
    const/16 v28, 0x1

    move v0, v7

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 527
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v0, v5

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mDynamicAlignment:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 528
    :cond_b
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_6
    if-ge v10, v15, :cond_c

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v28, v0

    aget v29, v28, v10

    sub-int v29, v29, v17

    aput v29, v28, v10

    .line 528
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 515
    .end local v10           #i:I
    :pswitch_0
    const/4 v7, 0x1

    .line 516
    goto :goto_5

    .line 519
    :pswitch_1
    const/4 v7, -0x1

    .line 520
    goto :goto_5

    .line 531
    .restart local v10       #i:I
    :cond_c
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->setIndent(II[II)V

    .line 533
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v29, v0

    sub-int v30, v8, v17

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Text;->setIndent(III)V

    .line 536
    .end local v10           #i:I
    :cond_d
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Text;->setLeftIndent(III)V

    .line 552
    :goto_7
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mDynamicAlignment:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move-object v3, v5

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->setAlignment(IILandroid/text/Layout$Alignment;Z)V

    .line 441
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 539
    :cond_e
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object v0, v5

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mDynamicAlignment:Z

    move/from16 v28, v0

    if-eqz v28, :cond_11

    .line 540
    :cond_f
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_8
    if-ge v10, v15, :cond_10

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v28, v0

    aget v29, v28, v10

    sub-int v29, v29, v17

    aput v29, v28, v10

    .line 540
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 543
    :cond_10
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->setIndent(II[II)V

    .line 545
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v29, v0

    sub-int v30, v8, v17

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Text;->setIndent(III)V

    .line 548
    .end local v10           #i:I
    :cond_11
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v28, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v29, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Text;->setRightIndent(III)V

    goto/16 :goto_7

    .line 558
    .end local v5           #alignment:Landroid/text/Layout$Alignment;
    .end local v7           #direction:I
    .end local v8           #firstLineIntent:I
    .end local v9           #firstParagraph:I
    .end local v11           #lastParagraph:I
    .end local v12           #leadingMargin:I
    .end local v14           #line:I
    .end local v15           #maxLeadingMarginCount:I
    .end local v16           #paragraph:I
    .end local v17           #paragraphIndent:I
    .end local v18           #paragraphRange:Landroid/graphics/Text$TextRange;
    .end local v21           #spanCount:I
    .end local v22           #spanend:I
    .end local v23           #spanned:Landroid/text/Spanned;
    .end local v24           #spans:[Ljava/lang/Object;
    :cond_12
    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/BlockLayout;->setTabStop(I)V

    .line 559
    return-void

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private compose(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 360
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;I)V

    .line 361
    return-void
.end method

.method private compose(Landroid/text/TextPaint;I)V
    .locals 2
    .parameter "paint"
    .parameter "width"

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;II)I

    .line 367
    :cond_0
    return-void
.end method

.method private copyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .parameter "d"
    .parameter "s"

    .prologue
    .line 579
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 580
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 581
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 582
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 583
    return-void
.end method

.method private static decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/Layout$SpanList;)V
    .locals 9
    .parameter "start"
    .parameter "end"
    .parameter "text"
    .parameter "blockText"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "workFontMetrics"
    .parameter "spanList"

    .prologue
    .line 308
    instance-of v2, p2, Landroid/text/Spanned;

    if-nez v2, :cond_1

    .line 309
    sub-int v2, p1, p0

    invoke-virtual {p3, p0, v2, p4}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 320
    :cond_0
    return-void

    .line 313
    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    move-object v1, v0

    .line 315
    .local v1, sp:Landroid/text/Spanned;
    move v3, p0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 316
    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v3, p1, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .local v4, next:I
    move-object v2, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 317
    invoke-static/range {v1 .. v8}, Landroid/text/Layout;->each(Landroid/text/Spanned;Landroid/graphics/Text;IILandroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/Layout$SpanList;)V

    .line 315
    move v3, v4

    goto :goto_0
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/text/TextPaint;II)V
    .locals 23
    .parameter "canvas"
    .parameter "paint"
    .parameter "workpaint"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 923
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v18

    .line 924
    .local v18, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v13, v0

    check-cast v13, Landroid/text/Spanned;

    .line 925
    .local v13, spanned:Landroid/text/Spanned;
    const/16 v19, 0x0

    .line 926
    .local v19, spanCount:I
    const/16 v21, 0x0

    .line 927
    .local v21, spans:[Ljava/lang/Object;
    const/16 v20, 0x0

    .line 928
    .local v20, spanend:I
    invoke-interface {v13}, Landroid/text/Spanned;->length()I

    move-result v22

    .line 931
    .local v22, textLength:I
    move/from16 v16, p4

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p5

    if-gt v0, v1, :cond_2

    .line 932
    move/from16 v14, v18

    .line 933
    .local v14, start:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 934
    .local v15, end:I
    move/from16 v18, v15

    .line 936
    move v0, v14

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 937
    const-class v6, Landroid/text/style/LineBackgroundSpan;

    move-object v0, v13

    move v1, v14

    move/from16 v2, v22

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v20

    .line 939
    const-class v6, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v7, v0

    move-object v0, v13

    move v1, v14

    move/from16 v2, v20

    move-object v3, v6

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;

    move-result-object v21

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v6, v0

    iget-object v6, v6, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v7, 0x0

    aget v19, v6, v7

    .line 943
    :cond_0
    if-lez v19, :cond_1

    .line 944
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 945
    .local v10, ltop:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    .line 946
    .local v12, lbottom:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    .line 948
    .local v11, lbaseline:I
    const/16 v17, 0x0

    .local v17, n:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 949
    aget-object v5, v21, v17

    check-cast v5, Landroid/text/style/LineBackgroundSpan;

    .line 951
    .local v5, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v9, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-interface/range {v5 .. v16}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 948
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 931
    .end local v5           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v10           #ltop:I
    .end local v11           #lbaseline:I
    .end local v12           #lbottom:I
    .end local v17           #n:I
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 956
    .end local v14           #start:I
    .end local v15           #end:I
    :cond_2
    return-void
.end method

.method private drawMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 38
    .parameter "canvas"
    .parameter "paint"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v13, v0

    check-cast v13, Landroid/text/Spanned;

    .line 969
    .local v13, spanned:Landroid/text/Spanned;
    const/16 v36, 0x0

    .line 970
    .local v36, spans:[Ljava/lang/Object;
    const/16 v35, 0x0

    .line 971
    .local v35, spanend:I
    const/16 v34, 0x0

    .line 972
    .local v34, spanCount:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v33

    .line 973
    .local v33, prevLineEnd:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    .line 974
    .local v32, prevLineBottom:I
    invoke-interface {v13}, Landroid/text/Spanned;->length()I

    move-result v37

    .line 977
    .local v37, textLength:I
    move/from16 v30, p3

    .local v30, line:I
    :goto_0
    move/from16 v0, v30

    move/from16 v1, p4

    if-gt v0, v1, :cond_5

    .line 978
    move/from16 v14, v33

    .line 979
    .local v14, start:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 980
    .local v15, end:I
    move/from16 v33, v15

    .line 982
    move/from16 v10, v32

    .line 983
    .local v10, ltop:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    .line 984
    .local v12, lbottom:I
    move/from16 v32, v12

    .line 986
    move v0, v14

    move/from16 v1, v35

    if-lt v0, v1, :cond_0

    .line 987
    const-class v6, Landroid/text/style/LeadingMarginSpan;

    move-object v0, v13

    move v1, v14

    move/from16 v2, v37

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v35

    .line 989
    const-class v6, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v7, v0

    move-object v0, v13

    move v1, v14

    move/from16 v2, v35

    move-object v3, v6

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;

    move-result-object v36

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v6, v0

    iget-object v6, v6, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v7, 0x0

    aget v34, v6, v7

    .line 993
    :cond_0
    if-lez v34, :cond_4

    .line 994
    const/16 v20, 0x0

    .line 995
    .local v20, paragrapghLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    .line 998
    .local v8, paragraphRight:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    .line 999
    .local v11, lbaseline:I
    const/16 v16, 0x0

    .line 1000
    .local v16, par:Z
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    .line 1002
    .local v9, dir:I
    if-eqz v14, :cond_1

    const/4 v6, 0x1

    sub-int v6, v14, v6

    invoke-interface {v13, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    .line 1003
    :cond_1
    const/16 v16, 0x1

    .line 1006
    :cond_2
    const/16 v31, 0x0

    .local v31, n:I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    .line 1007
    aget-object v5, v36, v31

    check-cast v5, Landroid/text/style/LeadingMarginSpan;

    .line 1009
    .local v5, margin:Landroid/text/style/LeadingMarginSpan;
    const/4 v6, -0x1

    if-ne v9, v6, :cond_3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v17, p0

    .line 1010
    invoke-interface/range {v5 .. v17}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 1012
    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int/2addr v8, v6

    .line 1006
    :goto_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v17, v5

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    move/from16 v28, v16

    move-object/from16 v29, p0

    .line 1014
    invoke-interface/range {v17 .. v29}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 1016
    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v20, v20, v6

    goto :goto_2

    .line 977
    .end local v5           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v8           #paragraphRight:I
    .end local v9           #dir:I
    .end local v11           #lbaseline:I
    .end local v16           #par:Z
    .end local v20           #paragrapghLeft:I
    .end local v31           #n:I
    :cond_4
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    .line 1021
    .end local v10           #ltop:I
    .end local v12           #lbottom:I
    .end local v14           #start:I
    .end local v15           #end:I
    :cond_5
    return-void
.end method

.method private drawReplacementspans(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;II)V
    .locals 25
    .parameter "canvas"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move-object v15, v0

    .line 1027
    .local v15, blockText:Landroid/graphics/Text;
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/graphics/Text;->getCharSubstitutionCount(Z)I

    move-result v6

    if-lez v6, :cond_3

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

    move-object/from16 v16, v0

    .line 1029
    .local v16, charSubstitution:Landroid/graphics/Text$CharSubstitution;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v7, v0

    check-cast v7, Landroid/text/Spanned;

    .line 1030
    .local v7, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 1031
    .local v20, prevLineBotton:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v21

    .line 1033
    .local v21, prevLineEnd:I
    if-nez v16, :cond_0

    .line 1034
    new-instance v16, Landroid/graphics/Text$CharSubstitution;

    .end local v16           #charSubstitution:Landroid/graphics/Text$CharSubstitution;
    invoke-direct/range {v16 .. v16}, Landroid/graphics/Text$CharSubstitution;-><init>()V

    .line 1035
    .restart local v16       #charSubstitution:Landroid/graphics/Text$CharSubstitution;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

    .line 1038
    :cond_0
    move/from16 v19, p4

    .local v19, line:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p5

    if-gt v0, v1, :cond_3

    .line 1039
    move/from16 v8, v21

    .line 1040
    .local v8, start:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v9

    .line 1041
    .local v9, end:I
    move/from16 v21, v9

    .line 1044
    const-class v6, Landroid/text/style/ReplacementSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v10, v0

    invoke-static {v7, v8, v9, v6, v10}, Landroid/text/Layout;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;

    move-result-object v24

    .line 1046
    .local v24, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v6, v0

    iget-object v6, v6, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v10, 0x0

    aget v22, v6, v10

    .line 1048
    .local v22, spanCount:I
    move/from16 v11, v20

    .line 1049
    .local v11, ltop:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    .line 1050
    .local v13, lbottom:I
    move/from16 v20, v13

    .line 1052
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v12

    .line 1054
    .local v12, lbaseline:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 1055
    aget-object v5, v24, v17

    check-cast v5, Landroid/text/style/ReplacementSpan;

    .line 1056
    .local v5, replacementSpan:Landroid/text/style/ReplacementSpan;
    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    .line 1065
    .local v23, spanStart:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move-object v6, v0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object v0, v6

    move/from16 v1, v23

    move-object/from16 v2, v16

    move-object v3, v10

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->getCharSubstitution(ILandroid/graphics/Text$CharSubstitution;Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Text$TextRange;)I

    move-result v18

    .line 1067
    .local v18, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BlockLayout;->getCharSubstitutionPosition(ILandroid/graphics/Text$CharSubstitution;)V

    .line 1069
    if-eqz v18, :cond_1

    .line 1070
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1071
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Text$CharSubstitution;->x:I

    move v6, v0

    int-to-float v10, v6

    move-object/from16 v6, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v5 .. v14}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    .end local v18           #id:I
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1038
    .end local v5           #replacementSpan:Landroid/text/style/ReplacementSpan;
    .end local v23           #spanStart:I
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 1080
    .end local v7           #spanned:Landroid/text/Spanned;
    .end local v8           #start:I
    .end local v9           #end:I
    .end local v11           #ltop:I
    .end local v12           #lbaseline:I
    .end local v13           #lbottom:I
    .end local v16           #charSubstitution:Landroid/graphics/Text$CharSubstitution;
    .end local v17           #i:I
    .end local v19           #line:I
    .end local v20           #prevLineBotton:I
    .end local v21           #prevLineEnd:I
    .end local v22           #spanCount:I
    .end local v24           #spans:[Ljava/lang/Object;
    :cond_3
    return-void

    .line 1074
    .restart local v5       #replacementSpan:Landroid/text/style/ReplacementSpan;
    .restart local v7       #spanned:Landroid/text/Spanned;
    .restart local v8       #start:I
    .restart local v9       #end:I
    .restart local v11       #ltop:I
    .restart local v12       #lbaseline:I
    .restart local v13       #lbottom:I
    .restart local v16       #charSubstitution:Landroid/graphics/Text$CharSubstitution;
    .restart local v17       #i:I
    .restart local v19       #line:I
    .restart local v20       #prevLineBotton:I
    .restart local v21       #prevLineEnd:I
    .restart local v22       #spanCount:I
    .restart local v23       #spanStart:I
    .restart local v24       #spans:[Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static each(Landroid/text/Spanned;Landroid/graphics/Text;IILandroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/Layout$SpanList;)V
    .locals 8
    .parameter "text"
    .parameter "blockText"
    .parameter "start"
    .parameter "end"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "workFm"
    .parameter "spanList"

    .prologue
    .line 325
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-static {p0, p2, p3, v1, p7}, Landroid/text/Layout;->getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;

    move-result-object v3

    .line 327
    .local v3, spans:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 328
    .local v1, replacementSpan:Landroid/text/style/ReplacementSpan;
    const/4 v2, 0x0

    iput v2, p4, Landroid/text/TextPaint;->bgColor:I

    .line 329
    const/4 v2, 0x0

    iput v2, p4, Landroid/text/TextPaint;->baselineShift:I

    .line 330
    invoke-virtual {p5, p4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 332
    iget-object p4, p7, Landroid/text/Layout$SpanList;->mCount:[I

    .end local p4
    const/4 v2, 0x0

    aget p4, p4, v2

    if-lez p4, :cond_2

    .line 333
    const/4 p4, 0x0

    .local p4, i:I
    :goto_0
    iget-object v2, p7, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    if-ge p4, v2, :cond_1

    .line 334
    aget-object v2, v3, p4

    check-cast v2, Landroid/text/style/CharacterStyle;

    .line 336
    .local v2, span:Landroid/text/style/CharacterStyle;
    instance-of v4, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_0

    .line 337
    move-object v0, v2

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v1, v0

    .line 333
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {v2, p5}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 343
    .end local v2           #span:Landroid/text/style/CharacterStyle;
    :cond_1
    if-eqz v1, :cond_2

    .line 345
    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p7

    .line 346
    .local p7, spanStart:I
    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p4

    .line 348
    .local p4, spanEnd:I
    sub-int v2, p4, p7

    if-lez v2, :cond_2

    move-object v2, p5

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p6

    .line 349
    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .end local v3           #spans:[Ljava/lang/Object;
    move-result v7

    .line 350
    .local v7, width:I
    sub-int v4, p4, p7

    const/16 v5, 0x2b

    move-object v2, p1

    move v3, p7

    move-object v6, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Text;->setCharSubstitution(IICLandroid/graphics/Paint$FontMetricsInt;I)I

    .line 356
    .end local v7           #width:I
    .end local p4           #spanEnd:I
    .end local p7           #spanStart:I
    :cond_2
    sub-int p0, p3, p2

    invoke-virtual {p1, p2, p0, p5}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 357
    .end local p0
    return-void
.end method

.method private ellipsize(III[CI)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 1769
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1771
    .local v2, ellipsisCount:I
    if-nez v2, :cond_1

    .line 1793
    :cond_0
    return-void

    .line 1775
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1776
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1778
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 1781
    if-ne v4, v3, :cond_3

    .line 1782
    const/16 v1, 0x2026

    .line 1787
    .local v1, c:C
    :goto_1
    add-int v0, v4, v5

    .line 1789
    .local v0, a:I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 1790
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1778
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1784
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_3
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 11
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, need:F
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    .line 140
    sget-object v10, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    monitor-enter v10

    .line 141
    move p1, p1

    .local p1, i:I
    move v8, v0

    .end local v0           #need:F
    .local v8, need:F
    :goto_0
    if-gt p1, p2, :cond_1

    .line 142
    const/16 v0, 0xa

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    .line 144
    .local v0, next:I
    if-gez v0, :cond_7

    .line 145
    move v0, p2

    move v9, v0

    .line 147
    .end local v0           #next:I
    .local v9, next:I
    :goto_1
    sget-object v0, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    sget-object v0, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    const/4 v1, 0x0

    sget-object v2, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v2}, Landroid/graphics/Text;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->removeText(II)V

    .line 151
    :cond_0
    invoke-interface {p0, p1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 152
    .local v2, subSeq:Ljava/lang/CharSequence;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .end local p1           #i:I
    if-lez p1, :cond_6

    .line 153
    sget-object p1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Text;->insertText(Ljava/lang/String;I)V

    .line 155
    sget-object p1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {p1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    .line 157
    .local v1, len:I
    const/4 v0, 0x0

    sget-object v3, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    sget-object v5, Landroid/text/Layout;->sWorkPaintDesired:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout;->sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

    sget-object v7, Landroid/text/Layout;->sSpanList:Landroid/text/Layout$SpanList;

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/Layout$SpanList;)V

    .line 161
    sget-object p1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Text;->setAlignment(III)V

    .line 163
    .end local v2           #subSeq:Ljava/lang/CharSequence;
    sget-object p1, Landroid/text/Layout;->sBlockLayoutDesired:Landroid/graphics/BlockLayout;

    const/16 v0, 0x7fff

    invoke-virtual {p1, p3, v0}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;I)I

    move-result p1

    .line 166
    .local p1, advanceWidth:I
    int-to-float v0, p1

    cmpl-float v0, v0, v8

    if-lez v0, :cond_6

    .line 167
    int-to-float p1, p1

    .end local v8           #need:F
    .local p1, need:F
    move v0, p1

    .line 171
    .end local v1           #len:I
    .end local p1           #need:F
    .local v0, need:F
    :goto_2
    add-int/lit8 p1, v9, 0x1

    .line 141
    .end local v9           #next:I
    .local p1, next:I
    move p1, p1

    .local p1, i:I
    move v8, v0

    .end local v0           #need:F
    .restart local v8       #need:F
    goto :goto_0

    .line 173
    :cond_1
    monitor-exit v10

    move p0, v8

    .line 191
    .end local v8           #need:F
    .local p0, need:F
    :goto_3
    return p0

    .line 173
    .end local p0           #need:F
    .end local p1           #i:I
    .restart local v8       #need:F
    :catchall_0
    move-exception p0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 176
    .end local v8           #need:F
    .restart local v0       #need:F
    .local p0, source:Ljava/lang/CharSequence;
    .local p1, start:I
    :cond_2
    move p1, p1

    .local p1, i:I
    :goto_4
    if-gt p1, p2, :cond_5

    .line 177
    const/16 v1, 0xa

    invoke-static {p0, v1, p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    .line 179
    .local v1, next:I
    if-gez v1, :cond_3

    .line 180
    move v1, p2

    .line 182
    :cond_3
    invoke-virtual {p3, p0, p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 184
    .local p1, w:F
    cmpl-float v2, p1, v0

    if-lez v2, :cond_4

    .line 185
    move p1, p1

    .end local v0           #need:F
    .local p1, need:F
    move v0, p1

    .line 187
    .end local p1           #need:F
    .restart local v0       #need:F
    :cond_4
    add-int/lit8 p1, v1, 0x1

    .line 176
    .end local v1           #next:I
    .local p1, next:I
    move p1, p1

    .local p1, i:I
    goto :goto_4

    :cond_5
    move p0, v0

    .end local v0           #need:F
    .local p0, need:F
    goto :goto_3

    .end local p1           #i:I
    .restart local v8       #need:F
    .restart local v9       #next:I
    .local p0, source:Ljava/lang/CharSequence;
    :cond_6
    move v0, v8

    .end local v8           #need:F
    .restart local v0       #need:F
    goto :goto_2

    .end local v9           #next:I
    .local v0, next:I
    .restart local v8       #need:F
    .restart local p1       #i:I
    :cond_7
    move v9, v0

    .end local v0           #next:I
    .restart local v9       #next:I
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getLineMax(I[Ljava/lang/Object;Z)F
    .locals 5
    .parameter "line"
    .parameter "tabs"
    .parameter "full"

    .prologue
    .line 1340
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1343
    .local v1, start:I
    if-eqz p3, :cond_1

    .line 1344
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 1348
    .local v0, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v2

    .line 1350
    .local v2, tab:Z
    if-nez p2, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 1351
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v3, v1, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 1354
    :cond_0
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-static {v3, v1, v0, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    return v3

    .line 1346
    .end local v0           #end:I
    .end local v2           #tab:Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 4
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 1461
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1464
    .local v1, text:Ljava/lang/CharSequence;
    :goto_0
    if-le p3, p2, :cond_1

    .line 1465
    sub-int v2, p3, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1467
    .local v0, ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 1468
    sub-int v2, p3, v3

    .line 1477
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 1471
    .restart local v0       #ch:C
    :cond_0
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    .end local v0           #ch:C
    :cond_1
    move v2, p3

    .line 1477
    goto :goto_1

    .line 1464
    .restart local v0       #ch:C
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method private getPaintAndMetrics(Landroid/graphics/Text;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .parameter "blockText"
    .parameter "start"
    .parameter "paint"
    .parameter "fm"

    .prologue
    .line 595
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Text;->getPaint(ILandroid/text/TextPaint;)V

    .line 596
    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 597
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 598
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 599
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 600
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 601
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 602
    return-void
.end method

.method private getPrimaryHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailingEdge"

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/graphics/BlockLayout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method private getSecondaryHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailingEdge"

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/graphics/BlockLayout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method private static getSpans(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Layout$SpanList;)[Ljava/lang/Object;
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter
    .parameter "spanList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/text/Layout$SpanList;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 2078
    .local p3, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 2081
    .local v7, spans:[Ljava/lang/Object;
    instance-of v1, p0, Landroid/text/GetSpans;

    if-eqz v1, :cond_0

    .line 2082
    move-object v0, p0

    check-cast v0, Landroid/text/GetSpans;

    move-object v1, v0

    iget-object v2, p4, Landroid/text/Layout$SpanList;->mSpanArray:[Ljava/lang/Object;

    iget-object v3, p4, Landroid/text/Layout$SpanList;->mCount:[I

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/GetSpans;->getSpans([Ljava/lang/Object;[IIILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p4, Landroid/text/Layout$SpanList;->mSpanArray:[Ljava/lang/Object;

    .line 2084
    iget-object v7, p4, Landroid/text/Layout$SpanList;->mSpanArray:[Ljava/lang/Object;

    .line 2090
    :goto_0
    return-object v7

    .line 2086
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 2087
    iget-object v1, p4, Landroid/text/Layout$SpanList;->mCount:[I

    const/4 v2, 0x0

    array-length v3, v7

    aput v3, v1, v2

    goto :goto_0
.end method

.method static isInBetweenSurrogatePair(Ljava/lang/CharSequence;II)Z
    .locals 2
    .parameter "s"
    .parameter "index"
    .parameter "len"

    .prologue
    const/4 v1, 0x1

    .line 2065
    if-ge p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 2067
    sub-int v0, p1, v1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2072
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private metricsDiff(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;I)I
    .locals 3
    .parameter "lm"
    .parameter "lmh"
    .parameter "line"

    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/text/Layout;->mIncludepad:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 571
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 574
    :goto_0
    return v0

    :cond_0
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private setAlignment(IILandroid/text/Layout$Alignment;Z)V
    .locals 3
    .parameter "index"
    .parameter "count"
    .parameter "alignment"
    .parameter "setDynamic"

    .prologue
    const/4 v2, 0x2

    .line 1990
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-nez v0, :cond_0

    .line 2016
    :goto_0
    return-void

    .line 1993
    :cond_0
    if-nez p3, :cond_1

    .line 1994
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0, p1, p2, v2}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 1997
    :cond_1
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1999
    :pswitch_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0, p1, p2, v2}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 2002
    :pswitch_1
    if-eqz p4, :cond_2

    .line 2003
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 2005
    :cond_2
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 2009
    :pswitch_2
    if-eqz p4, :cond_3

    .line 2010
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 2012
    :cond_3
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 1997
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateLineMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .parameter "lineMetrics"
    .parameter "fm"

    .prologue
    .line 587
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 588
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 589
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 590
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 591
    return-void
.end method

.method private zeroizeFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .parameter "fm"

    .prologue
    const/4 v0, 0x0

    .line 562
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 563
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 564
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 565
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 566
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 846
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 21
    .parameter "canvas"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 855
    .local v20, tempRect:Landroid/graphics/Rect;
    if-nez v20, :cond_0

    .line 856
    new-instance v20, Landroid/graphics/Rect;

    .end local v20           #tempRect:Landroid/graphics/Rect;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mTempRect:Landroid/graphics/Rect;

    .line 859
    .restart local v20       #tempRect:Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 920
    :cond_1
    :goto_0
    return-void

    .line 863
    :cond_2
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 864
    .local v18, dtop:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    .line 866
    .local v17, dbottom:I
    const/4 v14, 0x0

    .line 867
    .local v14, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 868
    .local v16, bottom:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v13, v0

    .line 869
    .local v13, left:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    .line 871
    .local v15, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v8, v0

    .line 872
    .local v8, workpaint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v7, v0

    .line 873
    .local v7, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    move-object v11, v0

    .line 875
    .local v11, blockLayout:Landroid/graphics/BlockLayout;
    move/from16 v0, v18

    move v1, v14

    if-le v0, v1, :cond_3

    .line 876
    move/from16 v14, v18

    .line 878
    :cond_3
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 879
    move/from16 v16, v17

    .line 882
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    move-object v5, v0

    invoke-static {v7, v5}, Landroid/graphics/Text;->attributeChanged(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v19

    .line 884
    .local v19, lineCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->reflowFull(Ljava/lang/CharSequence;)V

    .line 887
    const/4 v5, 0x1

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move/from16 v0, v19

    move v1, v5

    if-eq v0, v1, :cond_5

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-static {v6, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v6

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v9, v0

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->reflowFull(Ljava/lang/CharSequence;I)V

    .line 893
    .end local v19           #lineCount:I
    :cond_5
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v9

    .line 894
    .local v9, first:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v10

    .line 896
    .local v10, last:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v5, v0

    if-eqz v5, :cond_6

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 897
    invoke-direct/range {v5 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/text/TextPaint;II)V

    .line 902
    :cond_6
    if-eqz p2, :cond_8

    .line 903
    if-eqz p4, :cond_7

    .line 904
    const/4 v5, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 907
    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 909
    if-eqz p4, :cond_8

    .line 910
    const/4 v5, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    move-object/from16 v12, p1

    .line 914
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/BlockLayout;->draw(Landroid/graphics/Canvas;IIII)V

    .line 916
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 917
    invoke-direct/range {v5 .. v10}, Landroid/text/Layout;->drawReplacementspans(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;II)V

    .line 918
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->drawMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 301
    return-void

    .line 294
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->dispose()V

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method getCurrentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1594
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1595
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1598
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/text/Layout$CursorPosition;->setAbsPositions(II)V

    .line 1599
    invoke-virtual {p0, v0, p2, p3}, Landroid/text/Layout;->getCursorPath(Landroid/text/Layout$CursorPosition;Landroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 1600
    return-void
.end method

.method public getCursorPath(Landroid/text/Layout$CursorPosition;Landroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "cursor"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1610
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v2, p1, Landroid/text/Layout$CursorPosition;->offset:I

    const/4 v4, 0x3

    const/4 v5, 0x4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BlockLayout;->getCursorPath(IILandroid/graphics/Path;II)V

    .line 1612
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method final getEllipsisCountDefault(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1978
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisCount(I)I

    move-result v0

    return v0
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method final getEllipsisStartDefault(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1969
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisStart(I)I

    move-result v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1109
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1131
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1500
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1491
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1484
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 1170
    if-eqz p2, :cond_0

    .line 1171
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1172
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1173
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1174
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1176
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method getLineContainsTabDefault(I)Z
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, 0x1

    .line 2019
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2020
    .local v3, start:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    sub-int v1, v5, v6

    .line 2023
    .local v1, end:I
    invoke-virtual {p0}, Landroid/text/Layout;->getCurrentText()Ljava/lang/String;

    move-result-object v4

    .line 2025
    .local v4, text:Ljava/lang/String;
    move v2, v3

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2027
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2028
    .local v0, ch:C
    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    move v5, v6

    .line 2032
    .end local v0           #ch:C
    :goto_1
    return v5

    .line 2025
    .restart local v0       #ch:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2032
    .end local v0           #ch:C
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method final getLineDirectionsDefault(I)Landroid/text/Layout$Directions;
    .locals 3
    .parameter "line"

    .prologue
    .line 1948
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 1952
    .local v0, blockLayout:Landroid/graphics/BlockLayout;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isValidLine(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1954
    const/4 p1, 0x0

    .line 1957
    :cond_0
    new-instance v1, Landroid/text/Layout$Directions;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineDirections(I)[S

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/Layout$Directions;-><init>([S)V

    return-object v1
.end method

.method public final getLineEnd(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1445
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 1402
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v3, :cond_3

    .line 1403
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1405
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1406
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1408
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1409
    move v1, v0

    goto :goto_0

    .line 1411
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1414
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1415
    const/4 v3, 0x0

    .line 1419
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_1
    return v3

    .restart local v1       #high:I
    .restart local v2       #low:I
    :cond_2
    move v3, v2

    .line 1417
    goto :goto_1

    .line 1419
    .end local v1           #high:I
    .end local v2           #low:I
    :cond_3
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v3, p1}, Landroid/graphics/BlockLayout;->getLineForOffset(I)I

    move-result v3

    goto :goto_1
.end method

.method public getLineForVertical(I)I
    .locals 5
    .parameter "vertical"

    .prologue
    .line 1375
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v3, :cond_3

    .line 1376
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1378
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1379
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1381
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1382
    move v1, v0

    goto :goto_0

    .line 1384
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1387
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1388
    const/4 v3, 0x0

    .line 1392
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_1
    return v3

    .restart local v1       #high:I
    .restart local v2       #low:I
    :cond_2
    move v3, v2

    .line 1390
    goto :goto_1

    .line 1392
    .end local v1           #high:I
    .end local v2           #low:I
    :cond_3
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v3, p1}, Landroid/graphics/BlockLayout;->getLineForVertical(I)I

    move-result v3

    goto :goto_1
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1270
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v5, :cond_4

    .line 1271
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1272
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1274
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 1275
    if-ne v1, v7, :cond_0

    .line 1276
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 1292
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    :goto_0
    return v5

    .restart local v0       #align:Landroid/text/Layout$Alignment;
    .restart local v1       #dir:I
    :cond_0
    move v5, v6

    .line 1278
    goto :goto_0

    .line 1279
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1280
    if-ne v1, v7, :cond_2

    move v5, v6

    .line 1281
    goto :goto_0

    .line 1283
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 1285
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1286
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1287
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1289
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0

    .line 1292
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    .end local v2           #left:I
    .end local v3           #max:I
    .end local v4           #right:I
    :cond_4
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v5, p1}, Landroid/graphics/BlockLayout;->getLineLeft(I)F

    move-result v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 1332
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1333
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    .line 1335
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineMax(I)F

    move-result v0

    goto :goto_0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 1301
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v5, :cond_4

    .line 1302
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1303
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1305
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 1306
    if-ne v1, v6, :cond_0

    .line 1307
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    .line 1323
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    :goto_0
    return v5

    .line 1309
    .restart local v0       #align:Landroid/text/Layout$Alignment;
    .restart local v1       #dir:I
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 1310
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1311
    if-ne v1, v6, :cond_2

    .line 1312
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 1314
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 1316
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1317
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1318
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1320
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0

    .line 1323
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    .end local v2           #left:I
    .end local v3           #max:I
    .end local v4           #right:I
    :cond_4
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v5, p1}, Landroid/graphics/BlockLayout;->getLineRight(I)F

    move-result v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1453
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1454
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    .line 1456
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineVisibleEnd(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLineWidth(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 1362
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1363
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    .line 1365
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineWidth(I)F

    move-result v0

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 4
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1429
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    const/4 v1, 0x0

    .line 1431
    .local v1, offset:I
    if-nez v0, :cond_0

    .line 1432
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1435
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget-object v2, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    float-to-int v3, p2

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/BlockLayout;->getOffsetForHorizontal(IILandroid/graphics/BlockLayout$CaretPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1436
    invoke-virtual {v0}, Landroid/graphics/BlockLayout$CaretPosition;->getCharacterIndex()I

    move-result v1

    .line 1438
    :cond_1
    return v1
.end method

.method public getOffsetToLeftOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 1508
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1510
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1511
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1514
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    iput p1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1515
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1516
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 1518
    iget v1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    if-ne v1, p1, :cond_1

    .line 1519
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 1520
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    return v1
.end method

.method public getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1530
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1532
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    if-nez v0, :cond_0

    .line 1533
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1536
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 1537
    iget v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 1539
    iget-object v1, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v1, v0}, Landroid/graphics/BlockLayout;->getOffsetToLeftOf(Landroid/graphics/BlockLayout$CaretPosition;)Z

    .line 1540
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1541
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1542
    return-void
.end method

.method public getOffsetToRightOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 1549
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1551
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1552
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1555
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    iput p1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1556
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1558
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 1560
    iget v1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    if-ne v1, p1, :cond_1

    .line 1561
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 1563
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    return v1
.end method

.method public getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1573
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1575
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    if-nez v0, :cond_0

    .line 1576
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1579
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 1580
    iget v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 1582
    iget-object v1, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v1, v0}, Landroid/graphics/BlockLayout;->getOffsetToRightOf(Landroid/graphics/BlockLayout$CaretPosition;)Z

    .line 1583
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1584
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1585
    return-void
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 9
    .parameter "line"

    .prologue
    const/4 v8, 0x1

    .line 1645
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v5, :cond_1

    .line 1646
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1648
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v5, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v5, :cond_0

    .line 1649
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    .line 1650
    .local v2, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    const-class v7, Landroid/text/style/AlignmentSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/AlignmentSpan;

    .line 1654
    .local v4, spans:[Landroid/text/style/AlignmentSpan;
    array-length v3, v4

    .line 1655
    .local v3, spanLength:I
    if-lez v3, :cond_0

    .line 1656
    sub-int v5, v3, v8

    aget-object v5, v4, v5

    invoke-interface {v5}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #spanLength:I
    .end local v4           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_0
    move-object v5, v0

    .line 1696
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :goto_0
    return-object v5

    .line 1664
    :cond_1
    if-gez p1, :cond_3

    .line 1665
    const/4 p1, 0x0

    .line 1670
    :cond_2
    :goto_1
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v5, p1}, Landroid/graphics/BlockLayout;->getParagraphAlignment(I)I

    move-result v1

    .line 1676
    .local v1, alignment:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 1677
    packed-switch v1, :pswitch_data_0

    .line 1685
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1666
    .end local v1           #alignment:I
    :cond_3
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 1667
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    sub-int p1, v5, v8

    goto :goto_1

    .line 1679
    .restart local v1       #alignment:I
    :pswitch_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1681
    :pswitch_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1683
    :pswitch_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1688
    :cond_4
    packed-switch v1, :pswitch_data_1

    .line 1696
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1690
    :pswitch_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1692
    :pswitch_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1694
    :pswitch_5
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1688
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 10
    .parameter "line"

    .prologue
    const/4 v9, 0x1

    .line 1706
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v7, :cond_0

    .line 1707
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v7, p1}, Landroid/graphics/BlockLayout;->getParagraphLeft(I)I

    move-result v7

    .line 1730
    :goto_0
    return v7

    .line 1709
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1711
    .local v0, dir:I
    const/4 v2, 0x0

    .line 1713
    .local v2, left:I
    const/4 v4, 0x0

    .line 1714
    .local v4, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1715
    .local v3, off:I
    if-eqz v3, :cond_1

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    sub-int v8, v3, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 1716
    :cond_1
    const/4 v4, 0x1

    .line 1718
    :cond_2
    if-ne v0, v9, :cond_3

    .line 1719
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    .line 1720
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1721
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1724
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 1725
    aget-object v7, v6, v1

    invoke-interface {v7, v4}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    add-int/2addr v2, v7

    .line 1724
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    move v7, v2

    .line 1730
    goto :goto_0
.end method

.method public final getParagraphRight(I)I
    .locals 10
    .parameter "line"

    .prologue
    .line 1738
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v7, :cond_0

    .line 1739
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v7, p1}, Landroid/graphics/BlockLayout;->getParagraphRight(I)I

    move-result v7

    .line 1764
    :goto_0
    return v7

    .line 1741
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1743
    .local v0, dir:I
    iget v4, p0, Landroid/text/Layout;->mWidth:I

    .line 1745
    .local v4, right:I
    const/4 v3, 0x0

    .line 1746
    .local v3, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1747
    .local v2, off:I
    if-eqz v2, :cond_1

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 1748
    :cond_1
    const/4 v3, 0x1

    .line 1751
    :cond_2
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    .line 1752
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    .line 1753
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1754
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1758
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 1759
    aget-object v7, v6, v1

    invoke-interface {v7, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    sub-int/2addr v4, v7

    .line 1758
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    move v7, v4

    .line 1764
    goto :goto_0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 1235
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/BlockLayout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/BlockLayout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1621
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1622
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 1626
    :goto_0
    return-void

    .line 1624
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/BlockLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    goto :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 1101
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .parameter "wid"

    .prologue
    .line 1118
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 1119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 1123
    return-void
.end method

.method initLayout()V
    .locals 4

    .prologue
    .line 199
    new-instance v2, Landroid/graphics/Text$TextRange;

    invoke-direct {v2}, Landroid/graphics/Text$TextRange;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 201
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 203
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    .line 205
    sget v1, Landroid/text/Layout;->sBlockLayoutFlags:I

    .line 207
    .local v1, flags:I
    iget-boolean v2, p0, Landroid/text/Layout;->mIncludepad:Z

    if-eqz v2, :cond_0

    .line 208
    or-int/lit8 v1, v1, 0x2

    .line 211
    :cond_0
    iget-object v2, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_1

    .line 212
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$TextUtils$TruncateAt:[I

    iget-object v3, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3}, Landroid/text/TextUtils$TruncateAt;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 232
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_2

    .line 233
    const/4 v0, 0x0

    .line 240
    .local v0, alignment:I
    :goto_1
    invoke-static {}, Landroid/graphics/Text;->obtain()Landroid/graphics/Text;

    move-result-object v2

    iput-object v2, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    .line 241
    iget-object v2, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/16 v3, 0x14

    invoke-static {v2, v0, v3, v1}, Landroid/graphics/BlockLayout;->obtain(Landroid/graphics/Text;III)Landroid/graphics/BlockLayout;

    move-result-object v2

    iput-object v2, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 242
    new-instance v2, Landroid/text/Layout$SpanList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/text/Layout$SpanList;-><init>(Landroid/text/Layout$1;)V

    iput-object v2, p0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    .line 243
    return-void

    .line 214
    .end local v0           #alignment:I
    :pswitch_0
    or-int/lit8 v1, v1, 0x20

    .line 215
    goto :goto_0

    .line 217
    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    .line 218
    goto :goto_0

    .line 220
    :pswitch_2
    or-int/lit8 v1, v1, 0x10

    .line 221
    goto :goto_0

    .line 223
    :pswitch_3
    or-int/lit8 v1, v1, 0x8

    .line 224
    goto :goto_0

    .line 234
    :cond_2
    iget-object v2, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    .line 235
    const/4 v0, 0x1

    .restart local v0       #alignment:I
    goto :goto_1

    .line 237
    .end local v0           #alignment:I
    :cond_3
    const/4 v0, 0x2

    .restart local v0       #alignment:I
    goto :goto_1

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 1796
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method isValidLine(I)Z
    .locals 3
    .parameter "line"

    .prologue
    .line 2061
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/Layout;->isValidLine(III)Z

    move-result v0

    return v0
.end method

.method isValidLine(III)Z
    .locals 1
    .parameter "line"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 2052
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 2053
    :cond_0
    const/4 v0, 0x0

    .line 2056
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method reflow(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 386
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 387
    return-void
.end method

.method reflow(Ljava/lang/CharSequence;III)V
    .locals 18
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "width"

    .prologue
    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move-object v8, v0

    .line 401
    .local v8, blockText:Landroid/graphics/Text;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    move-object v15, v0

    .line 402
    .local v15, blockLayout:Landroid/graphics/BlockLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v9, v0

    .line 403
    .local v9, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v10, v0

    .line 404
    .local v10, workpaint:Landroid/text/TextPaint;
    sub-int v17, p3, p2

    .line 406
    .local v17, alteredCount:I
    move-object/from16 v7, p1

    .line 408
    .local v7, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    .line 410
    if-eqz v9, :cond_0

    .line 411
    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    move-object v5, v0

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 415
    :cond_0
    if-lez v17, :cond_1

    if-eqz v9, :cond_1

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSpanList:Landroid/text/Layout$SpanList;

    move-object v12, v0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v5 .. v12}, Landroid/text/Layout;->decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;Landroid/text/Layout$SpanList;)V

    .line 417
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v8

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->applyLineHeight(IILandroid/graphics/Text;Landroid/text/TextPaint;)V

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object v14, v8

    move-object/from16 v16, v9

    .line 418
    invoke-direct/range {v11 .. v16}, Landroid/text/Layout;->applyParagraph(IILandroid/graphics/Text;Landroid/graphics/BlockLayout;Landroid/text/TextPaint;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v8

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->applyLineSpacing(IILandroid/graphics/Text;Landroid/text/TextPaint;)V

    .line 422
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;I)V

    .line 423
    return-void
.end method

.method reflowFull(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 374
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 377
    :cond_0
    return-void
.end method

.method reflowFull(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "s"
    .parameter "width"

    .prologue
    .line 380
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 383
    :cond_0
    return-void
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 754
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 755
    return-void
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "dynamicAlignment"

    .prologue
    .line 762
    if-gez p3, :cond_0

    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 766
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 767
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 768
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 769
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 770
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 771
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 772
    iput-boolean p7, p0, Landroid/text/Layout;->mDynamicAlignment:Z

    .line 773
    return-void
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZ)V
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "dynamicAlignment"

    .prologue
    .line 748
    iput-boolean p7, p0, Landroid/text/Layout;->mIncludepad:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p8

    .line 749
    invoke-virtual/range {v0 .. v7}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 750
    return-void
.end method

.method updateText(Ljava/lang/CharSequence;IIIZ)V
    .locals 9
    .parameter "chSeq"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "compose"

    .prologue
    .line 786
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    .line 787
    .local v0, text:Landroid/graphics/Text;
    iget-object v6, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 788
    .local v6, paint:Landroid/text/TextPaint;
    iget-object v5, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 789
    .local v5, matchRange:Landroid/graphics/Text$TextRange;
    const/4 v3, 0x0

    .line 790
    .local v3, mTmpBuf:[C
    const/4 v4, 0x0

    .line 792
    .local v4, offset:I
    if-eqz p1, :cond_0

    if-nez v6, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v3

    .line 798
    add-int v1, p2, p4

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 800
    if-lez p3, :cond_2

    if-lez p4, :cond_2

    .line 801
    move v7, p2

    .line 802
    .local v7, start:I
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, p2, v1

    .local v2, end:I
    move v1, p2

    .line 804
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Text;->compareTo(II[CILandroid/graphics/Text$TextRange;)I

    .line 805
    iget v4, v5, Landroid/graphics/Text$TextRange;->count:I

    .line 806
    iget v1, v5, Landroid/graphics/Text$TextRange;->index:I

    iget v2, v5, Landroid/graphics/Text$TextRange;->count:I

    .end local v2           #end:I
    add-int p2, v1, v2

    .line 808
    add-int v1, v7, p4

    sub-int p4, v1, p2

    .line 809
    add-int v1, v7, p3

    sub-int p3, v1, p2

    .line 812
    .end local v7           #start:I
    :cond_2
    if-lez p3, :cond_3

    .line 813
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Text;->removeText(II)V

    .line 816
    invoke-virtual {v0}, Landroid/graphics/Text;->getParagraphCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    if-eqz p5, :cond_3

    .line 817
    invoke-direct {p0, v6}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V

    .line 821
    :cond_3
    if-lez p4, :cond_5

    .line 822
    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    move v8, v1

    .line 824
    .local v8, wasEmpty:Z
    :goto_1
    invoke-virtual {v0, v3, v4, p4, p2}, Landroid/graphics/Text;->insertText([CIII)V

    .line 827
    invoke-virtual {v0}, Landroid/graphics/Text;->getParagraphCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    if-eqz p5, :cond_5

    .line 828
    if-eqz v8, :cond_4

    .line 829
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 831
    :cond_4
    invoke-direct {p0, v6}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    .end local v8           #wasEmpty:Z
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0

    .line 822
    :cond_6
    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    .line 836
    :catchall_0
    move-exception v1

    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    throw v1
.end method
