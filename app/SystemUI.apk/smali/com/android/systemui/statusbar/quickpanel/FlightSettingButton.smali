.class public final Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "FlightSettingButton.java"


# static fields
.field private static airPlaneEnabled:I


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mtelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "android.settings.AIRPLANE_MODE_SETTINGS"

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mAction:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->airPlaneEnabled:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->airPlaneEnabled:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->updateIconsAndText()V

    return-void
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    return-void

    .line 143
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateIconsAndText()V
    .locals 7

    .prologue
    .line 99
    const/4 v2, 0x0

    .local v2, iconRes:I
    const/4 v5, 0x0

    .local v5, statusIconRes:I
    const/4 v0, 0x0

    .line 100
    .local v0, flightText:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 101
    .local v3, rootView:Landroid/view/View;
    const v6, 0x7f0a0030

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    .local v1, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a0032
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 106
    .local v4, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 118
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    return-void

    .line 108
    :pswitch_0
    const v2, 0x7f020096

    .line 110
    const v5, 0x7f02007f

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    const v2, 0x7f020095

    .line 115
    const v5, 0x7f020090

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    sget v0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->airPlaneEnabled:I

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->setActivateStatus(I)V

    .line 89
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->changeAirplaneModeSystemSetting(Z)V

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->updateIconsAndText()V

    .line 96
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "FlightSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->changeAirplaneModeSystemSetting(Z)V

    .line 132
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->changeAirplaneModeSystemSetting(Z)V

    .line 137
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 65
    const-string v1, "FlightSettingButton"

    const-string v2, "onAttachedToWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->airPlaneEnabled:I

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->updateStatus()V

    .line 77
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 82
    const-string v0, "FlightSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->setText(I)V

    .line 126
    return-void
.end method
