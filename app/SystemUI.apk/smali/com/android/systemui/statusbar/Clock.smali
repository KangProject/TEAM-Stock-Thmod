.class public Lcom/android/systemui/statusbar/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/Clock$1;-><init>(Lcom/android/systemui/statusbar/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 25

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 132
    .local v12, context:Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/high16 v24, 0x7f06

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 134
    .local v8, amPmStyle:I
    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    .line 137
    .local v10, b24:Z
    if-eqz v10, :cond_2

    .line 138
    const v19, 0x1040072

    .line 143
    .local v19, res:I
    :goto_0
    const v5, 0xef00

    .line 144
    .local v5, MAGIC1:C
    const v6, 0xef01

    .line 147
    .local v6, MAGIC2:C
    move-object v0, v12

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 154
    if-eqz v8, :cond_6

    .line 155
    const/4 v7, -0x1

    .line 156
    .local v7, a:I
    const/16 v18, 0x0

    .line 157
    .local v18, quoted:Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v23

    move v0, v15

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 158
    invoke-virtual {v13, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 160
    .local v11, c:C
    const/16 v23, 0x27

    move v0, v11

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 161
    if-nez v18, :cond_3

    const/16 v23, 0x1

    move/from16 v18, v23

    .line 163
    :cond_0
    :goto_2
    if-nez v18, :cond_4

    const/16 v23, 0x61

    move v0, v11

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 164
    move v7, v15

    .line 169
    .end local v11           #c:C
    :cond_1
    if-ltz v7, :cond_6

    .line 171
    move v9, v7

    .line 172
    .local v9, b:I
    :goto_3
    if-lez v7, :cond_5

    const/16 v23, 0x1

    sub-int v23, v7, v23

    move-object v0, v13

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 173
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 140
    .end local v5           #MAGIC1:C
    .end local v6           #MAGIC2:C
    .end local v7           #a:I
    .end local v9           #b:I
    .end local v13           #format:Ljava/lang/String;
    .end local v15           #i:I
    .end local v18           #quoted:Z
    .end local v19           #res:I
    :cond_2
    const v19, 0x1040071

    .restart local v19       #res:I
    goto :goto_0

    .line 161
    .restart local v5       #MAGIC1:C
    .restart local v6       #MAGIC2:C
    .restart local v7       #a:I
    .restart local v11       #c:C
    .restart local v13       #format:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v18       #quoted:Z
    :cond_3
    const/16 v23, 0x0

    move/from16 v18, v23

    goto :goto_2

    .line 157
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 175
    .end local v11           #c:C
    .restart local v9       #b:I
    :cond_5
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    move-object v0, v13

    move/from16 v1, v24

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0xef00

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "a"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0xef01

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    add-int/lit8 v24, v9, 0x1

    move-object v0, v13

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 180
    .end local v7           #a:I
    .end local v9           #b:I
    .end local v15           #i:I
    .end local v18           #quoted:Z
    :cond_6
    new-instance v21, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v21, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 181
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    .line 185
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 187
    .local v20, result:Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 188
    const v23, 0xef00

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 189
    .local v16, magic1:I
    const v23, 0xef01

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 190
    .local v17, magic2:I
    if-ltz v16, :cond_a

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_a

    .line 191
    new-instance v14, Landroid/text/SpannableStringBuilder;

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    .local v14, formatted:Landroid/text/SpannableStringBuilder;
    const/16 v23, 0x2

    move v0, v8

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 193
    add-int/lit8 v23, v17, 0x1

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_5
    move-object/from16 v23, v14

    .line 206
    .end local v14           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v16           #magic1:I
    .end local v17           #magic2:I
    :goto_6
    return-object v23

    .line 183
    .end local v20           #result:Ljava/lang/String;
    .end local v21           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v21, v0

    .restart local v21       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 195
    .restart local v14       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v16       #magic1:I
    .restart local v17       #magic2:I
    .restart local v20       #result:Ljava/lang/String;
    :cond_8
    const/16 v23, 0x1

    move v0, v8

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 196
    new-instance v22, Landroid/text/style/RelativeSizeSpan;

    const v23, 0x3f333333

    invoke-direct/range {v22 .. v23}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 197
    .local v22, style:Landroid/text/style/CharacterStyle;
    const/16 v23, 0x22

    move-object v0, v14

    move-object/from16 v1, v22

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    .end local v22           #style:Landroid/text/style/CharacterStyle;
    :cond_9
    add-int/lit8 v23, v17, 0x1

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 201
    add-int/lit8 v23, v16, 0x1

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .end local v14           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v16           #magic1:I
    .end local v17           #magic2:I
    :cond_a
    move-object/from16 v23, v20

    .line 206
    goto :goto_6
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 79
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->updateClock()V

    .line 99
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 108
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method
