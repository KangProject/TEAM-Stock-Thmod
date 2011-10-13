.class public Lcom/android/systemui/statusbar/SignalText;
.super Landroid/widget/TextView;
.source "SignalText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalText$SettingsObserver;
    }
.end annotation


# static fields
.field private static final STYLE_DISABLE:I = 0x0

.field private static final STYLE_SHOW:I = 0x1

.field private static final STYLE_SMALL_DBM:I = 0x2


# instance fields
.field ASU:I

.field dBm:I

.field private mAttached:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private signal:Landroid/telephony/SignalStrength;

.field private style:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    iput v1, p0, Lcom/android/systemui/statusbar/SignalText;->dBm:I

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    .line 195
    new-instance v1, Lcom/android/systemui/statusbar/SignalText$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SignalText$1;-><init>(Lcom/android/systemui/statusbar/SignalText;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalText;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/SignalText$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalText;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/SignalText$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/SignalText;Landroid/os/Handler;)V

    .line 46
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/SignalText$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalText$SettingsObserver;->observe()V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->updateSettings()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v1, p0, Lcom/android/systemui/statusbar/SignalText;->dBm:I

    .line 25
    iput v1, p0, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    .line 195
    new-instance v1, Lcom/android/systemui/statusbar/SignalText$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SignalText$1;-><init>(Lcom/android/systemui/statusbar/SignalText;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 58
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalText;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x101

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalText;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/SignalText$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalText;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/SignalText$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/SignalText;Landroid/os/Handler;)V

    .line 64
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/SignalText$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalText$SettingsObserver;->observe()V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->updateSettings()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalText;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/SignalText;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalText;->signal:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/SignalText;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalText;->signal:Landroid/telephony/SignalStrength;

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalText;->mAttached:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalText;->mAttached:Z

    .line 75
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalText;->mAttached:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalText;->mAttached:Z

    .line 83
    :cond_0
    return-void
.end method

.method public updateSettings()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->updateSignalColor()V

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->updateSignalText()V

    .line 165
    return-void
.end method

.method final updateSignalColor()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_signal_text_autocolor_enabled"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_1

    move v0, v10

    .line 127
    .local v0, autoColor:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_signal_text_color_static"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 130
    .local v6, color_regular:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_signal_text_color_0_bar"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 133
    .local v1, color_0:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_signal_text_color_1_bar"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, color_1:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_signal_text_color_2_bar"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 139
    .local v3, color_2:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_signal_text_color_3_bar"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 142
    .local v4, color_3:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_signal_text_color_4_bar"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 145
    .local v5, color_4:I
    if-eqz v0, :cond_6

    .line 146
    iget v7, p0, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    const/16 v8, 0x63

    if-ne v7, v8, :cond_2

    .line 147
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/SignalText;->setTextColor(I)V

    .line 159
    :goto_1
    return-void

    .line 124
    .end local v0           #autoColor:Z
    .end local v1           #color_0:I
    .end local v2           #color_1:I
    .end local v3           #color_2:I
    .end local v4           #color_3:I
    .end local v5           #color_4:I
    .end local v6           #color_regular:I
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 148
    .restart local v0       #autoColor:Z
    .restart local v1       #color_0:I
    .restart local v2       #color_1:I
    .restart local v3       #color_2:I
    .restart local v4       #color_3:I
    .restart local v5       #color_4:I
    .restart local v6       #color_regular:I
    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    const/16 v8, 0xc

    if-lt v7, v8, :cond_3

    .line 149
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/SignalText;->setTextColor(I)V

    goto :goto_1

    .line 150
    :cond_3
    iget v7, p0, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    const/16 v8, 0x8

    if-lt v7, v8, :cond_4

    .line 151
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SignalText;->setTextColor(I)V

    goto :goto_1

    .line 152
    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_5

    .line 153
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalText;->setTextColor(I)V

    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalText;->setTextColor(I)V

    goto :goto_1

    .line 157
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/SignalText;->setTextColor(I)V

    goto :goto_1
.end method

.method final updateSignalText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_signal_text_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/SignalText;->style:I

    .line 171
    iget v4, p0, Lcom/android/systemui/statusbar/SignalText;->style:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 172
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/SignalText;->setVisibility(I)V

    .line 174
    iget v4, p0, Lcom/android/systemui/statusbar/SignalText;->dBm:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, result:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SignalText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/SignalText;->style:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 178
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/SignalText;->setVisibility(I)V

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/systemui/statusbar/SignalText;->dBm:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dBm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1       #result:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 183
    .local v0, formatted:Landroid/text/SpannableStringBuilder;
    const-string v4, "d"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 185
    .local v2, start:I
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f333333

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 186
    .local v3, style:Landroid/text/style/CharacterStyle;
    add-int/lit8 v4, v2, 0x3

    const/16 v5, 0x22

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    .end local v0           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v1           #result:Ljava/lang/String;
    .end local v2           #start:I
    .end local v3           #style:Landroid/text/style/CharacterStyle;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SignalText;->setVisibility(I)V

    goto :goto_0
.end method
