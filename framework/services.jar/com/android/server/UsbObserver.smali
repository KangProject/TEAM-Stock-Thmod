.class Lcom/android/server/UsbObserver;
.super Landroid/os/UEventObserver;
.source "UsbObserver.java"


# static fields
.field private static final LOG:Z = false

.field private static final MSG_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final USB_COMPOSITE_CLASS_PATH:Ljava/lang/String; = "/sys/class/usb_composite"

.field private static final USB_CONFIGURATION_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_configuration"

.field private static final USB_CONFIGURATION_PATH:Ljava/lang/String; = "/sys/class/switch/usb_configuration/state"

.field private static final USB_FUNCTIONS_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/usb_composite/"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisabledFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledFunctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Lcom/android/server/PowerManagerService;

.field private mPreviousUsbConfig:I

.field private mSystemReady:Z

.field private mUsbConfig:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/android/server/UsbObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 50
    iput v0, p0, Lcom/android/server/UsbObserver;->mUsbConfig:I

    .line 51
    iput v0, p0, Lcom/android/server/UsbObserver;->mPreviousUsbConfig:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/UsbObserver;->mEnabledFunctions:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/UsbObserver;->mDisabledFunctions:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Lcom/android/server/UsbObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/UsbObserver$1;-><init>(Lcom/android/server/UsbObserver;)V

    iput-object v0, p0, Lcom/android/server/UsbObserver;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/android/server/UsbObserver;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/android/server/UsbObserver;->init()V

    .line 67
    const-string v0, "DEVPATH=/devices/virtual/switch/usb_configuration"

    invoke-virtual {p0, v0}, Lcom/android/server/UsbObserver;->startObserving(Ljava/lang/String;)V

    .line 68
    const-string v0, "DEVPATH=/devices/virtual/usb_composite/"

    invoke-virtual {p0, v0}, Lcom/android/server/UsbObserver;->startObserving(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UsbObserver;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/UsbObserver;->mEnabledFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/UsbObserver;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/UsbObserver;->mDisabledFunctions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/UsbObserver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/UsbObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/UsbObserver;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/UsbObserver;->mUsbConfig:I

    return v0
.end method

.method private final init()V
    .registers 13

    .prologue
    const/16 v9, 0x400

    const-string v11, ""

    .line 116
    new-array v0, v9, [C

    .line 119
    .local v0, buffer:[C
    :try_start_6
    new-instance v2, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/usb_configuration/state"

    invoke-direct {v2, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, file:Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v2, v0, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 121
    .local v6, len:I
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/server/UsbObserver;->mUsbConfig:I

    iput v9, p0, Lcom/android/server/UsbObserver;->mPreviousUsbConfig:I
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2a} :catch_71
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2a} :catch_7b

    .line 130
    .end local v2           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    :goto_2a
    :try_start_2a
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/class/usb_composite"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 131
    .local v3, files:[Ljava/io/File;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_36
    array-length v9, v3

    if-ge v5, v9, :cond_94

    .line 132
    new-instance v2, Ljava/io/File;

    aget-object v9, v3, v5

    const-string v10, "enable"

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v2, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 134
    .local v7, reader:Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v7, v0, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 135
    .restart local v6       #len:I
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 136
    .local v8, value:I
    aget-object v9, v3, v5

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, functionName:Ljava/lang/String;
    const/4 v9, 0x1

    if-ne v8, v9, :cond_85

    .line 138
    iget-object v9, p0, Lcom/android/server/UsbObserver;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_6e} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_6e} :catch_95

    .line 131
    :goto_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 123
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #functionName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #reader:Ljava/io/FileReader;
    .end local v8           #value:I
    :catch_71
    move-exception v9

    move-object v1, v9

    .line 124
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v9, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    const-string v10, "This kernel does not have USB configuration switch support"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 125
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_7b
    move-exception v9

    move-object v1, v9

    .line 126
    .local v1, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 140
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #functionName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #len:I
    .restart local v7       #reader:Ljava/io/FileReader;
    .restart local v8       #value:I
    :cond_85
    :try_start_85
    iget-object v9, p0, Lcom/android/server/UsbObserver;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_8a} :catch_8b
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_95

    goto :goto_6e

    .line 143
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #functionName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #reader:Ljava/io/FileReader;
    .end local v8           #value:I
    :catch_8b
    move-exception v9

    move-object v1, v9

    .line 144
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v9, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    const-string v10, "This kernel does not have USB composite class support"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_94
    :goto_94
    return-void

    .line 145
    :catch_95
    move-exception v9

    move-object v1, v9

    .line 146
    .local v1, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    const-string v10, ""

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_94
.end method

.method private final update()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/UsbObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 11
    .parameter "event"

    .prologue
    .line 73
    sget-object v6, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 74
    sget-object v6, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB UEVENT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_25
    monitor-enter p0

    .line 78
    :try_start_26
    const-string v6, "SWITCH_STATE"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_60

    move-result-object v5

    .line 79
    .local v5, switchState:Ljava/lang/String;
    if-eqz v5, :cond_63

    .line 81
    :try_start_2e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 82
    .local v4, newConfig:I
    iget v6, p0, Lcom/android/server/UsbObserver;->mUsbConfig:I

    if-eq v4, v6, :cond_43

    .line 83
    iget v6, p0, Lcom/android/server/UsbObserver;->mUsbConfig:I

    iput v6, p0, Lcom/android/server/UsbObserver;->mPreviousUsbConfig:I

    .line 84
    iput v4, p0, Lcom/android/server/UsbObserver;->mUsbConfig:I

    .line 86
    iget-boolean v6, p0, Lcom/android/server/UsbObserver;->mSystemReady:Z

    if-eqz v6, :cond_43

    .line 87
    invoke-direct {p0}, Lcom/android/server/UsbObserver;->update()V
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_60
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_43} :catch_45

    .line 113
    .end local v4           #newConfig:I
    :cond_43
    :goto_43
    :try_start_43
    monitor-exit p0

    .line 114
    return-void

    .line 90
    :catch_45
    move-exception v6

    move-object v0, v6

    .line 91
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/server/UsbObserver;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse switch state from event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 113
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #switchState:Ljava/lang/String;
    :catchall_60
    move-exception v6

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_43 .. :try_end_62} :catchall_60

    throw v6

    .line 94
    .restart local v5       #switchState:Ljava/lang/String;
    :cond_63
    :try_start_63
    const-string v6, "FUNCTION"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, function:Ljava/lang/String;
    const-string v6, "ENABLED"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, enabledStr:Ljava/lang/String;
    if-eqz v3, :cond_43

    if-eqz v2, :cond_43

    .line 99
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    .local v1, enabled:Z
    if-eqz v1, :cond_8e

    .line 101
    iget-object v6, p0, Lcom/android/server/UsbObserver;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_88

    .line 102
    iget-object v6, p0, Lcom/android/server/UsbObserver;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_88
    iget-object v6, p0, Lcom/android/server/UsbObserver;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_43

    .line 106
    :cond_8e
    iget-object v6, p0, Lcom/android/server/UsbObserver;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 107
    iget-object v6, p0, Lcom/android/server/UsbObserver;->mDisabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_9b
    iget-object v6, p0, Lcom/android/server/UsbObserver;->mEnabledFunctions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_a0
    .catchall {:try_start_63 .. :try_end_a0} :catchall_60

    goto :goto_43
.end method

.method systemReady()V
    .registers 2

    .prologue
    .line 151
    monitor-enter p0

    .line 152
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/UsbObserver;->update()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UsbObserver;->mSystemReady:Z

    .line 154
    monitor-exit p0

    .line 155
    return-void

    .line 154
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
