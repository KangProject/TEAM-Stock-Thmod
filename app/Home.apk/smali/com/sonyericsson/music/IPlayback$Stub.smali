.class public abstract Lcom/sonyericsson/music/IPlayback$Stub;
.super Landroid/os/Binder;
.source "IPlayback.java"

# interfaces
.implements Lcom/sonyericsson/music/IPlayback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/IPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/IPlayback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonyericsson.music.IPlayback"

.field static final TRANSACTION_getAlbumId:I = 0xa

.field static final TRANSACTION_getAlbumName:I = 0xb

.field static final TRANSACTION_getArtistId:I = 0xc

.field static final TRANSACTION_getArtistName:I = 0xd

.field static final TRANSACTION_getDuration:I = 0x6

.field static final TRANSACTION_getPath:I = 0xe

.field static final TRANSACTION_getPosition:I = 0x7

.field static final TRANSACTION_getTrackId:I = 0x8

.field static final TRANSACTION_getTrackName:I = 0x9

.field static final TRANSACTION_isPlaying:I = 0x1

.field static final TRANSACTION_next:I = 0x4

.field static final TRANSACTION_pause:I = 0x3

.field static final TRANSACTION_play:I = 0x2

.field static final TRANSACTION_prev:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p0, p0, v0}, Lcom/sonyericsson/music/IPlayback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/music/IPlayback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, "com.sonyericsson.music.IPlayback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonyericsson/music/IPlayback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/sonyericsson/music/IPlayback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/IPlayback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v4, "com.sonyericsson.music.IPlayback"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->isPlaying()Z

    move-result v0

    .line 53
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 55
    goto :goto_0

    .line 54
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 59
    .end local v0           #_result:Z
    :sswitch_2
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->play()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 62
    goto :goto_0

    .line 66
    :sswitch_3
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->pause()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 69
    goto :goto_0

    .line 73
    :sswitch_4
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->next()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 76
    goto :goto_0

    .line 80
    :sswitch_5
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->prev()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 83
    goto :goto_0

    .line 87
    :sswitch_6
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getDuration()J

    move-result-wide v0

    .line 89
    .local v0, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 91
    goto :goto_0

    .line 95
    .end local v0           #_result:J
    :sswitch_7
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getPosition()J

    move-result-wide v0

    .line 97
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 99
    goto :goto_0

    .line 103
    .end local v0           #_result:J
    :sswitch_8
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getTrackId()I

    move-result v0

    .line 105
    .local v0, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 107
    goto/16 :goto_0

    .line 111
    .end local v0           #_result:I
    :sswitch_9
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 115
    goto/16 :goto_0

    .line 119
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getAlbumId()I

    move-result v0

    .line 121
    .local v0, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 123
    goto/16 :goto_0

    .line 127
    .end local v0           #_result:I
    :sswitch_b
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 131
    goto/16 :goto_0

    .line 135
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getArtistId()I

    move-result v0

    .line 137
    .local v0, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 139
    goto/16 :goto_0

    .line 143
    .end local v0           #_result:I
    :sswitch_d
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 147
    goto/16 :goto_0

    .line 151
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v2, "com.sonyericsson.music.IPlayback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback$Stub;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 155
    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
