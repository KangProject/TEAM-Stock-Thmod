.class Lcom/android/server/WifiWatchdogService$DnsPinger;
.super Ljava/lang/Object;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DnsPinger"
.end annotation


# static fields
.field private static final DNS_PORT:I = 0x35

.field private static final DNS_QUERY_BASE_SIZE:I = 0x21

.field private static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1217
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillQuery([B)V
    .registers 6
    .parameter "buf"

    .prologue
    const/16 v4, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1291
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_d

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1296
    :cond_d
    sget-object v1, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    .line 1297
    sget-object v1, Lcom/android/server/WifiWatchdogService$DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v3

    .line 1300
    const/4 v1, 0x2

    aput-byte v3, p0, v1

    .line 1303
    const/4 v1, 0x5

    aput-byte v3, p0, v1

    .line 1308
    const/16 v1, 0xc

    const-string v2, "www"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1311
    const/16 v1, 0x10

    const-string v2, "android"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1314
    const/16 v1, 0x18

    const-string v2, "com"

    invoke-static {p0, v1, v2}, Lcom/android/server/WifiWatchdogService$DnsPinger;->writeString([BILjava/lang/String;)V

    .line 1317
    const/16 v1, 0x1e

    aput-byte v3, p0, v1

    .line 1320
    const/16 v1, 0x20

    aput-byte v3, p0, v1

    .line 1321
    return-void
.end method

.method static isDnsReachable(II)Z
    .registers 14
    .parameter "dns"
    .parameter "timeout"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1220
    const/4 v6, 0x0

    .line 1222
    .local v6, socket:Ljava/net/DatagramSocket;
    :try_start_3
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_87
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_8} :catch_53
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_8} :catch_5c
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_8} :catch_65
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_77

    .line 1225
    .end local v6           #socket:Ljava/net/DatagramSocket;
    .local v7, socket:Ljava/net/DatagramSocket;
    :try_start_8
    invoke-virtual {v7, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1227
    const/16 v8, 0x21

    new-array v0, v8, [B

    .line 1228
    .local v0, buf:[B
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService$DnsPinger;->fillQuery([B)V

    .line 1231
    const/4 v8, 0x4

    new-array v4, v8, [B

    .line 1232
    .local v4, parts:[B
    const/4 v8, 0x0

    and-int/lit16 v9, p0, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 1233
    const/4 v8, 0x1

    shr-int/lit8 v9, p0, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 1234
    const/4 v8, 0x2

    shr-int/lit8 v9, p0, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 1235
    const/4 v8, 0x3

    shr-int/lit8 v9, p0, 0x18

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 1237
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 1238
    .local v1, dnsAddress:Ljava/net/InetAddress;
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v8, v0

    const/16 v9, 0x35

    invoke-direct {v3, v0, v8, v1, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 1240
    .local v3, packet:Ljava/net/DatagramPacket;
    invoke-virtual {v7, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1243
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v8, v0

    invoke-direct {v5, v0, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1244
    .local v5, replyPacket:Ljava/net/DatagramPacket;
    invoke-virtual {v7, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_8e
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_4b} :catch_a1
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_4b} :catch_9d
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_4b} :catch_99
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4b} :catch_95
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4b} :catch_91

    .line 1276
    if-eqz v7, :cond_50

    .line 1277
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V

    :cond_50
    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    move v8, v11

    .line 1274
    .end local v0           #buf:[B
    .end local v1           #dnsAddress:Ljava/net/InetAddress;
    .end local v3           #packet:Ljava/net/DatagramPacket;
    .end local v4           #parts:[B
    .end local v5           #replyPacket:Ljava/net/DatagramPacket;
    :goto_52
    return v8

    .line 1249
    :catch_53
    move-exception v8

    move-object v2, v8

    .line 1276
    .local v2, e:Ljava/net/SocketException;
    :goto_55
    if-eqz v6, :cond_5a

    .line 1277
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_5a
    move v8, v10

    .line 1253
    goto :goto_52

    .line 1255
    .end local v2           #e:Ljava/net/SocketException;
    :catch_5c
    move-exception v8

    move-object v2, v8

    .line 1276
    .local v2, e:Ljava/net/UnknownHostException;
    :goto_5e
    if-eqz v6, :cond_63

    .line 1277
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_63
    move v8, v10

    .line 1259
    goto :goto_52

    .line 1261
    .end local v2           #e:Ljava/net/UnknownHostException;
    :catch_65
    move-exception v8

    move-object v2, v8

    .line 1276
    .local v2, e:Ljava/net/SocketTimeoutException;
    :goto_67
    if-eqz v6, :cond_6c

    .line 1277
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_6c
    move v8, v10

    .line 1262
    goto :goto_52

    .line 1264
    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :catch_6e
    move-exception v8

    move-object v2, v8

    .line 1276
    .local v2, e:Ljava/io/IOException;
    :goto_70
    if-eqz v6, :cond_75

    .line 1277
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_75
    move v8, v10

    .line 1268
    goto :goto_52

    .line 1270
    .end local v2           #e:Ljava/io/IOException;
    :catch_77
    move-exception v8

    move-object v2, v8

    .line 1272
    .local v2, e:Ljava/lang/Exception;
    :goto_79
    :try_start_79
    const-string v8, "WifiWatchdogService"

    const-string v9, "DnsPinger.isReachable got an unknown exception"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_87

    .line 1276
    if-eqz v6, :cond_85

    .line 1277
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    :cond_85
    move v8, v10

    .line 1274
    goto :goto_52

    .line 1276
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_87
    move-exception v8

    :goto_88
    if-eqz v6, :cond_8d

    .line 1277
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    .line 1276
    :cond_8d
    throw v8

    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catchall_8e
    move-exception v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_88

    .line 1270
    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_91
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_79

    .line 1264
    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_95
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_70

    .line 1261
    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_99
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_67

    .line 1255
    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_9d
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_5e

    .line 1249
    .end local v6           #socket:Ljava/net/DatagramSocket;
    .restart local v7       #socket:Ljava/net/DatagramSocket;
    :catch_a1
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #socket:Ljava/net/DatagramSocket;
    .restart local v6       #socket:Ljava/net/DatagramSocket;
    goto :goto_55
.end method

.method private static writeString([BILjava/lang/String;)V
    .registers 7
    .parameter "buf"
    .parameter "startPos"
    .parameter "string"

    .prologue
    .line 1324
    move v1, p1

    .line 1327
    .local v1, pos:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .local v2, pos:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 1328
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    :goto_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 1329
    add-int/lit8 v2, v1, 0x1

    .end local v1           #pos:I
    .restart local v2       #pos:I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 1328
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #pos:I
    .restart local v1       #pos:I
    goto :goto_c

    .line 1331
    :cond_1f
    return-void
.end method
