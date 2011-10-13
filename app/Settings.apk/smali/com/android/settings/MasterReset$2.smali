.class Lcom/android/settings/MasterReset$2;
.super Ljava/lang/Object;
.source "MasterReset.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterReset;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterReset;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/MasterReset$2;->this$0:Lcom/android/settings/MasterReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/MasterReset$2;->this$0:Lcom/android/settings/MasterReset;

    invoke-static {v0}, Lcom/android/settings/MasterReset;->access$000(Lcom/android/settings/MasterReset;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/MasterReset$2;->this$0:Lcom/android/settings/MasterReset;

    invoke-static {v0}, Lcom/android/settings/MasterReset;->access$100(Lcom/android/settings/MasterReset;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterReset$2;->this$0:Lcom/android/settings/MasterReset;

    invoke-static {v0}, Lcom/android/settings/MasterReset;->access$200(Lcom/android/settings/MasterReset;)V

    goto :goto_0
.end method
