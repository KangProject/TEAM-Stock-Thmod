.class Lcom/android/server/UsbObserver$1;
.super Landroid/os/Handler;
.source "UsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/UsbObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private addEnabledFunctions(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-static {v1}, Lcom/android/server/UsbObserver;->access$000(Lcom/android/server/UsbObserver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 165
    iget-object v1, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-static {v1}, Lcom/android/server/UsbObserver;->access$000(Lcom/android/server/UsbObserver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "enabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_21
    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-static {v1}, Lcom/android/server/UsbObserver;->access$100(Lcom/android/server/UsbObserver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 168
    iget-object v1, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-static {v1}, Lcom/android/server/UsbObserver;->access$100(Lcom/android/server/UsbObserver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "disabled"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 170
    :cond_42
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 174
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_72

    .line 205
    :goto_6
    return-void

    .line 176
    :pswitch_7
    monitor-enter p0

    .line 177
    :try_start_8
    iget-object v3, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-static {v3}, Lcom/android/server/UsbObserver;->access$200(Lcom/android/server/UsbObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_29

    .line 181
    invoke-static {}, Lcom/android/server/UsbObserver;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Device not provisioned, skipping USB broadcast"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    monitor-exit p0

    goto :goto_6

    .line 202
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_26
    move-exception v3

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v3

    .line 187
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_29
    :try_start_29
    iget-object v3, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-static {v3}, Lcom/android/server/UsbObserver;->access$400(Lcom/android/server/UsbObserver;)I

    move-result v3

    if-eqz v3, :cond_67

    const/4 v3, 0x1

    move v2, v3

    .line 188
    .local v2, usbConnected:Z
    :goto_33
    if-eqz v2, :cond_69

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.hardware.action.USB_CONNECTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/server/UsbObserver$1;->addEnabledFunctions(Landroid/content/Intent;)V

    .line 194
    :goto_3f
    iget-object v3, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-static {v3}, Lcom/android/server/UsbObserver;->access$200(Lcom/android/server/UsbObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.hardware.action.USB_STATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    const-string v3, "connected"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    invoke-direct {p0, v1}, Lcom/android/server/UsbObserver$1;->addEnabledFunctions(Landroid/content/Intent;)V

    .line 201
    iget-object v3, p0, Lcom/android/server/UsbObserver$1;->this$0:Lcom/android/server/UsbObserver;

    invoke-static {v3}, Lcom/android/server/UsbObserver;->access$200(Lcom/android/server/UsbObserver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 202
    monitor-exit p0

    goto :goto_6

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #usbConnected:Z
    :cond_67
    move v2, v5

    .line 187
    goto :goto_33

    .line 192
    .restart local v2       #usbConnected:Z
    :cond_69
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.hardware.action.USB_DISCONNECTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_29 .. :try_end_70} :catchall_26

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_3f

    .line 174
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
