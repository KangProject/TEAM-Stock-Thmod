.class Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "FlightSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;

    invoke-static {v1}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->access$100(Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->access$002(I)I

    .line 46
    invoke-static {}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->access$000()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->setActivateStatus(I)V

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;

    invoke-static {v1}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->access$200(Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;)V

    .line 55
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/quickpanel/FlightSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method
