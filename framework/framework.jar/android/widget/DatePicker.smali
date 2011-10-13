.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private mDay:I

.field private final mDayPicker:Landroid/widget/NumberPicker;

.field private mMonth:I

.field private final mMonthPicker:Landroid/widget/NumberPicker;

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mYear:I

.field private final mYearPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 92
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x1090020

    const/4 v9, 0x1

    invoke-virtual {v4, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    const v8, 0x10201a3

    invoke-virtual {p0, v8}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 95
    iget-object v8, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v9, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 96
    iget-object v8, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 97
    iget-object v8, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/DatePicker$1;

    invoke-direct {v9, p0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 103
    const v8, 0x10201a2

    invoke-virtual {p0, v8}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 104
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v9, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 105
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 106
    .local v2, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, months:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 114
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 115
    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 122
    .end local v3           #i:I
    :goto_1
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0xc8

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 123
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/DatePicker$2;

    invoke-direct {v9, p0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 136
    const v8, 0x10201a4

    invoke-virtual {p0, v8}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 137
    iget-object v8, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 138
    iget-object v8, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/DatePicker$3;

    invoke-direct {v9, p0}, Landroid/widget/DatePicker$3;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 149
    sget-object v8, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/16 v9, 0x76c

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 152
    .local v6, mStartYear:I
    const/4 v8, 0x1

    const/16 v9, 0x834

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 153
    .local v5, mEndYear:I
    iget-object v8, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v8, v6, v5}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 159
    .local v1, cal:Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 162
    invoke-direct {p0, v7}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 165
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 167
    :cond_1
    return-void

    .line 119
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v5           #mEndYear:I
    .end local v6           #mStartYear:I
    :cond_2
    iget-object v8, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    const/16 v10, 0xc

    invoke-virtual {v8, v9, v10, v7}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$002(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Landroid/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Landroid/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static synthetic access$502(Landroid/widget/DatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    return p1
.end method

.method private adjustMaxDay()V
    .locals 4

    .prologue
    .line 386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 387
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    iget v3, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 388
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 389
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 390
    .local v1, max:I
    iget v2, p0, Landroid/widget/DatePicker;->mDay:I

    if-le v2, v1, :cond_0

    .line 391
    iput v1, p0, Landroid/widget/DatePicker;->mDay:I

    .line 393
    :cond_0
    return-void
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    iget v2, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 399
    :cond_0
    return-void
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 12
    .parameter "months"

    .prologue
    const/4 v11, 0x0

    .line 188
    aget-object v9, p1, v11

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 189
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 194
    .local v4, format:Ljava/text/DateFormat;
    :goto_0
    instance-of v9, v4, Ljava/text/SimpleDateFormat;

    if-eqz v9, :cond_3

    .line 195
    check-cast v4, Ljava/text/SimpleDateFormat;

    .end local v4           #format:Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, order:Ljava/lang/String;
    :goto_1
    const v9, 0x10201a1

    invoke-virtual {p0, v9}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 205
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 207
    const/4 v8, 0x0

    .line 208
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 210
    .local v3, didYear:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 211
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 213
    .local v0, c:C
    const/16 v9, 0x27

    if-ne v0, v9, :cond_0

    .line 214
    if-nez v8, :cond_4

    const/4 v9, 0x1

    move v8, v9

    .line 217
    :cond_0
    :goto_3
    if-nez v8, :cond_1

    .line 218
    const/16 v9, 0x64

    if-ne v0, v9, :cond_5

    if-nez v1, :cond_5

    .line 219
    iget-object v9, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    const/4 v1, 0x1

    .line 210
    :cond_1
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 191
    .end local v0           #c:C
    .end local v1           #didDay:Z
    .end local v2           #didMonth:Z
    .end local v3           #didYear:Z
    .end local v5           #i:I
    .end local v6           #order:Ljava/lang/String;
    .end local v7           #parent:Landroid/widget/LinearLayout;
    .end local v8           #quoted:Z
    :cond_2
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .restart local v4       #format:Ljava/text/DateFormat;
    goto :goto_0

    .line 198
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v6       #order:Ljava/lang/String;
    goto :goto_1

    .end local v4           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v1       #didDay:Z
    .restart local v2       #didMonth:Z
    .restart local v3       #didYear:Z
    .restart local v5       #i:I
    .restart local v7       #parent:Landroid/widget/LinearLayout;
    .restart local v8       #quoted:Z
    :cond_4
    move v8, v11

    .line 214
    goto :goto_3

    .line 221
    :cond_5
    const/16 v9, 0x4d

    if-eq v0, v9, :cond_6

    const/16 v9, 0x4c

    if-ne v0, v9, :cond_7

    :cond_6
    if-nez v2, :cond_7

    .line 222
    iget-object v9, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    const/4 v2, 0x1

    goto :goto_4

    .line 224
    :cond_7
    const/16 v9, 0x79

    if-ne v0, v9, :cond_1

    if-nez v3, :cond_1

    .line 225
    iget-object v9, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    const/4 v3, 0x1

    goto :goto_4

    .line 232
    .end local v0           #c:C
    :cond_8
    if-nez v2, :cond_9

    .line 233
    iget-object v9, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    :cond_9
    if-nez v1, :cond_a

    .line 236
    iget-object v9, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    :cond_a
    if-nez v3, :cond_b

    .line 239
    iget-object v9, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    :cond_b
    return-void
.end method

.method private updateDaySpinner()V
    .locals 5

    .prologue
    .line 366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 367
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 368
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 369
    .local v1, max:I
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 370
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 371
    return-void
.end method

.method private updateSpinners()V
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    .line 357
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 362
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 363
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 320
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 348
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 349
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 350
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 351
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 352
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 353
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 331
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    move-object v1, v0

    .line 332
    .local v1, ss:Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 333
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getYear()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mYear:I

    .line 334
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getMonth()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 335
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getDay()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mDay:I

    .line 336
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 337
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 326
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 175
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 244
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 245
    :cond_0
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 246
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 247
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 248
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 249
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    .line 252
    :cond_1
    return-void
.end method
