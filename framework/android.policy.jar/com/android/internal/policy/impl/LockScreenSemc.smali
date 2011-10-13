.class Lcom/android/internal/policy/impl/LockScreenSemc;
.super Landroid/widget/LinearLayout;
.source "LockScreenSemc.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreenSemc$4;,
        Lcom/android/internal/policy/impl/LockScreenSemc$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "LockScreen"


# instance fields
.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnableMenuKeyInLockScreen:Z

.field private mKeyboardOpen:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextAlarm:Ljava/lang/String;

.field private mOrientation:I

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/android/internal/widget/SlidingTabSemc;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 169
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object v1, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->Normal:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    .line 76
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mShowingBatteryInfo:Z

    .line 79
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mBatteryLevel:I

    .line 81
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 170
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 171
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 172
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 174
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEnableMenuKeyInLockScreen:Z

    .line 176
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->queryKeyboardOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mKeyboardOpen:Z

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 179
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v5, :cond_1

    .line 180
    const v1, 0x109003b

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 181
    iput v3, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mOrientation:I

    .line 187
    :goto_0
    const v1, 0x10201f5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    .line 188
    const v1, 0x102005a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mDate:Landroid/widget/TextView;

    .line 189
    const v1, 0x10201f4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    .line 190
    const v1, 0x10201f3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    .line 192
    const v1, 0x10201c5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    .line 193
    const v1, 0x1020200

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    .line 194
    const v1, 0x10201ff

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTabSemc;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    .line 195
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setHoldAfterTrigger(ZZ)V

    .line 196
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    const v2, 0x10402d3

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTabSemc;->setLeftHintText(I)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    const v2, 0x10402b6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/LockScreenSemc$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenSemc$1;-><init>(Lcom/android/internal/policy/impl/LockScreenSemc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setFocusable(Z)V

    .line 207
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setFocusableInTouchMode(Z)V

    .line 208
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->setDescendantFocusability(I)V

    .line 210
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 211
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    .line 214
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    const v2, 0x10803bd

    const v3, 0x10803be

    const v4, 0x10803bc

    const v5, 0x10803bb

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLeftTabResources(IIII)V

    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateRightTabResources()V

    .line 224
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTabSemc;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;)V

    .line 226
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/LockScreenSemc;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 227
    return-void

    .line 183
    :cond_1
    const v1, 0x109003c

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 184
    iput v5, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mOrientation:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreenSemc;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 610
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 617
    :goto_0
    return-object v0

    .line 612
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 615
    goto :goto_0

    .line 617
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreenSemc$Status;
    .locals 6
    .parameter "simState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v2, :cond_0

    move v1, v5

    .line 461
    .local v1, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 462
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    .line 490
    :goto_1
    return-object v2

    .end local v1           #missingAndNotProvisioned:Z
    :cond_0
    move v1, v4

    .line 459
    goto :goto_0

    .line 465
    .restart local v1       #missingAndNotProvisioned:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v5

    .line 468
    .local v0, isFlightModeOff:Z
    :goto_2
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 490
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .end local v0           #isFlightModeOff:Z
    :cond_2
    move v0, v4

    .line 465
    goto :goto_2

    .line 470
    .restart local v0       #isFlightModeOff:Z
    :pswitch_0
    if-eqz v0, :cond_3

    .line 472
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 475
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->Normal:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 478
    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 480
    :pswitch_2
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 482
    :pswitch_3
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 484
    :pswitch_4
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 486
    :pswitch_5
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->Normal:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 488
    :pswitch_6
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryKeyboardOpen()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 678
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 679
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshAlarmDisplay()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateStatusLines()V

    .line 376
    return-void
.end method

.method private refreshBatteryStringAndIcon(Z)V
    .locals 3
    .parameter "pluggedIn"

    .prologue
    const v2, 0x108001e

    .line 390
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    .line 407
    :goto_0
    return-void

    .line 395
    :cond_0
    if-eqz p1, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 401
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mShowingBatteryInfo:Z

    .line 269
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mBatteryLevel:I

    .line 271
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateLayout(Lcom/android/internal/policy/impl/LockScreenSemc$Status;)V

    .line 274
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshBatteryStringAndIcon(Z)V

    .line 275
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshAlarmDisplay()V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mDateFormatString:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshTimeAndDateDisplay()V

    .line 279
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateStatusLines()V

    .line 280
    return-void
.end method

.method private setEmergencyVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    :cond_0
    return-void
.end method

.method private setScreenLockedVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    :cond_0
    return-void
.end method

.method private setSelectorVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->setVisibility(I)V

    .line 595
    :cond_0
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 153
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 154
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 155
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 156
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .parameter "textView"
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 340
    if-eqz p1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 343
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 347
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    .line 350
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 352
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenSemc$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/policy/impl/LockScreenSemc$2;-><init>(Lcom/android/internal/policy/impl/LockScreenSemc;Landroid/widget/TextView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenSemc$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/LockScreenSemc$3;-><init>(Lcom/android/internal/policy/impl/LockScreenSemc;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    :cond_2
    return-void
.end method

.method private updateCarrierText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    :cond_0
    return-void
.end method

.method private updateCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :cond_0
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/LockScreenSemc$Status;)V
    .locals 8
    .parameter "status"

    .prologue
    const v7, 0x10402be

    const v6, 0x10402b4

    const/4 v5, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 497
    sget-object v1, Lcom/android/internal/policy/impl/LockScreenSemc$4;->$SwitchMap$com$android$internal$policy$impl$LockScreenSemc$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 499
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 503
    .local v0, isFlightModeOff:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_2
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    .line 510
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 511
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 512
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto :goto_0

    .end local v0           #isFlightModeOff:Z
    :cond_0
    move v0, v4

    .line 499
    goto :goto_1

    .line 503
    .restart local v0       #isFlightModeOff:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 516
    .end local v0           #isFlightModeOff:Z
    :pswitch_1
    const v1, 0x10402c2

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(I)V

    .line 517
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateScreenLockedText(I)V

    .line 520
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 521
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 522
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto :goto_0

    .line 526
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_3
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateScreenLockedText(I)V

    .line 536
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 537
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 538
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto :goto_0

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 543
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(I)V

    .line 544
    const v1, 0x10402c0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateScreenLockedText(I)V

    .line 547
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 548
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 549
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto/16 :goto_0

    .line 554
    :pswitch_4
    const v1, 0x10402c5

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(I)V

    .line 557
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 558
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 559
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto/16 :goto_0

    .line 563
    :pswitch_5
    const v1, 0x10402c3

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(I)V

    .line 566
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 567
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 568
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto/16 :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 236
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v4, :cond_1

    .line 238
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    const v0, 0x10803ca

    .line 241
    .local v0, disabledId:I
    const v1, 0x10803cb

    .line 242
    .local v1, expandedId:I
    const v3, 0x10803c1

    .line 243
    .local v3, gotoId:I
    const v2, 0x10803c8

    .line 264
    .local v2, ghostId:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/android/internal/widget/SlidingTabSemc;->setRightTabResources(IIII)V

    .line 265
    return-void

    .line 246
    .end local v0           #disabledId:I
    .end local v1           #expandedId:I
    .end local v2           #ghostId:I
    .end local v3           #gotoId:I
    :cond_0
    const v0, 0x10803c2

    .line 247
    .restart local v0       #disabledId:I
    const v1, 0x10803c3

    .line 248
    .restart local v1       #expandedId:I
    const v3, 0x10803c1

    .line 249
    .restart local v3       #gotoId:I
    const v2, 0x10803c0

    .restart local v2       #ghostId:I
    goto :goto_0

    .line 252
    .end local v0           #disabledId:I
    .end local v1           #expandedId:I
    .end local v2           #ghostId:I
    .end local v3           #gotoId:I
    :cond_1
    const v0, 0x10803c6

    .line 253
    .restart local v0       #disabledId:I
    const v1, 0x10803c7

    .line 255
    .restart local v1       #expandedId:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 258
    const v3, 0x10803c9

    .line 262
    .restart local v3       #gotoId:I
    :goto_1
    const v2, 0x10803c4

    .restart local v2       #ghostId:I
    goto :goto_0

    .line 260
    .end local v2           #ghostId:I
    .end local v3           #gotoId:I
    :cond_2
    const v3, 0x10803c5

    .restart local v3       #gotoId:I
    goto :goto_1
.end method

.method private updateScreenLockedText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 589
    :cond_0
    return-void
.end method

.method private updateStatusLines()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 437
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 665
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 637
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateConfiguration()V

    .line 639
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 644
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateConfiguration()V

    .line 646
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 325
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v1, :cond_1

    const v1, 0x10402d4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setRightHintText(I)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 331
    return-void

    .line 327
    :cond_1
    const v1, 0x10402d5

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 284
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 287
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 655
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 684
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mShowingBatteryInfo:Z

    .line 383
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mBatteryLevel:I

    .line 385
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshBatteryStringAndIcon(Z)V

    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateStatusLines()V

    .line 387
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateLayout(Lcom/android/internal/policy/impl/LockScreenSemc$Status;)V

    .line 453
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 660
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 669
    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateRightTabResources()V

    .line 671
    return-void

    .line 669
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateLayout(Lcom/android/internal/policy/impl/LockScreenSemc$Status;)V

    .line 625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateStatusLines()V

    .line 626
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshTimeAndDateDisplay()V

    .line 412
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 292
    if-ne p2, v3, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    if-ne p2, v2, :cond_0

    .line 296
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-nez v1, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    .line 297
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v1, :cond_4

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 302
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 312
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateRightTabResources()V

    .line 314
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 318
    .local v0, message:Ljava/lang/String;
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .end local v0           #message:Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 296
    goto :goto_1

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 309
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 314
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104014e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_3
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 630
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mKeyboardOpen:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->queryKeyboardOpen()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mOrientation:I

    if-eq v1, v2, :cond_1

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 633
    :cond_1
    return-void
.end method
