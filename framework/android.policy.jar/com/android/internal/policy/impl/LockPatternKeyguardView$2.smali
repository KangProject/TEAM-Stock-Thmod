.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;Lcom/android/internal/widget/BackupQuestionUtils;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public emergencyMasterResetDone()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->emergencyMasterResetDone()V

    .line 394
    return-void
.end method

.method public forgotPattern(Z)V
    .registers 2
    .parameter "isForgotten"

    .prologue
    .line 298
    return-void
.end method

.method public goToLockScreen()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 283
    :goto_17
    return-void

    .line 281
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_17
.end method

.method public goToUnlockScreen()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    :goto_8
    return-void

    .line 290
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_8

    .line 293
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_8
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .registers 3
    .parameter "authenticated"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 347
    return-void
.end method

.method public keyguardDoneDrawing()V
    .registers 1

    .prologue
    .line 351
    return-void
.end method

.method public pokeWakelock()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 339
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 3
    .parameter "millis"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 343
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 354
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 355
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v0

    .line 359
    .local v0, failedAttempts:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_4a

    move v1, v4

    .line 361
    .local v1, usingLockPattern:Z
    :goto_23
    if-eqz v1, :cond_53

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/16 v2, 0xf

    if-ne v0, v2, :cond_53

    .line 364
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v2, v3, :cond_4d

    .line 365
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 381
    :cond_40
    :goto_40
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 382
    return-void

    .line 359
    .end local v1           #usingLockPattern:Z
    :cond_4a
    const/4 v2, 0x0

    move v1, v2

    goto :goto_23

    .line 367
    .restart local v1       #usingLockPattern:Z
    :cond_4d
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_40

    .line 369
    :cond_53
    if-eqz v1, :cond_76

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v2

    if-eqz v2, :cond_76

    const/16 v2, 0x14

    if-lt v0, v2, :cond_76

    .line 371
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 372
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_40

    .line 373
    :cond_76
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_40

    .line 375
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v2, v3, :cond_8a

    .line 376
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_40

    .line 378
    :cond_8a
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_40
.end method

.method public reportSuccessfulUnlockAttempt()V
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 398
    return-void
.end method

.method public takeEmergencyCallAction()V
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->takeEmergencyCallAction(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public takeEmergencyCallAction(Ljava/lang/String;)V
    .registers 5
    .parameter "number"

    .prologue
    .line 319
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->pokeWakelock(I)V

    .line 320
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 335
    :goto_19
    return-void

    .line 324
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    if-eqz p1, :cond_42

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 333
    :cond_42
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_19
.end method
