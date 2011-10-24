.class public Lcom/android/settings/MasterReset;
.super Landroid/app/Activity;
.source "MasterReset.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private final mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/MasterReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterReset$1;-><init>(Lcom/android/settings/MasterReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Lcom/android/settings/MasterReset$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterReset$2;-><init>(Lcom/android/settings/MasterReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterReset;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterReset;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->runKeyguardConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterReset;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalButton:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterReset;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->setContentView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateButton:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterReset;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->setContentView(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method private runKeyguardConfirmation()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    const v2, 0x7f090012

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 119
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    const v2, 0x7f090013

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 121
    const/16 v1, 0x37

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MasterReset;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishFinalConfirmationState()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    .line 194
    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    .line 195
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    .line 196
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    .line 199
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    .line 211
    return-void
.end method

.method protected sendMasterResetBroadcast()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.settings.MASTERRESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->setAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const v2, 0x7f090016

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 105
    .local v1, msgBox:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected setAirplaneModeOn()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "airplane_mode_on"

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 88
    :goto_0
    return v1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v3

    .line 85
    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    move v1, v4

    .line 88
    goto :goto_0
.end method
