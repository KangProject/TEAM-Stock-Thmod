.class public Lcom/android/systemui/statusbar/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"


# instance fields
.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 67
    return-void
.end method

.method private final isAirPlaneModeOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 81
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mAttached:Z

    .line 90
    :cond_0
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 122
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const v2, 0x10400d5

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    .line 154
    :goto_0
    return-void

    .line 125
    :cond_0
    if-eqz p2, :cond_1

    .line 126
    const-string v2, "ro.semc.spn.currentname"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "ro.semc.spn.newname"

    invoke-static {v2, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 132
    .local v0, something:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CarrierLabel;->isAirPlaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    const/4 p1, 0x0

    .line 134
    const/4 p3, 0x1

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel;->mContext:Landroid/content/Context;

    const v3, 0x1040150

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 137
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 138
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v0, 0x1

    .line 141
    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 142
    if-eqz v0, :cond_4

    .line 143
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const/4 v0, 0x1

    .line 148
    :cond_5
    if-eqz v0, :cond_6

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_6
    const v2, 0x10402b1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/CarrierLabel;->setText(I)V

    goto :goto_0
.end method
