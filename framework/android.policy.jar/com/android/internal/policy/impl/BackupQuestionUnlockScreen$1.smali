.class Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$1;
.super Ljava/lang/Object;
.source "BackupQuestionUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/BackupQuestionUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->access$000(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->None:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPatternUnlocker(Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->access$100(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 137
    return-void
.end method
