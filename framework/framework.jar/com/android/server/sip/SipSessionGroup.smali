.class Lcom/android/server/sip/SipSessionGroup;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljavax/sip/SipListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;,
        Lcom/android/server/sip/SipSessionGroup$RegisterCommand;,
        Lcom/android/server/sip/SipSessionGroup$OptionsCommand;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;
    }
.end annotation


# static fields
.field private static final ANONYMOUS:Ljava/lang/String; = "anonymous"

.field private static final CANCEL_CALL_TIMER:I = 0x3

.field private static final CONTINUE_CALL:Ljava/util/EventObject; = null

.field private static final DEBUG:Z = true

.field private static final DEBUG_PING:Z = false

.field private static final DEREGISTER:Ljava/util/EventObject; = null

.field private static final END_CALL:Ljava/util/EventObject; = null

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final HOLD_CALL:Ljava/util/EventObject; = null

.field private static final TAG:Ljava/lang/String; = "SipSession"

.field private static final THREAD_POOL_SIZE:Ljava/lang/String; = "1"

.field private static final WAKE_LOCK_HOLDING_TIME:J = 0x1f4L


# instance fields
.field private mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private mLocalIp:Ljava/lang/String;

.field private final mLocalProfile:Landroid/net/sip/SipProfile;

.field private final mPassword:Ljava/lang/String;

.field private mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSipHelper:Lcom/android/server/sip/SipHelper;

.field private mSipStack:Ljavax/sip/SipStack;

.field private mWakeLock:Lcom/android/server/sip/SipWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Deregister"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    .line 99
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "End call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    .line 100
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Hold call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->HOLD_CALL:Ljava/util/EventObject;

    .line 101
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Continue call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->CONTINUE_CALL:Ljava/util/EventObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/sip/SipProfile;Ljava/lang/String;Lcom/android/server/sip/SipWakeLock;)V
    .locals 1
    .parameter "localIp"
    .parameter "myself"
    .parameter "password"
    .parameter "wakeLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    .line 127
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 128
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->reset(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/EventObject;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/EventObject;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    return-object v0
.end method

.method static synthetic access$1800(Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;

    return-object v0
.end method

.method static synthetic access$600(Ljavax/sip/message/Request;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/message/Request;)Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-void
.end method

.method private declared-synchronized addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 6
    .parameter "newSession"

    .prologue
    const-string v3, "SipSession"

    .line 257
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 258
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++  add a session with key:  \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    .local v1, k:Ljava/lang/String;
    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 257
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 266
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private static allocateLocalPort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    .line 231
    .local v2, s:Ljava/net/DatagramSocket;
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    .line 232
    .local v1, localPort:I
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    return v1

    .line 234
    .end local v1           #localPort:I
    .end local v2           #s:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 235
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "allocateLocalPort()"

    invoke-direct {v3, v4, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static createPeerProfile(Ljavax/sip/message/Request;)Landroid/net/sip/SipProfile;
    .locals 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    const-string v9, "createPeerProfile()"

    .line 1338
    :try_start_0
    const-string v7, "From"

    invoke-interface {p0, v7}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/FromHeader;

    .line 1340
    .local v3, fromHeader:Ljavax/sip/header/FromHeader;
    invoke-interface {v3}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    .line 1341
    .local v0, address:Ljavax/sip/address/Address;
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v5

    check-cast v5, Ljavax/sip/address/SipURI;

    .line 1342
    .local v5, uri:Ljavax/sip/address/SipURI;
    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v6

    .line 1343
    .local v6, username:Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, "anonymous"

    .line 1344
    :cond_0
    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v4

    .line 1345
    .local v4, port:I
    new-instance v7, Landroid/net/sip/SipProfile$Builder;

    invoke-interface {v5}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/sip/address/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v1

    .line 1348
    .local v1, builder:Landroid/net/sip/SipProfile$Builder;
    if-lez v4, :cond_1

    invoke-virtual {v1, v4}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 1349
    :cond_1
    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    return-object v7

    .line 1350
    .end local v0           #address:Ljavax/sip/address/Address;
    .end local v1           #builder:Landroid/net/sip/SipProfile$Builder;
    .end local v3           #fromHeader:Ljavax/sip/header/FromHeader;
    .end local v4           #port:I
    .end local v5           #uri:Ljavax/sip/address/SipURI;
    .end local v6           #username:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1351
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "createPeerProfile()"

    invoke-direct {v7, v9, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1352
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 1353
    .local v2, e:Ljava/text/ParseException;
    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "createPeerProfile()"

    invoke-direct {v7, v9, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static expectResponse(ILjava/lang/String;Ljava/util/EventObject;)Z
    .locals 4
    .parameter "responseCode"
    .parameter "expectedMethod"
    .parameter "evt"

    .prologue
    .line 1325
    instance-of v3, p2, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_0

    .line 1326
    move-object v0, p2

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v1, v0

    .line 1327
    .local v1, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    .line 1328
    .local v2, response:Ljavax/sip/message/Response;
    invoke-interface {v2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 1329
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 1332
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 4
    .parameter "expectedMethod"
    .parameter "evt"

    .prologue
    .line 1311
    instance-of v3, p1, Ljavax/sip/ResponseEvent;

    if-eqz v3, :cond_0

    .line 1312
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    move-object v1, v0

    .line 1313
    .local v1, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v2

    .line 1314
    .local v2, response:Ljavax/sip/message/Response;
    invoke-static {v2}, Lcom/android/server/sip/SipSessionGroup;->getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 1316
    .end local v1           #event:Ljavax/sip/ResponseEvent;
    .end local v2           #response:Ljavax/sip/message/Response;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 3
    .parameter "message"

    .prologue
    .line 342
    invoke-interface {p1}, Ljavax/sip/message/Message;->getRawContent()[B

    move-result-object v0

    .line 343
    .local v0, bytes:[B
    if-eqz v0, :cond_1

    .line 345
    :try_start_0
    instance-of v1, p1, Lgov/nist/javax/sip/message/SIPMessage;

    if-eqz v1, :cond_0

    .line 346
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    .end local p1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v1

    .line 353
    :goto_0
    return-object v1

    .line 348
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    .end local p1
    :catch_0
    move-exception v1

    .line 353
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 1302
    const-string v0, "CSeq"

    invoke-interface {p0, v0}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/sip/header/CSeqHeader;

    invoke-interface {p0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getSipSession(Ljava/util/EventObject;)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 7
    .parameter "event"

    .prologue
    const-string v4, "SipSession"

    .line 244
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/sip/SipHelper;->getCallId(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 246
    .local v3, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "session key from event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v4, "SipSession"

    const-string v5, "active sessions:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 250
    .local v1, k:Ljava/lang/String;
    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 244
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 253
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_0
    if-eqz v3, :cond_1

    move-object v4, v3

    :goto_1
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getStackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 1358
    if-eqz p0, :cond_0

    .line 1359
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1364
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1361
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private static isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .locals 5
    .parameter "s"
    .parameter "evt"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1372
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 1386
    .end local p1
    :goto_0
    return v1

    .line 1373
    .restart local p1
    :cond_0
    if-nez p1, :cond_1

    move v1, v3

    goto :goto_0

    .line 1375
    :cond_1
    instance-of v1, p1, Lcom/android/server/sip/SipSessionGroup$OptionsCommand;

    if-eqz v1, :cond_2

    move v1, v3

    .line 1376
    goto :goto_0

    .line 1377
    :cond_2
    instance-of v1, p1, Ljavax/sip/ResponseEvent;

    if-eqz v1, :cond_4

    .line 1378
    check-cast p1, Ljavax/sip/ResponseEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    .line 1379
    .local v0, response:Ljavax/sip/message/Response;
    const-string v1, "OPTIONS"

    const-string v2, "CSeq"

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 1380
    goto :goto_0

    :cond_3
    move v1, v4

    .line 1382
    goto :goto_0

    .line 1383
    .end local v0           #response:Ljavax/sip/message/Response;
    .restart local p1
    :cond_4
    instance-of v1, p1, Ljavax/sip/RequestEvent;

    if-eqz v1, :cond_5

    move v1, v4

    .line 1384
    goto :goto_0

    :cond_5
    move v1, v3

    .line 1386
    goto :goto_0
.end method

.method private static isLoggable(Ljava/util/EventObject;)Z
    .locals 1
    .parameter "evt"

    .prologue
    .line 1368
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method private static isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 3
    .parameter "method"
    .parameter "event"

    .prologue
    .line 1292
    :try_start_0
    instance-of v2, p1, Ljavax/sip/RequestEvent;

    if-eqz v2, :cond_0

    .line 1293
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v1, v0

    .line 1294
    .local v1, requestEvent:Ljavax/sip/RequestEvent;
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1298
    .end local v1           #requestEvent:Ljavax/sip/RequestEvent;
    :goto_0
    return v2

    .line 1296
    :catch_0
    move-exception v2

    .line 1298
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 1
    .parameter "evt"

    .prologue
    .line 1390
    instance-of v0, p0, Ljavax/sip/RequestEvent;

    if-eqz v0, :cond_0

    .line 1391
    check-cast p0, Ljavax/sip/RequestEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1395
    :goto_0
    return-object v0

    .line 1392
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_1

    .line 1393
    check-cast p0, Ljavax/sip/ResponseEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1395
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/util/EventObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized process(Ljava/util/EventObject;)V
    .locals 7
    .parameter "event"

    .prologue
    const-string v4, "SipSession"

    .line 326
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->getSipSession(Ljava/util/EventObject;)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 328
    .local v3, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_start_1
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v1

    .line 329
    .local v1, isLoggable:Z
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v2, v4

    .line 330
    .local v2, processed:Z
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 331
    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new state after: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v6}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    .end local v1           #isLoggable:Z
    .end local v2           #processed:Z
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 329
    .restart local v1       #isLoggable:Z
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0

    .line 334
    .end local v1           #isLoggable:Z
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 335
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event process error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    invoke-static {v3, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 326
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v3           #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 8
    .parameter "session"

    .prologue
    const-string v5, "\'"

    const-string v5, "SipSession"

    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v5, :cond_1

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    .line 270
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 273
    .local v4, s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v4, :cond_3

    if-eq v4, p1, :cond_3

    .line 274
    const-string v5, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not associated with key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_2

    .line 280
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #key:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 281
    .restart local v3       #key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 286
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_3
    if-eqz v4, :cond_0

    :try_start_2
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    const-string v5, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 289
    .local v2, k:Ljava/lang/String;
    const-string v5, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " close stack for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->onConnectivityChanged()V

    .line 198
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->closeToNotReceiveCalls()V

    .line 200
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-interface {v0}, Ljavax/sip/SipStack;->stop()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeToNotReceiveCalls()V
    .locals 1

    .prologue
    .line 221
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized containsSession(Ljava/lang/String;)Z
    .locals 1
    .parameter "callId"

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .locals 1
    .parameter "listener"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    goto :goto_0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public getLocalProfileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onConnectivityChanged()V
    .locals 7

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 177
    .local v4, ss:[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 178
    .local v3, s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const/16 v5, -0xa

    const-string v6, "data connection lost"

    invoke-static {v3, v5, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v3           #s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 171
    .end local v0           #arr$:[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #ss:[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized openToReceiveCalls(Landroid/net/sip/ISipSessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 323
    return-void
.end method

.method public processIOException(Ljavax/sip/IOExceptionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 311
    return-void
.end method

.method public processRequest(Ljavax/sip/RequestEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 295
    const-string v0, "INVITE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<<< got INVITE, thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeLock:Lcom/android/server/sip/SipWakeLock;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(J)V

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 303
    return-void
.end method

.method public processResponse(Ljavax/sip/ResponseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 307
    return-void
.end method

.method public processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 315
    return-void
.end method

.method public processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 319
    return-void
.end method

.method declared-synchronized reset(Ljava/lang/String;)V
    .locals 10
    .parameter "localIp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "SipSession"

    .line 134
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-nez p1, :cond_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 138
    .local v1, myself:Landroid/net/sip/SipProfile;
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v5

    .line 139
    .local v5, sipFactory:Ljavax/sip/SipFactory;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 140
    .local v3, properties:Ljava/util/Properties;
    const-string v7, "javax.sip.STACK_NAME"

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup;->getStackName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string v7, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    const-string v8, "1"

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, outboundProxy:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    const-string v7, "SipSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "outboundProxy is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v7, "javax.sip.OUTBOUND_PROXY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    :cond_1
    invoke-virtual {v5, v3}, Ljavax/sip/SipFactory;->createSipStack(Ljava/util/Properties;)Ljavax/sip/SipStack;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .local v6, stack:Ljavax/sip/SipStack;
    :try_start_2
    invoke-static {}, Lcom/android/server/sip/SipSessionGroup;->allocateLocalPort()I

    move-result v7

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, p1, v7, v8}, Ljavax/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavax/sip/SipStack;->createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;

    move-result-object v4

    .line 155
    .local v4, provider:Ljavax/sip/SipProvider;
    invoke-interface {v4, p0}, Ljavax/sip/SipProvider;->addSipListener(Ljavax/sip/SipListener;)V

    .line 156
    new-instance v7, Lcom/android/server/sip/SipHelper;

    invoke-direct {v7, v6, v4}, Lcom/android/server/sip/SipHelper;-><init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V

    iput-object v7, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/TooManyListenersException; {:try_start_2 .. :try_end_2} :catch_1

    .line 163
    :try_start_3
    const-string v7, "SipSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " start stack for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-interface {v6}, Ljavax/sip/SipStack;->start()V

    .line 166
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 167
    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 134
    .end local v1           #myself:Landroid/net/sip/SipProfile;
    .end local v2           #outboundProxy:Ljava/lang/String;
    .end local v3           #properties:Ljava/util/Properties;
    .end local v4           #provider:Ljavax/sip/SipProvider;
    .end local v5           #sipFactory:Ljavax/sip/SipFactory;
    .end local v6           #stack:Ljavax/sip/SipStack;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 157
    .restart local v1       #myself:Landroid/net/sip/SipProfile;
    .restart local v2       #outboundProxy:Ljava/lang/String;
    .restart local v3       #properties:Ljava/util/Properties;
    .restart local v5       #sipFactory:Ljavax/sip/SipFactory;
    .restart local v6       #stack:Ljavax/sip/SipStack;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 158
    .local v0, e:Ljavax/sip/InvalidArgumentException;
    :try_start_4
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    .end local v0           #e:Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 161
    .local v0, e:Ljava/util/TooManyListenersException;
    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "SipSessionGroup constructor"

    invoke-direct {v7, v8, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
