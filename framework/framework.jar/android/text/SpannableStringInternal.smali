.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object; = null

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpanTypeTracker:Landroid/text/SpanTypeTracker;

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 11
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne p3, v8, :cond_2

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 40
    :goto_0
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v4

    .line 41
    .local v4, initial:I
    new-array v8, v4, [Ljava/lang/Object;

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 42
    mul-int/lit8 v8, v4, 0x3

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 44
    instance-of v8, p1, Landroid/text/Spanned;

    if-eqz v8, :cond_3

    .line 45
    new-instance v8, Landroid/text/SpanTypeTracker;

    invoke-direct {v8}, Landroid/text/SpanTypeTracker;-><init>()V

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanTypeTracker:Landroid/text/SpanTypeTracker;

    .line 46
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 47
    .local v5, sp:Landroid/text/Spanned;
    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, p2, p3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 49
    .local v6, spans:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_3

    .line 50
    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 51
    .local v7, st:I
    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 52
    .local v1, en:I
    aget-object v8, v6, v3

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 54
    .local v2, fl:I
    if-ge v7, p2, :cond_0

    .line 55
    move v7, p2

    .line 56
    :cond_0
    if-le v1, p3, :cond_1

    .line 57
    move v1, p3

    .line 59
    :cond_1
    aget-object v8, v6, v3

    sub-int v9, v7, p2

    sub-int v10, v1, p2

    invoke-virtual {p0, v8, v9, v10, v2}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 38
    .end local v1           #en:I
    .end local v2           #fl:I
    .end local v3           #i:I
    .end local v4           #initial:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Ljava/lang/Object;
    .end local v7           #st:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_0

    .line 62
    .restart local v4       #initial:I
    :cond_3
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 5
    .parameter "operation"
    .parameter "start"
    .parameter "end"

    .prologue
    const-string v4, " "

    .line 452
    if-ge p3, p2, :cond_0

    .line 453
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    .line 460
    .local v0, len:I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    .line 461
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    .line 467
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :cond_4
    return-void
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 6
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 420
    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/SpanWatcher;

    .line 421
    .local v3, recip:[Landroid/text/SpanWatcher;
    array-length v2, v3

    .line 423
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 424
    aget-object v5, v3, v1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v5, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 12
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 438
    move v0, p2

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v2, v3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/SpanWatcher;

    .line 440
    .local v11, recip:[Landroid/text/SpanWatcher;
    array-length v10, v11

    .line 442
    .local v10, n:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 443
    aget-object v2, v11, v9

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v8}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 442
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 6
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 429
    const-class v4, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/SpanWatcher;

    .line 430
    .local v3, recip:[Landroid/text/SpanWatcher;
    array-length v2, v3

    .line 432
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 433
    aget-object v5, v3, v1

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v5, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .parameter "i"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final getChars(II[CI)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 80
    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    .line 196
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 197
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 198
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 200
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 201
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 202
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    .line 206
    :goto_1
    return v4

    .line 200
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 206
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    .line 210
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 211
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 212
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 214
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 215
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 216
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v1, v4

    .line 220
    :goto_1
    return v4

    .line 214
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .parameter "what"

    .prologue
    .line 182
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 183
    .local v0, count:I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 184
    .local v3, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 186
    .local v1, data:[I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 187
    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    .line 188
    mul-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v1, v4

    .line 192
    :goto_1
    return v4

    .line 186
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 192
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 22
    .parameter "queryStart"
    .parameter "queryEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 224
    .local p3, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 226
    .local v5, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v15, v0

    .line 227
    .local v15, spanCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 228
    .local v18, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v7, v0

    .line 229
    .local v7, data:[I
    const/4 v13, 0x0

    .line 230
    .local v13, ret:[Ljava/lang/Object;
    const/4 v14, 0x0

    .line 232
    .local v14, ret1:Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    move-object/from16 v19, v14

    move v6, v5

    .end local v5           #count:I
    .end local v14           #ret1:Ljava/lang/Object;
    .local v6, count:I
    :goto_0
    if-ge v8, v15, :cond_a

    .line 233
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x0

    aget v17, v7, v20

    .line 234
    .local v17, spanStart:I
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x1

    aget v16, v7, v20

    .line 236
    .local v16, spanEnd:I
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    move v5, v6

    .line 232
    .end local v6           #count:I
    .restart local v5       #count:I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v6, v5

    .end local v5           #count:I
    .restart local v6       #count:I
    goto :goto_0

    .line 239
    :cond_0
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move v5, v6

    .line 240
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .line 243
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_3

    .line 244
    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move v5, v6

    .line 245
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .line 247
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_2
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    move v5, v6

    .line 248
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .line 252
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_3
    if-eqz p3, :cond_4

    aget-object v20, v18, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    move v5, v6

    .line 253
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_1

    .line 256
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_4
    if-nez v6, :cond_5

    .line 257
    aget-object v14, v18, v8

    .line 258
    .restart local v14       #ret1:Ljava/lang/Object;
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    move-object/from16 v19, v14

    goto :goto_1

    .line 260
    .end local v5           #count:I
    .end local v14           #ret1:Ljava/lang/Object;
    .restart local v6       #count:I
    :cond_5
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 261
    sub-int v20, v15, v8

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 262
    const/16 v20, 0x0

    aput-object v19, v13, v20

    .line 265
    :cond_6
    mul-int/lit8 v20, v8, 0x3

    add-int/lit8 v20, v20, 0x2

    aget v20, v7, v20

    const/high16 v21, 0xff

    and-int v12, v20, v21

    .line 266
    .local v12, prio:I
    if-eqz v12, :cond_9

    .line 269
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    if-ge v9, v6, :cond_7

    .line 270
    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff

    and-int v11, v20, v21

    .line 272
    .local v11, p:I
    if-le v12, v11, :cond_8

    .line 277
    .end local v11           #p:I
    :cond_7
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v6, v9

    move-object v0, v13

    move v1, v9

    move-object v2, v13

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    aget-object v20, v18, v8

    aput-object v20, v13, v9

    .line 279
    add-int/lit8 v5, v6, 0x1

    .line 280
    .end local v6           #count:I
    .restart local v5       #count:I
    goto/16 :goto_1

    .line 269
    .end local v5           #count:I
    .restart local v6       #count:I
    .restart local v11       #p:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 281
    .end local v9           #j:I
    .end local v11           #p:I
    :cond_9
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    aget-object v20, v18, v8

    aput-object v20, v13, v6

    goto/16 :goto_1

    .line 286
    .end local v5           #count:I
    .end local v12           #prio:I
    .end local v16           #spanEnd:I
    .end local v17           #spanStart:I
    .restart local v6       #count:I
    :cond_a
    if-nez v6, :cond_b

    .line 287
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v19, p0

    .line 300
    :goto_3
    return-object v19

    .line 289
    .restart local p0
    :cond_b
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 290
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 291
    const/16 v20, 0x0

    aput-object v19, v13, v20

    .line 292
    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    move-object/from16 v19, v14

    goto :goto_3

    .line 294
    .restart local p0
    :cond_c
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 295
    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v14, v0

    move-object/from16 v19, v14

    goto :goto_3

    .line 298
    :cond_d
    move-object/from16 v0, p3

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 299
    .local v10, nret:[Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v19

    move-object v2, v10

    move/from16 v3, v20

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    check-cast v10, [Ljava/lang/Object;

    .end local v10           #nret:[Ljava/lang/Object;
    move-object/from16 v19, v10

    goto :goto_3
.end method

.method public getSpans([Ljava/lang/Object;[IIILjava/lang/Class;)[Ljava/lang/Object;
    .locals 22
    .parameter "spansArray"
    .parameter "numSpans"
    .parameter "queryStart"
    .parameter "queryEnd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[III",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 309
    .local p5, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 310
    .local v5, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v13, v0

    .line 311
    .local v13, spanCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 312
    .local v16, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v7, v0

    .line 314
    .local v7, data:[I
    const/16 v18, -0x1

    .line 317
    .local v18, typeCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 318
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p2, v19

    move-object/from16 v17, p1

    .line 393
    .end local p1
    .local v17, spansArray:[Ljava/lang/Object;
    :goto_0
    return-object v17

    .line 324
    .end local v17           #spansArray:[Ljava/lang/Object;
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanTypeTracker:Landroid/text/SpanTypeTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanTypeTracker:Landroid/text/SpanTypeTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/SpanTypeTracker;->getCountForSpanType(Ljava/lang/Class;)I

    move-result v18

    .line 330
    :cond_1
    if-nez v18, :cond_2

    .line 331
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, p2, v19

    move-object/from16 v17, p1

    .line 332
    .end local p1
    .restart local v17       #spansArray:[Ljava/lang/Object;
    goto :goto_0

    .line 336
    .end local v17           #spansArray:[Ljava/lang/Object;
    .restart local p1
    :cond_2
    if-nez p1, :cond_3

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p1, v0

    .line 340
    :cond_3
    const/4 v9, 0x0

    .local v9, i:I
    move v6, v5

    .end local v5           #count:I
    .local v6, count:I
    :goto_1
    if-ge v9, v13, :cond_d

    .line 341
    mul-int/lit8 v19, v9, 0x3

    add-int/lit8 v19, v19, 0x0

    aget v15, v7, v19

    .line 342
    .local v15, spanStart:I
    mul-int/lit8 v19, v9, 0x3

    add-int/lit8 v19, v19, 0x1

    aget v14, v7, v19

    .line 344
    .local v14, spanEnd:I
    move v0, v15

    move/from16 v1, p4

    if-le v0, v1, :cond_4

    move v5, v6

    .line 340
    .end local v6           #count:I
    .restart local v5       #count:I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5           #count:I
    .restart local v6       #count:I
    goto :goto_1

    .line 347
    :cond_4
    move v0, v14

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    move v5, v6

    .line 348
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_2

    .line 351
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_5
    if-eq v15, v14, :cond_7

    move/from16 v0, p3

    move/from16 v1, p4

    if-eq v0, v1, :cond_7

    .line 352
    move v0, v15

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    move v5, v6

    .line 353
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_2

    .line 355
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_6
    move v0, v14

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    move v5, v6

    .line 356
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_2

    .line 360
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_7
    if-eqz p5, :cond_8

    aget-object v19, v16, v9

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    move v5, v6

    .line 361
    .end local v6           #count:I
    .restart local v5       #count:I
    goto :goto_2

    .line 365
    .end local v5           #count:I
    .restart local v6       #count:I
    :cond_8
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 366
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 367
    .local v8, expanded:[Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object v2, v8

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    move-object/from16 p1, v8

    .line 371
    .end local v8           #expanded:[Ljava/lang/Object;
    :cond_9
    mul-int/lit8 v19, v9, 0x3

    add-int/lit8 v19, v19, 0x2

    aget v19, v7, v19

    const/high16 v20, 0xff

    and-int v12, v19, v20

    .line 372
    .local v12, prio:I
    if-eqz v12, :cond_c

    .line 375
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    if-ge v10, v6, :cond_a

    .line 376
    aget-object v19, p1, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v19

    const/high16 v20, 0xff

    and-int v11, v19, v20

    .line 378
    .local v11, p:I
    if-le v12, v11, :cond_b

    .line 383
    .end local v11           #p:I
    :cond_a
    add-int/lit8 v19, v10, 0x1

    sub-int v20, v6, v10

    move-object/from16 v0, p1

    move v1, v10

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    aget-object v19, v16, v9

    aput-object v19, p1, v10

    .line 385
    add-int/lit8 v5, v6, 0x1

    .line 386
    .end local v6           #count:I
    .restart local v5       #count:I
    goto/16 :goto_2

    .line 375
    .end local v5           #count:I
    .restart local v6       #count:I
    .restart local v11       #p:I
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 387
    .end local v10           #j:I
    .end local v11           #p:I
    :cond_c
    add-int/lit8 v5, v6, 0x1

    .end local v6           #count:I
    .restart local v5       #count:I
    aget-object v19, v16, v9

    aput-object v19, p1, v6

    goto/16 :goto_2

    .line 392
    .end local v5           #count:I
    .end local v12           #prio:I
    .end local v14           #spanEnd:I
    .end local v15           #spanStart:I
    .restart local v6       #count:I
    :cond_d
    const/16 v19, 0x0

    aput v6, p2, v19

    move v5, v6

    .end local v6           #count:I
    .restart local v5       #count:I
    move-object/from16 v17, p1

    .line 393
    .end local p1
    .restart local v17       #spansArray:[Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 7
    .parameter "start"
    .parameter "limit"
    .parameter "kind"

    .prologue
    .line 398
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 399
    .local v0, count:I
    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 400
    .local v4, spans:[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 402
    .local v1, data:[I
    if-nez p3, :cond_0

    .line 403
    const-class p3, Ljava/lang/Object;

    .line 406
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 407
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v5, v1, v6

    .line 408
    .local v5, st:I
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v2, v1, v6

    .line 410
    .local v2, en:I
    if-le v5, p1, :cond_1

    if-ge v5, p2, :cond_1

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 411
    move p2, v5

    .line 412
    :cond_1
    if-le v2, p1, :cond_2

    if-ge v2, p2, :cond_2

    aget-object v6, v4, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 413
    move p2, v2

    .line 406
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v2           #en:I
    .end local v5           #st:I
    :cond_3
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 11
    .parameter "what"

    .prologue
    const/4 v10, 0x1

    .line 153
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 154
    .local v1, count:I
    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 155
    .local v6, spans:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 157
    .local v2, data:[I
    sub-int v3, v1, v10

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_0

    .line 158
    aget-object v7, v6, v3

    if-ne v7, p1, :cond_1

    .line 159
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x0

    aget v5, v2, v7

    .line 160
    .local v5, ostart:I
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v4, v2, v7

    .line 162
    .local v4, oend:I
    add-int/lit8 v7, v3, 0x1

    sub-int v0, v1, v7

    .line 164
    .local v0, c:I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v0, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    sub-int/2addr v7, v10

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 170
    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 172
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpanTypeTracker:Landroid/text/SpanTypeTracker;

    if-eqz v7, :cond_0

    .line 173
    iget-object v7, p0, Landroid/text/SpannableStringInternal;->mSpanTypeTracker:Landroid/text/SpanTypeTracker;

    const/4 v8, -0x1

    invoke-virtual {v7, p1, v8}, Landroid/text/SpanTypeTracker;->updateSpanTypeCount(Ljava/lang/Object;I)V

    .line 179
    .end local v0           #c:I
    .end local v4           #oend:I
    .end local v5           #ostart:I
    :cond_0
    return-void

    .line 157
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 19
    .parameter "what"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    .line 83
    move/from16 v9, p2

    .line 84
    .local v9, nstart:I
    move/from16 v10, p3

    .line 86
    .local v10, nend:I
    const-string v5, "setSpan"

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    .line 88
    and-int/lit8 v5, p4, 0x33

    const/16 v6, 0x33

    if-ne v5, v6, :cond_1

    .line 89
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v5

    move/from16 v0, p2

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 90
    const/4 v5, 0x1

    sub-int v5, p2, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v11

    .line 92
    .local v11, c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_0

    .line 93
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " follows "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    .end local v11           #c:C
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-eq v0, v1, :cond_1

    .line 99
    const/4 v5, 0x1

    sub-int v5, p3, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v11

    .line 101
    .restart local v11       #c:C
    const/16 v5, 0xa

    if-eq v11, v5, :cond_1

    .line 102
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " follows "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    .end local v11           #c:C
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v12, v0

    .line 109
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 110
    .local v18, spans:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v13, v0

    .line 112
    .local v13, data:[I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v12, :cond_4

    .line 113
    aget-object v5, v18, v14

    move-object v0, v5

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 114
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x0

    aget v7, v13, v5

    .line 115
    .local v7, ostart:I
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v8, v13, v5

    .line 117
    .local v8, oend:I
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x0

    aput p2, v13, v5

    .line 118
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aput p3, v13, v5

    .line 119
    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x2

    aput p4, v13, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 121
    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 150
    .end local v7           #ostart:I
    .end local v8           #oend:I
    :cond_2
    :goto_1
    return-void

    .line 112
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 126
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v6, v0

    array-length v6, v6

    if-lt v5, v6, :cond_5

    .line 127
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v16

    .line 128
    .local v16, newsize:I
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 129
    .local v17, newtags:[Ljava/lang/Object;
    mul-int/lit8 v5, v16, 0x3

    new-array v15, v5, [I

    .line 131
    .local v15, newdata:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v8, v0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v17

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v8, v0

    mul-int/lit8 v8, v8, 0x3

    invoke-static {v5, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 135
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 138
    .end local v15           #newdata:[I
    .end local v16           #newsize:I
    .end local v17           #newtags:[Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    aput-object p1, v5, v6

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x0

    aput p2, v5, v6

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x1

    aput p3, v5, v6

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    aput p4, v5, v6

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 144
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_6

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 147
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanTypeTracker:Landroid/text/SpanTypeTracker;

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpanTypeTracker:Landroid/text/SpanTypeTracker;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanTypeTracker;->updateSpanTypeCount(Ljava/lang/Object;I)V

    goto/16 :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
