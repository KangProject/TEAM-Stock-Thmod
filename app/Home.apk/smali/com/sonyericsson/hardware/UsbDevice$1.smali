.class final Lcom/sonyericsson/hardware/UsbDevice$1;
.super Ljava/lang/Object;
.source "UsbDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/hardware/UsbDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonyericsson/hardware/UsbDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/hardware/UsbDevice;
    .locals 1
    .parameter "in"

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/sonyericsson/hardware/UsbDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonyericsson/hardware/UsbDevice;
    .locals 1
    .parameter "size"

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/sonyericsson/hardware/UsbDevice$1;->newArray(I)[Lcom/sonyericsson/hardware/UsbDevice;

    move-result-object v0

    return-object v0
.end method
