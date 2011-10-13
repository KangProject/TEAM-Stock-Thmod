.class Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;
.super Ljava/lang/Object;
.source "BackupQuestionUnlockScreen.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 151
    iput-object p1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 154
    packed-switch p2, :pswitch_data_28

    .line 162
    :goto_4
    return v2

    .line 157
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->access$200(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_25

    const/4 v1, 0x1

    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->access$100(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_4

    :cond_25
    move v1, v2

    .line 157
    goto :goto_16

    .line 154
    nop

    :pswitch_data_28
    .packed-switch 0x6
        :pswitch_5
    .end packed-switch
.end method
