.class Landroid/content/SyncStorageEngine$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncStorageEngine;


# direct methods
.method constructor <init>(Landroid/content/SyncStorageEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 2170
    iput-object p1, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2173
    .local v0, action:Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2176
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LOADED"

    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2179
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 2181
    .local v2, tempMccMnc:Ljava/lang/String;
    iget-object v3, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    invoke-static {v3}, Landroid/content/SyncStorageEngine;->access$000(Landroid/content/SyncStorageEngine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2183
    iget-object v3, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    invoke-static {v3, v2}, Landroid/content/SyncStorageEngine;->access$002(Landroid/content/SyncStorageEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 2185
    iget-object v3, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    iget-object v4, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    invoke-static {v4}, Landroid/content/SyncStorageEngine;->access$100(Landroid/content/SyncStorageEngine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V

    .line 2190
    .end local v2           #tempMccMnc:Ljava/lang/String;
    :cond_0
    return-void
.end method
