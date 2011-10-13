.class public Lcom/android/internal/policy/impl/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreen$3;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x2710


# instance fields
.field private mAttemptsRemaining:I

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCreationOrientation:I

.field private mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredNewPin:[I

.field private mEnteredNewPinDigits:I

.field private final mEnteredPin:[I

.field private mEnteredPukString:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private final mHeaderTextRemaining:Landroid/widget/TextView;

.field private mIsPukLockedDialogShown:Z

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOkButton:Landroid/widget/TextView;

.field private mPinText:Landroid/widget/TextView;

.field private mShownPukLockedDialog:Landroid/app/AlertDialog;

.field private mSimEventReceiver:Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 14
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    new-array v2, v7, [I

    fill-array-data v2, :array_108

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    .line 76
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 78
    iput-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 90
    new-array v2, v7, [I

    fill-array-data v2, :array_11c

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPin:[I

    .line 98
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPinDigits:I

    .line 103
    iput-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mShownPukLockedDialog:Landroid/app/AlertDialog;

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mAttemptsRemaining:I

    .line 118
    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 120
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mIsPukLockedDialogShown:Z

    .line 128
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getLockState()Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 130
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 132
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    .line 133
    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 134
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 137
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-ne v2, v3, :cond_f2

    .line 138
    iget v2, p2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v3, :cond_e5

    .line 139
    const v2, 0x1090038

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 149
    :goto_4e
    const v2, 0x10201c1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 150
    const v2, 0x10201e0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderTextRemaining:Landroid/widget/TextView;

    .line 151
    const v2, 0x10201e1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 152
    const v2, 0x10201e2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v2, 0x10201c6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 157
    const v2, 0x10201ce

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 158
    const v2, 0x1020194

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    .line 160
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    if-ne v2, v3, :cond_ff

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x10402ac

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 166
    :goto_b3
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    if-eqz v2, :cond_cb

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_cb
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimEventReceiver:Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;

    .line 179
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimEventReceiver:Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    return-void

    .line 141
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_e5
    const v2, 0x1090039

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    goto/16 :goto_4e

    .line 145
    :cond_f2
    const v2, 0x109003a

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 146
    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    goto/16 :goto_4e

    .line 163
    :cond_ff
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x10400c9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b3

    .line 75
    :array_108
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 90
    :array_11c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mIsPukLockedDialogShown:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetEditor(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/SimUnlockScreen;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPin:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/SimUnlockScreen;[I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetCode([I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPinDigits:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPukString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mAttemptsRemaining:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderTextRemaining:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkConfirmNewPin()V
    .registers 3

    .prologue
    .line 547
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPinDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPin:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 548
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->unlockPuk()V

    .line 555
    :goto_13
    return-void

    .line 550
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPin:[I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetCode([I)V

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPinDigits:I

    .line 552
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 553
    const v0, 0x10400ee

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetEditor(I)V

    goto :goto_13
.end method

.method private checkNewPin()V
    .registers 4

    .prologue
    .line 526
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_12

    .line 528
    :cond_b
    const v0, 0x10400ef

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetEditor(I)V

    .line 538
    :goto_11
    return-void

    .line 533
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPin:[I

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->copyCode([I[II)I

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetCode([I)V

    .line 535
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredNewPinDigits:I

    .line 536
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 537
    const v0, 0x10400d0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetEditor(I)V

    goto :goto_11
.end method

.method private checkPin()V
    .registers 3

    .prologue
    .line 428
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1d

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 456
    :goto_1c
    return-void

    .line 436
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 438
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->start()V

    goto :goto_1c
.end method

.method private checkPuk()V
    .registers 3

    .prologue
    .line 464
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    .line 466
    const v0, 0x10400ce

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetEditor(I)V

    .line 481
    :goto_c
    return-void

    .line 470
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->intArrayToString([II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPukString:Ljava/lang/String;

    .line 473
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 475
    const v0, 0x10400cf

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetEditor(I)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderTextRemaining:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c
.end method

.method private copyCode([I[II)I
    .registers 9
    .parameter "fromArray"
    .parameter "toArray"
    .parameter "length"

    .prologue
    .line 380
    array-length v0, p1

    .line 381
    .local v0, fromLen:I
    array-length v3, p2

    .line 382
    .local v3, toLen:I
    if-le v0, v3, :cond_11

    move v2, v3

    .line 383
    .local v2, len:I
    :goto_5
    if-le p3, v2, :cond_13

    .line 385
    :goto_7
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v2, :cond_15

    .line 386
    aget v4, p1, v1

    aput v4, p2, v1

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v1           #i:I
    .end local v2           #len:I
    :cond_11
    move v2, v0

    .line 382
    goto :goto_5

    .restart local v2       #len:I
    :cond_13
    move v2, p3

    .line 383
    goto :goto_7

    .line 388
    .restart local v1       #i:I
    :cond_15
    return v2
.end method

.method private getLockState()Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;
    .registers 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 220
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_d

    .line 221
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 223
    :goto_c
    return-object v1

    :cond_d
    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    goto :goto_c
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4b

    .line 408
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10402c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 422
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private intArrayToString([II)Ljava/lang/String;
    .registers 7
    .parameter "intArray"
    .parameter "len"

    .prologue
    .line 358
    if-eqz p1, :cond_5

    array-length v3, p1

    if-nez v3, :cond_7

    .line 359
    :cond_5
    const/4 v3, 0x0

    .line 367
    :goto_6
    return-object v3

    .line 362
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, sb:Ljava/lang/StringBuilder;
    array-length v3, p1

    if-le p2, v3, :cond_1e

    array-length v3, p1

    move v1, v3

    .line 364
    .local v1, length:I
    :goto_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v1, :cond_20

    .line 365
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_1e
    move v1, p2

    .line 363
    goto :goto_13

    .line 367
    .restart local v0       #i:I
    .restart local v1       #length:I
    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6
.end method

.method private reportDigit(I)V
    .registers 5
    .parameter "digit"

    .prologue
    .line 681
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_b

    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 689
    :goto_11
    return-void

    .line 687
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_11
.end method

.method private resetCode([I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 502
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_a

    .line 503
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 505
    :cond_a
    return-void
.end method

.method private resetEditor(I)V
    .registers 4
    .parameter "headerTextId"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->resetCode([I)V

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 494
    return-void
.end method

.method private resetState()V
    .registers 3

    .prologue
    .line 513
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 514
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mAttemptsRemaining:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_f

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderTextRemaining:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    :cond_f
    return-void
.end method

.method private showAlertDialog(II)V
    .registers 8
    .parameter "titleResource"
    .parameter "messageResource"

    .prologue
    const/4 v4, 0x4

    .line 397
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 399
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 403
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mShownPukLockedDialog:Landroid/app/AlertDialog;

    .line 404
    return-void
.end method

.method private unlockPuk()V
    .registers 4

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 564
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPukString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->start()V

    .line 585
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 268
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 271
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mShownPukLockedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mShownPukLockedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 273
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mShownPukLockedDialog:Landroid/app/AlertDialog;

    .line 276
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimEventReceiver:Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 707
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 709
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 317
    .local v0, digits:Landroid/text/Editable;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_21

    .line 318
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 319
    .local v1, len:I
    if-lez v1, :cond_1b

    .line 320
    sub-int v2, v1, v3

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 321
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 323
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 345
    .end local v1           #len:I
    :cond_20
    :goto_20
    return-void

    .line 324
    :cond_21
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_2b

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_20

    .line 326
    :cond_2b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_53

    .line 327
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 328
    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->$SwitchMap$com$android$internal$policy$impl$SimUnlockScreen$LockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5e

    goto :goto_20

    .line 330
    :pswitch_43
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_20

    .line 333
    :pswitch_47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPuk()V

    goto :goto_20

    .line 336
    :pswitch_4b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkNewPin()V

    goto :goto_20

    .line 339
    :pswitch_4f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkConfirmNewPin()V

    goto :goto_20

    .line 342
    :cond_53
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_20

    .line 343
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto :goto_20

    .line 328
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 714
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 716
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 634
    const/4 v3, 0x4

    if-ne p1, v3, :cond_b

    .line 635
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v3, v5

    .line 677
    :goto_a
    return v3

    .line 639
    :cond_b
    const/16 v3, 0x15

    if-eq p1, v3, :cond_13

    const/16 v3, 0x16

    if-ne p1, v3, :cond_15

    :cond_13
    move v3, v5

    .line 641
    goto :goto_a

    .line 644
    :cond_15
    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v2

    .line 645
    .local v2, match:C
    if-eqz v2, :cond_26

    .line 646
    const/16 v3, 0x30

    sub-int v3, v2, v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    move v3, v5

    .line 647
    goto :goto_a

    .line 649
    :cond_26
    const/16 v3, 0x43

    if-ne p1, v3, :cond_42

    .line 650
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 651
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 652
    .local v1, len:I
    if-lez v1, :cond_40

    .line 653
    sub-int v3, v1, v5

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 654
    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    :cond_40
    move v3, v5

    .line 656
    goto :goto_a

    .line 659
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_42
    const/16 v3, 0x42

    if-ne p1, v3, :cond_65

    .line 660
    sget-object v3, Lcom/android/internal/policy/impl/SimUnlockScreen$3;->$SwitchMap$com$android$internal$policy$impl$SimUnlockScreen$LockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_68

    :goto_53
    move v3, v5

    .line 674
    goto :goto_a

    .line 662
    :pswitch_55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_53

    .line 665
    :pswitch_59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPuk()V

    goto :goto_53

    .line 668
    :pswitch_5d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkNewPin()V

    goto :goto_53

    .line 671
    :pswitch_61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkConfirmNewPin()V

    goto :goto_53

    .line 677
    :cond_65
    const/4 v3, 0x0

    goto :goto_a

    .line 660
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_55
        :pswitch_59
        :pswitch_5d
        :pswitch_61
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 235
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 807
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 811
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 815
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getLockState()Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCurrentState:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    if-ne v0, v1, :cond_26

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10402ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 261
    return-void

    .line 244
    :cond_26
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mIsPukLockedDialogShown:Z

    if-nez v0, :cond_36

    .line 245
    const v0, 0x10400cc

    const v1, 0x10400cd

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showAlertDialog(II)V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mIsPukLockedDialogShown:Z

    .line 249
    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mAttemptsRemaining:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderTextRemaining:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 819
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 823
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 693
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 694
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 703
    :cond_14
    :goto_14
    return-void

    .line 695
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 696
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 697
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_34

    move v0, v4

    .line 698
    .local v0, isKeyboardOpen:Z
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 699
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 697
    .end local v0           #isKeyboardOpen:Z
    :cond_34
    const/4 v2, 0x0

    move v0, v2

    goto :goto_24
.end method
