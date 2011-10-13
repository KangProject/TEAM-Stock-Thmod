.class public Lcom/android/systemui/statusbar/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# static fields
.field private static AM_PM_STYLE:I = 0x0

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final CLOCK_GONE:I = 0x3


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/Clock$1;-><init>(Lcom/android/systemui/statusbar/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/Clock;Ljava/util/Calendar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/Clock;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 24

    .prologue
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 137
    .local v11, context:Landroid/content/Context;
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 138
    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    .line 139
    const-string v22, ""

    .line 219
    :goto_0
    return-object v22

    .line 141
    :cond_0
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/Clock;->setVisibility(I)V

    .line 144
    invoke-static {v11}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    .line 147
    .local v9, b24:Z
    if-eqz v9, :cond_3

    .line 148
    const-string v18, "HH:mm"

    .line 153
    .local v18, res:Ljava/lang/String;
    :goto_1
    const v5, 0xef00

    .line 154
    .local v5, MAGIC1:C
    const v6, 0xef01

    .line 158
    .local v6, MAGIC2:C
    move-object/from16 v12, v18

    .line 159
    .local v12, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 166
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-eqz v22, :cond_2

    .line 167
    const/4 v7, -0x1

    .line 168
    .local v7, a:I
    const/16 v17, 0x0

    .line 169
    .local v17, quoted:Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 181
    :goto_3
    if-ltz v7, :cond_2

    .line 183
    move v8, v7

    .line 184
    .local v8, b:I
    :goto_4
    if-lez v7, :cond_1

    const/16 v22, 0x1

    sub-int v22, v7, v22

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v22

    if-nez v22, :cond_8

    .line 187
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x0

    move-object v0, v12

    move/from16 v1, v23

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v23, 0xef00

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 188
    const-string v23, "a"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0xef01

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v8, 0x1

    move-object v0, v12

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 187
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 192
    .end local v7           #a:I
    .end local v8           #b:I
    .end local v14           #i:I
    .end local v17           #quoted:Z
    :cond_2
    new-instance v20, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v20, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 193
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/Clock;->mClockFormatString:Ljava/lang/String;

    .line 197
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 199
    .local v19, result:Ljava/lang/String;
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    if-eqz v22, :cond_c

    .line 200
    const v22, 0xef00

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 201
    .local v15, magic1:I
    const v22, 0xef01

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 202
    .local v16, magic2:I
    if-ltz v15, :cond_c

    move/from16 v0, v16

    move v1, v15

    if-le v0, v1, :cond_c

    .line 203
    new-instance v13, Landroid/text/SpannableStringBuilder;

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 204
    .local v13, formatted:Landroid/text/SpannableStringBuilder;
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 205
    add-int/lit8 v22, v16, 0x1

    move-object v0, v13

    move v1, v15

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_6
    move-object/from16 v22, v13

    .line 215
    goto/16 :goto_0

    .line 150
    .end local v5           #MAGIC1:C
    .end local v6           #MAGIC2:C
    .end local v12           #format:Ljava/lang/String;
    .end local v13           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v15           #magic1:I
    .end local v16           #magic2:I
    .end local v18           #res:Ljava/lang/String;
    .end local v19           #result:Ljava/lang/String;
    .end local v20           #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v18, "h:mm a"

    .restart local v18       #res:Ljava/lang/String;
    goto/16 :goto_1

    .line 170
    .restart local v5       #MAGIC1:C
    .restart local v6       #MAGIC2:C
    .restart local v7       #a:I
    .restart local v12       #format:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v17       #quoted:Z
    :cond_4
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 172
    .local v10, c:C
    const/16 v22, 0x27

    move v0, v10

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 173
    if-eqz v17, :cond_6

    const/16 v22, 0x0

    move/from16 v17, v22

    .line 175
    :cond_5
    :goto_7
    if-nez v17, :cond_7

    const/16 v22, 0x61

    move v0, v10

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 176
    move v7, v14

    .line 177
    goto/16 :goto_3

    .line 173
    :cond_6
    const/16 v22, 0x1

    move/from16 v17, v22

    goto :goto_7

    .line 169
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 185
    .end local v10           #c:C
    .restart local v8       #b:I
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    .line 195
    .end local v7           #a:I
    .end local v8           #b:I
    .end local v14           #i:I
    .end local v17           #quoted:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v20, v0

    .restart local v20       #sdf:Ljava/text/SimpleDateFormat;
    goto/16 :goto_5

    .line 207
    .restart local v13       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v15       #magic1:I
    .restart local v16       #magic2:I
    .restart local v19       #result:Ljava/lang/String;
    :cond_a
    sget v22, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 208
    new-instance v21, Landroid/text/style/RelativeSizeSpan;

    const v22, 0x3f333333

    invoke-direct/range {v21 .. v22}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 210
    .local v21, style:Landroid/text/style/CharacterStyle;
    const/16 v22, 0x22

    .line 209
    move-object v0, v13

    move-object/from16 v1, v21

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 212
    .end local v21           #style:Landroid/text/style/CharacterStyle;
    :cond_b
    add-int/lit8 v22, v16, 0x1

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 213
    add-int/lit8 v22, v15, 0x1

    move-object v0, v13

    move v1, v15

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    .end local v13           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v15           #magic1:I
    .end local v16           #magic2:I
    :cond_c
    move-object/from16 v22, v19

    .line 219
    goto/16 :goto_0
.end method

.method private final updateColor()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_clock_color"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setTextColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->refreshDrawableState()V

    .line 131
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->updateClock()V

    .line 93
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/Clock;->mAttached:Z

    .line 102
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_clock_ampm_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/Clock;->AM_PM_STYLE:I

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->updateColor()V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method
