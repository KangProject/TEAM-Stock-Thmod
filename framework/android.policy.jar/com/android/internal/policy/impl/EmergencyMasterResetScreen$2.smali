.class Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$2;
.super Ljava/lang/Object;
.source "EmergencyMasterResetScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$2;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$2;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$200(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 125
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 126
    iget-object v1, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$2;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$100(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen$2;->this$0:Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;->access$000(Lcom/android/internal/policy/impl/EmergencyMasterResetScreen;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 127
    return-void
.end method
