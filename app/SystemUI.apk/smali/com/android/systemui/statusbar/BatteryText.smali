.class public Lcom/android/systemui/statusbar/BatteryText;
.super Landroid/widget/TextView;
.source "BatteryText.java"


# static fields
.field private static final STYLE_DISABLE:I = 0x2

.field private static final STYLE_SHOW:I = 0x1

.field private static final STYLE_SMALL_PERCENT:I = 0x3


# instance fields
.field private appendText:Ljava/lang/String;

.field private batteryLevel:I

.field private batteryStatus:I

.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private prependText:Ljava/lang/String;

.field private style:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryText;->prependText:Ljava/lang/String;

    .line 22
    const-string v0, "%"

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryText;->appendText:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/BatteryText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BatteryText$1;-><init>(Lcom/android/systemui/statusbar/BatteryText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BatteryText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryText;->prependText:Ljava/lang/String;

    .line 22
    const-string v0, "%"

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryText;->appendText:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/BatteryText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BatteryText$1;-><init>(Lcom/android/systemui/statusbar/BatteryText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/BatteryText;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/android/systemui/statusbar/BatteryText;->batteryStatus:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/BatteryText;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/android/systemui/statusbar/BatteryText;->batteryLevel:I

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/BatteryText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryText;->appendText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/BatteryText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryText;->prependText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/BatteryText;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/android/systemui/statusbar/BatteryText;->style:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 49
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BatteryText;->mAttached:Z

    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BatteryText;->mAttached:Z

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 58
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BatteryText;->mAttached:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BatteryText;->mAttached:Z

    .line 70
    :cond_0
    return-void
.end method

.method final updateBatteryColor()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 105
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_text_color"

    .line 104
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1

    move v0, v8

    .line 108
    .local v0, autoColorBatteryText:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_color_auto_charging"

    .line 110
    const v8, -0x6c2b00

    .line 108
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, color_auto_charging:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 114
    const-string v7, "battery_color_auto_regular"

    .line 113
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 116
    .local v4, color_auto_regular:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 117
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_color_auto_medium"

    const v8, -0x2a5d00

    .line 116
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 119
    .local v3, color_auto_medium:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 120
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_color_auto_low"

    const v8, -0x2ab500

    .line 119
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 122
    .local v2, color_auto_low:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 123
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_color"

    .line 122
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 125
    .local v5, color_regular:I
    if-eqz v0, :cond_5

    .line 126
    iget v6, p0, Lcom/android/systemui/statusbar/BatteryText;->batteryStatus:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 127
    iget v6, p0, Lcom/android/systemui/statusbar/BatteryText;->batteryStatus:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 128
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BatteryText;->setTextColor(I)V

    .line 143
    :goto_1
    return-void

    .line 106
    .end local v0           #autoColorBatteryText:Z
    .end local v1           #color_auto_charging:I
    .end local v2           #color_auto_low:I
    .end local v3           #color_auto_medium:I
    .end local v4           #color_auto_regular:I
    .end local v5           #color_regular:I
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 131
    .restart local v0       #autoColorBatteryText:Z
    .restart local v1       #color_auto_charging:I
    .restart local v2       #color_auto_low:I
    .restart local v3       #color_auto_medium:I
    .restart local v4       #color_auto_regular:I
    .restart local v5       #color_regular:I
    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/BatteryText;->batteryLevel:I

    const/16 v7, 0xf

    if-ge v6, v7, :cond_3

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/BatteryText;->setTextColor(I)V

    goto :goto_1

    .line 133
    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/BatteryText;->batteryLevel:I

    const/16 v7, 0x28

    if-ge v6, v7, :cond_4

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BatteryText;->setTextColor(I)V

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BatteryText;->setTextColor(I)V

    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/BatteryText;->setTextColor(I)V

    goto :goto_1
.end method

.method final updateBatteryText(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 152
    iget v4, p0, Lcom/android/systemui/statusbar/BatteryText;->style:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 153
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/BatteryText;->setVisibility(I)V

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryText;->prependText:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/statusbar/BatteryText;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryText;->appendText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BatteryText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-void

    .line 159
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/BatteryText;->style:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 160
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/BatteryText;->setVisibility(I)V

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryText;->prependText:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/statusbar/BatteryText;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .restart local v1       #result:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 166
    .local v0, formatted:Landroid/text/SpannableStringBuilder;
    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, start:I
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f333333

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 169
    .local v3, style:Landroid/text/style/CharacterStyle;
    add-int/lit8 v4, v2, 0x1

    .line 170
    const/16 v5, 0x22

    .line 169
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BatteryText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    .end local v0           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #start:I
    .end local v3           #style:Landroid/text/style/CharacterStyle;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BatteryText;->setVisibility(I)V

    goto :goto_0
.end method
