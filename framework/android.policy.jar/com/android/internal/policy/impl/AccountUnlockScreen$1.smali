.class Lcom/android/internal/policy/impl/AccountUnlockScreen$1;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 188
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->val$success:Z

    if-eqz v1, :cond_1f

    .line 189
    new-instance v0, Lcom/android/internal/policy/impl/CommonBackupUtil;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$100(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CommonBackupUtil;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 190
    .local v0, util:Lcom/android/internal/policy/impl/CommonBackupUtil;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CommonBackupUtil;->unlockAndFinishKeyguard()V

    .line 196
    .end local v0           #util:Lcom/android/internal/policy/impl/CommonBackupUtil;
    :goto_1e
    return-void

    .line 192
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x10402d1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$400(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    goto :goto_1e
.end method
