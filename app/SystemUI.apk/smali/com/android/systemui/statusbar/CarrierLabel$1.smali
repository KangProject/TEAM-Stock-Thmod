.class Lcom/android/systemui/statusbar/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    const-string v3, "showSpn"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "spn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "plmn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v2, v6, v3, v6, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/CarrierLabel;

    invoke-virtual {v2, v6, v3, v6, v3}, Lcom/android/systemui/statusbar/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
