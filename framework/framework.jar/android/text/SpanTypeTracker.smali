.class final Landroid/text/SpanTypeTracker;
.super Ljava/lang/Object;
.source "SpanTypeTracker.java"


# instance fields
.field private mCharStyleSpanCount:I

.field private mLineHeightSpanCount:I

.field private mParaStyleSpanCount:I

.field private mReplacementSpanCount:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method getCountForSpanType(Ljava/lang/Class;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 73
    const/4 v1, -0x1

    .line 89
    :goto_0
    return v1

    .line 76
    :cond_0
    const/4 v0, -0x1

    .line 79
    .local v0, count:I
    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget v0, p0, Landroid/text/SpanTypeTracker;->mParaStyleSpanCount:I

    :cond_1
    :goto_1
    move v1, v0

    .line 89
    goto :goto_0

    .line 81
    :cond_2
    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget v0, p0, Landroid/text/SpanTypeTracker;->mReplacementSpanCount:I

    goto :goto_1

    .line 83
    :cond_3
    const-class v1, Landroid/text/style/LineHeightSpan;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    iget v0, p0, Landroid/text/SpanTypeTracker;->mLineHeightSpanCount:I

    goto :goto_1

    .line 85
    :cond_4
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget v0, p0, Landroid/text/SpanTypeTracker;->mCharStyleSpanCount:I

    goto :goto_1
.end method

.method updateSpanTypeCount(Ljava/lang/Object;I)V
    .locals 1
    .parameter "span"
    .parameter "change"

    .prologue
    .line 47
    instance-of v0, p1, Landroid/text/style/CharacterStyle;

    if-eqz v0, :cond_0

    .line 49
    iget v0, p0, Landroid/text/SpanTypeTracker;->mCharStyleSpanCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/SpanTypeTracker;->mCharStyleSpanCount:I

    .line 51
    instance-of v0, p1, Landroid/text/style/ReplacementSpan;

    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Landroid/text/SpanTypeTracker;->mReplacementSpanCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/SpanTypeTracker;->mReplacementSpanCount:I

    .line 56
    :cond_0
    instance-of v0, p1, Landroid/text/style/ParagraphStyle;

    if-eqz v0, :cond_1

    .line 58
    iget v0, p0, Landroid/text/SpanTypeTracker;->mParaStyleSpanCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/SpanTypeTracker;->mParaStyleSpanCount:I

    .line 59
    instance-of v0, p1, Landroid/text/style/LineHeightSpan;

    if-eqz v0, :cond_1

    .line 60
    iget v0, p0, Landroid/text/SpanTypeTracker;->mLineHeightSpanCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/text/SpanTypeTracker;->mLineHeightSpanCount:I

    .line 63
    :cond_1
    return-void
.end method
