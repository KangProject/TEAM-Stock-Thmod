.class final Lcom/android/internal/telephony/gsm/NetworkInfo$1;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/NetworkInfo;
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
        "Lcom/android/internal/telephony/gsm/NetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/NetworkInfo;
    .locals 6
    .parameter "in"

    .prologue
    .line 194
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;)V

    .line 200
    .local v0, netInfo:Lcom/android/internal/telephony/gsm/NetworkInfo;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/NetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/gsm/NetworkInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 204
    new-array v0, p1, [Lcom/android/internal/telephony/gsm/NetworkInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/NetworkInfo$1;->newArray(I)[Lcom/android/internal/telephony/gsm/NetworkInfo;

    move-result-object v0

    return-object v0
.end method
