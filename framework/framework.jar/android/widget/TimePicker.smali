.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mHourPicker:Landroid/widget/NumberPicker;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private final mMinutePicker:Landroid/widget/NumberPicker;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private final mPmText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput v7, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 66
    iput v7, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    .line 67
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 104
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 106
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090082

    invoke-virtual {v3, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    const v4, 0x1020279

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    .line 112
    iget-object v4, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$2;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 131
    const v4, 0x102027a

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    .line 132
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v7, v5}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 133
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 134
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    sget-object v5, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 135
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$3;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 143
    const v4, 0x102027b

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 147
    invoke-direct {p0}, Landroid/widget/TimePicker;->configurePickerRanges()V

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 151
    .local v0, cal:Ljava/util/Calendar;
    sget-object v4, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 154
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 155
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 157
    iget v4, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    if-ge v4, v9, :cond_1

    move v4, v8

    :goto_0
    iput-boolean v4, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 160
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 161
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, dfsAmPm:[Ljava/lang/String;
    aget-object v4, v2, v7

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    .line 163
    aget-object v4, v2, v8

    iput-object v4, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 164
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v5, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/TimePicker$4;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    invoke-virtual {p0, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 190
    :cond_0
    return-void

    .end local v1           #dfs:Ljava/text/DateFormatSymbols;
    .end local v2           #dfsAmPm:[Ljava/lang/String;
    :cond_1
    move v4, v7

    .line 157
    goto :goto_0

    .line 164
    .restart local v1       #dfs:Ljava/text/DateFormatSymbols;
    .restart local v2       #dfsAmPm:[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$012(Landroid/widget/TimePicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$020(Landroid/widget/TimePicker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/TimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/TimePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TimePicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method private configurePickerRanges()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v3, v1}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 342
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    sget-object v1, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 343
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 346
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 347
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 353
    return-void
.end method

.method private updateHourDisplay()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 327
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 328
    .local v0, currentHour:I
    iget-object v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    if-le v0, v2, :cond_1

    add-int/lit8 v0, v0, -0xc

    .line 333
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 334
    iget v1, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 335
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    .line 337
    return-void

    .line 331
    :cond_1
    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    .line 334
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 335
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_2
.end method

.method private updateMinuteDisplay()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 360
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 361
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 255
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    move-object v1, v0

    .line 256
    .local v1, ss:Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 257
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 258
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 259
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 250
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    iget v2, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    iget v3, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .parameter "currentHour"

    .prologue
    .line 280
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 281
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourDisplay()V

    .line 282
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "currentMinute"

    .prologue
    .line 314
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    .line 315
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateMinuteDisplay()V

    .line 316
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinutePicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "is24HourView"

    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_0

    .line 290
    iput-object p1, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 291
    invoke-direct {p0}, Landroid/widget/TimePicker;->configurePickerRanges()V

    .line 292
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourDisplay()V

    .line 294
    :cond_0
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .parameter "onTimeChangedListener"

    .prologue
    .line 266
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 267
    return-void
.end method
