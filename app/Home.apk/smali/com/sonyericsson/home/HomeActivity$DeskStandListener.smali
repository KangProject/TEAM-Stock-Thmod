.class Lcom/sonyericsson/home/HomeActivity$DeskStandListener;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeskStandListener"
.end annotation


# static fields
.field private static final ACCESSORY_TYPE_DOCK:C = '3'

.field private static final ACCESSORY_TYPE_INDEX:I = 0x10

.field private static final VENDOR_ID_SONY_ERICSSON:I = 0xfce


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2254
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method private isDeskStandConnected(Lcom/sonyericsson/hardware/UsbDevice;)Z
    .locals 8
    .parameter "deviceRoot"

    .prologue
    .line 2272
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2273
    .local v2, deviceQueue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/hardware/UsbDevice;>;"
    const/4 v5, 0x0

    .line 2275
    .local v5, toRet:Z
    if-eqz p1, :cond_0

    .line 2276
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2278
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2279
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/hardware/UsbDevice;

    .line 2281
    .local v1, device:Lcom/sonyericsson/hardware/UsbDevice;
    invoke-virtual {v1}, Lcom/sonyericsson/hardware/UsbDevice;->getVendorId()I

    move-result v6

    const/16 v7, 0xfce

    if-ne v6, v7, :cond_2

    .line 2282
    invoke-virtual {v1}, Lcom/sonyericsson/hardware/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 2283
    .local v4, serialNumber:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x11

    if-lt v6, v7, :cond_2

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x33

    if-ne v6, v7, :cond_2

    .line 2285
    const/4 v5, 0x1

    .line 2293
    .end local v1           #device:Lcom/sonyericsson/hardware/UsbDevice;
    .end local v4           #serialNumber:Ljava/lang/String;
    :cond_1
    return v5

    .line 2289
    .restart local v1       #device:Lcom/sonyericsson/hardware/UsbDevice;
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/hardware/UsbDevice;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/hardware/UsbDevice;

    .line 2290
    .local v0, childDevice:Lcom/sonyericsson/hardware/UsbDevice;
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2298
    const-string v2, "com.sonyericsson.hardware.action.ACTION_USB_OTG_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$4900(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2299
    const-string v2, "com.sonyericsson.hardware.usb_otg_device"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/hardware/UsbDevice;

    .line 2300
    .local v1, usbDevice:Lcom/sonyericsson/hardware/UsbDevice;
    invoke-direct {p0, v1}, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;->isDeskStandConnected(Lcom/sonyericsson/hardware/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    move v0, v2

    .line 2302
    .local v0, orientation:I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/home/HomeActivity;->setRequestedOrientation(I)V

    .line 2304
    .end local v0           #orientation:I
    .end local v1           #usbDevice:Lcom/sonyericsson/hardware/UsbDevice;
    :cond_0
    return-void

    .line 2300
    .restart local v1       #usbDevice:Lcom/sonyericsson/hardware/UsbDevice;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$DeskStandListener;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$5000(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method
