.class Landroid/media/AudioService$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 1160
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1162
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1163
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 1166
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 3

    .prologue
    .line 1168
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1170
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1171
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 1172
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->clearAllScoClients()V

    .line 1175
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method
