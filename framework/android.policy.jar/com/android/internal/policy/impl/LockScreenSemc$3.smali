.class Lcom/android/internal/policy/impl/LockScreenSemc$3;
.super Ljava/lang/Object;
.source "LockScreenSemc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenSemc;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreenSemc;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenSemc;Landroid/widget/TextView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenSemc$3;->this$0:Lcom/android/internal/policy/impl/LockScreenSemc;

    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreenSemc$3;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc$3;->val$textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    return-void
.end method
