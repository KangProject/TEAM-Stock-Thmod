.class Lcom/android/settings/wifi/WifiStatusTest$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "supplicantError"

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->access$000(Lcom/android/settings/wifi/WifiStatusTest;I)V

    .line 116
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local p0
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/NetworkInfo;

    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest;->access$100(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 100
    .restart local p0
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$200(Lcom/android/settings/wifi/WifiStatusTest;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    const-string v1, "newState"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/wifi/SupplicantState;

    const-string v1, "supplicantError"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "supplicantError"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lcom/android/settings/wifi/WifiStatusTest;->access$300(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V

    goto :goto_0

    .line 109
    .restart local p0
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$1;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    const-string v1, "newRssi"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->access$400(Lcom/android/settings/wifi/WifiStatusTest;I)V

    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string v0, "WifiStatusTest"

    const-string v1, "Received an unknown Wifi Intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
