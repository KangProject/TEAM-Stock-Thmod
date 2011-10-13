.class Lcom/android/internal/policy/impl/SimUnlockScreen$2;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;->unlockPuk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSupplyPukResponse(Z)V
    .registers 5
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 570
    :cond_12
    if-eqz p1, :cond_2c

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1202(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 583
    :goto_2b
    return-void

    .line 577
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v1, 0x10400ed

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1300(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1400(Lcom/android/internal/policy/impl/SimUnlockScreen;)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1500(Lcom/android/internal/policy/impl/SimUnlockScreen;[I)V

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1602(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 580
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1702(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1800(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    goto :goto_2b
.end method
