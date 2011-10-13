.class Lcom/android/systemui/statusbar/BatteryText$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BatteryText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BatteryText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BatteryText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    const-string v2, "status"

    .line 82
    const/4 v3, 0x1

    .line 81
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BatteryText;->access$0(Lcom/android/systemui/statusbar/BatteryText;I)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    const-string v2, "level"

    const/16 v3, 0x32

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BatteryText;->access$1(Lcom/android/systemui/statusbar/BatteryText;I)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_text_append"

    .line 88
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BatteryText;->access$2(Lcom/android/systemui/statusbar/BatteryText;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "battery_text_prepend"

    .line 91
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BatteryText;->access$3(Lcom/android/systemui/statusbar/BatteryText;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 95
    const-string v3, "battery_text_style"

    const/4 v4, 0x2

    .line 94
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BatteryText;->access$4(Lcom/android/systemui/statusbar/BatteryText;I)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BatteryText;->updateBatteryColor()V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/BatteryText;->updateBatteryText(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
