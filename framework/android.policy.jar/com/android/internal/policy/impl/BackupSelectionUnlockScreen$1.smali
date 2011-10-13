.class Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen$1;
.super Ljava/lang/Object;
.source "BackupSelectionUnlockScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->access$000(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 96
    instance-of v0, p2, Landroid/widget/Checkable;

    if-eqz v0, :cond_1a

    .line 97
    check-cast p2, Landroid/widget/Checkable;

    .end local p2
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;

    invoke-static {v0, p3}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->access$102(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;I)I

    .line 100
    :cond_1a
    return-void
.end method
