.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field static final BRIGHTNESS_MODE_USER:I = 0x0

.field static final LIGHT_FLASH_HARDWARE:I = 0x2

.field static final LIGHT_FLASH_NONE:I = 0x0

.field static final LIGHT_FLASH_TIMED:I = 0x1

.field static final LIGHT_ID_ATTENTION:I = 0x5

.field static final LIGHT_ID_BACKLIGHT:I = 0x0

.field static final LIGHT_ID_BATTERY:I = 0x3

.field static final LIGHT_ID_BLUETOOTH:I = 0x6

.field static final LIGHT_ID_BUTTONS:I = 0x2

.field static final LIGHT_ID_COUNT:I = 0x8

.field static final LIGHT_ID_KEYBOARD:I = 0x1

.field static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field static final LIGHT_ID_WIFI:I = 0x7

.field private static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/16 v4, 0x8

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v1, v4, [Lcom/android/server/LightsService$Light;

    iput-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    .line 146
    new-instance v1, Lcom/android/server/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 203
    new-instance v1, Lcom/android/server/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    .line 184
    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mNativePointer:I

    .line 185
    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    .line 187
    const-string v1, "hardware"

    iget-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    if-ge v0, v4, :cond_36

    .line 190
    iget-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v2, Lcom/android/server/LightsService$Light;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v2, v1, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 192
    :cond_36
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LightsService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$200(IIIIIII)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 35
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private static native setLight_native(IIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    .line 196
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 197
    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .registers 3
    .parameter "id"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method
