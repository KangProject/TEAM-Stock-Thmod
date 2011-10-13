.class public Lcom/android/internal/widget/SemcDigitalClock;
.super Landroid/widget/LinearLayout;
.source "SemcDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SemcDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/SemcDigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static sTypeface:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/SemcDigitalClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/widget/SemcDigitalClock;->sTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SemcDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mLive:Z

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/android/internal/widget/SemcDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SemcDigitalClock$1;-><init>(Lcom/android/internal/widget/SemcDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SemcDigitalClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/SemcDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SemcDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/SemcDigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SemcDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SemcDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/SemcDigitalClock;->setDateFormat()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SemcDigitalClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/widget/SemcDigitalClock;->setDate()V

    return-void
.end method

.method private getSystemDateFormat()Ljava/lang/String;
    .locals 5

    .prologue
    .line 250
    iget-object v2, p0, Lcom/android/internal/widget/SemcDigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 252
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, format:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EEE, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M{1,3}"

    const-string v4, "MMM"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private setDate()V
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 239
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mDate:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mDate:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/internal/widget/SemcDigitalClock;->getSystemDateFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    return-void
.end method

.method private setDateFormat()V
    .locals 4

    .prologue
    const-string v3, "hh:mm"

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mFormat:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mAmPm:Lcom/android/internal/widget/SemcDigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "hh:mm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 235
    return-void

    .line 233
    :cond_0
    const-string v0, "hh:mm"

    move-object v0, v3

    goto :goto_0
.end method

.method private setShadow(Landroid/widget/TextView;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 168
    .local v9, paint:Landroid/text/TextPaint;
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 169
    .local v8, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v2, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v4, v2, v3

    .line 170
    .local v4, h:F
    new-instance v0, Landroid/graphics/LinearGradient;

    const v5, 0xffffff

    const/4 v6, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 172
    .local v0, linearGradient:Landroid/graphics/LinearGradient;
    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 173
    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 221
    iget-boolean v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mLive:Z

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/widget/SemcDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 226
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mAmPm:Lcom/android/internal/widget/SemcDigitalClock$AmPm;

    iget-object v2, p0, Lcom/android/internal/widget/SemcDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SemcDigitalClock$AmPm;->setIsMorning(Z)V

    .line 230
    return-void

    .line 229
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 179
    iget-boolean v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mAttached:Z

    if-eqz v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 181
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SemcDigitalClock;->mAttached:Z

    .line 183
    iget-boolean v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mLive:Z

    if-eqz v1, :cond_1

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/SemcDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/android/internal/widget/SemcDigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SemcDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/SemcDigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 194
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SemcDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    invoke-direct {p0}, Lcom/android/internal/widget/SemcDigitalClock;->updateTime()V

    .line 198
    invoke-direct {p0}, Lcom/android/internal/widget/SemcDigitalClock;->setDate()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 205
    iget-boolean v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mAttached:Z

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mAttached:Z

    .line 209
    iget-boolean v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mLive:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 147
    sget-object v1, Lcom/android/internal/widget/SemcDigitalClock;->sTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SoMARegular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sput-object v1, Lcom/android/internal/widget/SemcDigitalClock;->sTypeface:Landroid/graphics/Typeface;

    .line 151
    :cond_0
    sget-object v0, Lcom/android/internal/widget/SemcDigitalClock;->sTypeface:Landroid/graphics/Typeface;

    .line 153
    .local v0, face:Landroid/graphics/Typeface;
    const v1, 0x10201f8

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SemcDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SemcDigitalClock;->setShadow(Landroid/widget/TextView;)V

    .line 157
    const v1, 0x102005a

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SemcDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mDate:Landroid/widget/TextView;

    .line 159
    new-instance v1, Lcom/android/internal/widget/SemcDigitalClock$AmPm;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/SemcDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mAmPm:Lcom/android/internal/widget/SemcDigitalClock$AmPm;

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 162
    invoke-direct {p0}, Lcom/android/internal/widget/SemcDigitalClock;->setDateFormat()V

    .line 163
    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mLive:Z

    .line 262
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/internal/widget/SemcDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 217
    invoke-direct {p0}, Lcom/android/internal/widget/SemcDigitalClock;->updateTime()V

    .line 218
    return-void
.end method
