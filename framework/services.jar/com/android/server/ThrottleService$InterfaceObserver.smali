.class Lcom/android/server/ThrottleService$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;ILjava/lang/String;)V
    .registers 4
    .parameter "handler"
    .parameter "msg"
    .parameter "iface"

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    .line 157
    iput p2, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    .line 158
    iput-object p3, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .registers 4
    .parameter "iface"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 173
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    :cond_13
    return-void
.end method

.method public interfaceLinkStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .parameter "iface"
    .parameter "link"

    .prologue
    .line 162
    if-eqz p2, :cond_15

    .line 163
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mIface:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 164
    iget-object v0, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/ThrottleService$InterfaceObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    :cond_15
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 2
    .parameter "iface"

    .prologue
    .line 177
    return-void
.end method
