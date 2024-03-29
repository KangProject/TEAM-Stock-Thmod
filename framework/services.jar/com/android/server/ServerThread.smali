.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final INCLUDE_DEMO:Z = false

.field private static final LOG_BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 71

    .prologue
    .line 85
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 88
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 90
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 94
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 98
    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 100
    .local v58, shutdownAction:Ljava/lang/String;
    if-eqz v58, :cond_52

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_52

    .line 101
    const/4 v5, 0x0

    move-object/from16 v0, v58

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_45a

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 104
    .local v55, reboot:Z
    :goto_37
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_45f

    .line 105
    const/4 v5, 0x1

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v58

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v54

    .line 110
    .local v54, reason:Ljava/lang/String;
    :goto_4b
    move/from16 v0, v55

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 114
    .end local v54           #reason:Ljava/lang/String;
    .end local v55           #reboot:Z
    :cond_52
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 115
    .local v41, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_463

    const/4 v5, 0x0

    move/from16 v40, v5

    .line 118
    .local v40, factoryTest:I
    :goto_66
    const/16 v46, 0x0

    .line 119
    .local v46, lights:Lcom/android/server/LightsService;
    const/16 v53, 0x0

    .line 120
    .local v53, power:Lcom/android/server/PowerManagerService;
    const/16 v28, 0x0

    .line 121
    .local v28, battery:Lcom/android/server/BatteryService;
    const/16 v34, 0x0

    .line 122
    .local v34, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v52, 0x0

    .line 123
    .local v52, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 124
    .local v6, context:Landroid/content/Context;
    const/16 v69, 0x0

    .line 125
    .local v69, wm:Lcom/android/server/WindowManagerService;
    const/16 v29, 0x0

    .line 126
    .local v29, bluetooth:Landroid/server/BluetoothService;
    const/16 v31, 0x0

    .line 127
    .local v31, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v42, 0x0

    .line 128
    .local v42, headset:Lcom/android/server/HeadsetObserver;
    const/16 v37, 0x0

    .line 129
    .local v37, dock:Lcom/android/server/DockObserver;
    const/16 v65, 0x0

    .line 130
    .local v65, usb:Lcom/android/server/UsbObserver;
    const/16 v63, 0x0

    .line 131
    .local v63, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v56, 0x0

    .line 132
    .local v56, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v61, 0x0

    .line 136
    .local v61, throttle:Lcom/android/server/ThrottleService;
    :try_start_83
    const-string v5, "SystemServer"

    const-string v7, "Entropy Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 139
    const-string v5, "SystemServer"

    const-string v7, "Power Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_a0} :catch_6db

    .line 141
    .end local v53           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_a0
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 143
    const-string v5, "SystemServer"

    const-string v7, "Activity Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static/range {v40 .. v40}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    .line 146
    const-string v5, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 151
    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz v40, :cond_46b

    const/4 v5, 0x1

    :goto_ce
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v52

    .line 155
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 157
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_de
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_de} :catch_47e

    .line 161
    :try_start_de
    const-string v5, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v5, "account"

    new-instance v7, Landroid/accounts/AccountManagerService;

    invoke-direct {v7, v6}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_ef} :catch_46e
    .catch Ljava/lang/RuntimeException; {:try_start_de .. :try_end_ef} :catch_47e

    .line 168
    :goto_ef
    :try_start_ef
    const-string v5, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-ne v0, v1, :cond_490

    const/4 v5, 0x1

    :goto_fd
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 172
    const-string v5, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 175
    const-string v5, "SystemServer"

    const-string v7, "Battery Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v7, Lcom/android/server/BatteryService;

    invoke-direct {v7, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_116} :catch_47e

    .line 177
    .end local v28           #battery:Lcom/android/server/BatteryService;
    .local v7, battery:Lcom/android/server/BatteryService;
    :try_start_116
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 179
    const-string v5, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v47, Lcom/android/server/LightsService;

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_12a
    .catch Ljava/lang/RuntimeException; {:try_start_116 .. :try_end_12a} :catch_6e4

    .line 182
    .end local v46           #lights:Lcom/android/server/LightsService;
    .local v47, lights:Lcom/android/server/LightsService;
    :try_start_12a
    const-string v5, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v5, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 187
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v47

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 189
    const-string v5, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .line 191
    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 193
    const-string v5, "SystemServer"

    const-string v10, "Init Watchdog"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 197
    const-string v5, "SystemServer"

    const-string v9, "Window Manager"

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-eq v0, v1, :cond_493

    const/4 v5, 0x1

    :goto_179
    invoke-static {v6, v8, v5}, Lcom/android/server/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;

    move-result-object v69

    .line 200
    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 202
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/WindowManagerService;)V

    .line 208
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_496

    .line 209
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (emulator)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1ae
    .catch Ljava/lang/RuntimeException; {:try_start_12a .. :try_end_1ae} :catch_4ab

    :goto_1ae
    move-object/from16 v46, v47

    .line 239
    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    :goto_1b0
    const/16 v35, 0x0

    .line 240
    .local v35, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v59, 0x0

    .line 241
    .local v59, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v44, 0x0

    .line 242
    .local v44, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v26, 0x0

    .line 243
    .local v26, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v50, 0x0

    .line 244
    .local v50, notification:Lcom/android/server/NotificationManagerService;
    const/16 v67, 0x0

    .line 245
    .local v67, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v48, 0x0

    .line 247
    .local v48, location:Lcom/android/server/LocationManagerService;
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-eq v0, v1, :cond_3bc

    .line 249
    :try_start_1c4
    const-string v5, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v36, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v36

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d3
    .catch Ljava/lang/Throwable; {:try_start_1c4 .. :try_end_1d3} :catch_502

    .line 251
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v36, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1d3
    const-string v5, "device_policy"

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1db
    .catch Ljava/lang/Throwable; {:try_start_1d3 .. :try_end_1db} :catch_6d4

    move-object/from16 v35, v36

    .line 257
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_1dd
    :try_start_1dd
    const-string v5, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v60, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1ec
    .catch Ljava/lang/Throwable; {:try_start_1dd .. :try_end_1ec} :catch_512

    .line 259
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v60, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1ec
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f4
    .catch Ljava/lang/Throwable; {:try_start_1ec .. :try_end_1f4} :catch_6cd

    move-object/from16 v59, v60

    .line 265
    .end local v60           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_1f6
    :try_start_1f6
    const-string v5, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v5, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_207
    .catch Ljava/lang/Throwable; {:try_start_1f6 .. :try_end_207} :catch_522

    .line 273
    :goto_207
    :try_start_207
    const-string v5, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v45, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v45

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;)V
    :try_end_218
    .catch Ljava/lang/Throwable; {:try_start_207 .. :try_end_218} :catch_532

    .line 275
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .local v45, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_218
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_220
    .catch Ljava/lang/Throwable; {:try_start_218 .. :try_end_220} :catch_6c6

    move-object/from16 v44, v45

    .line 281
    .end local v45           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_222
    :try_start_222
    const-string v5, "SystemServer"

    const-string v9, "NetStat Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v5, "netstat"

    new-instance v9, Lcom/android/server/NetStatService;

    invoke-direct {v9, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_233
    .catch Ljava/lang/Throwable; {:try_start_222 .. :try_end_233} :catch_542

    .line 288
    :goto_233
    :try_start_233
    const-string v5, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v5, "network_management"

    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_243
    .catch Ljava/lang/Throwable; {:try_start_233 .. :try_end_243} :catch_552

    .line 297
    :goto_243
    :try_start_243
    const-string v5, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v34

    .line 299
    const-string v5, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_256
    .catch Ljava/lang/Throwable; {:try_start_243 .. :try_end_256} :catch_562

    .line 305
    :goto_256
    :try_start_256
    const-string v5, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v62, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v62

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_265
    .catch Ljava/lang/Throwable; {:try_start_256 .. :try_end_265} :catch_572

    .line 307
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .local v62, throttle:Lcom/android/server/ThrottleService;
    :try_start_265
    const-string v5, "throttle"

    move-object v0, v5

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26d
    .catch Ljava/lang/Throwable; {:try_start_265 .. :try_end_26d} :catch_6bf

    move-object/from16 v61, v62

    .line 314
    .end local v62           #throttle:Lcom/android/server/ThrottleService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    :goto_26f
    :try_start_26f
    const-string v5, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v5, "accessibility"

    new-instance v9, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_280
    .catch Ljava/lang/Throwable; {:try_start_26f .. :try_end_280} :catch_582

    .line 326
    :goto_280
    :try_start_280
    const-string v5, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v5, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_291
    .catch Ljava/lang/Throwable; {:try_start_280 .. :try_end_291} :catch_592

    .line 333
    :goto_291
    :try_start_291
    const-string v5, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v51, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v51

    move-object v1, v6

    move-object/from16 v2, v59

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2a4
    .catch Ljava/lang/Throwable; {:try_start_291 .. :try_end_2a4} :catch_5a2

    .line 335
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .local v51, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2a4
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2ac
    .catch Ljava/lang/Throwable; {:try_start_2a4 .. :try_end_2ac} :catch_6b8

    move-object/from16 v50, v51

    .line 341
    .end local v51           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    :goto_2ae
    :try_start_2ae
    const-string v5, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v5, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2bf
    .catch Ljava/lang/Throwable; {:try_start_2ae .. :try_end_2bf} :catch_5b2

    .line 349
    :goto_2bf
    :try_start_2bf
    const-string v5, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v49, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v49

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2ce
    .catch Ljava/lang/Throwable; {:try_start_2bf .. :try_end_2ce} :catch_5c2

    .line 351
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .local v49, location:Lcom/android/server/LocationManagerService;
    :try_start_2ce
    const-string v5, "location"

    move-object v0, v5

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d6
    .catch Ljava/lang/Throwable; {:try_start_2ce .. :try_end_2d6} :catch_6b1

    move-object/from16 v48, v49

    .line 357
    .end local v49           #location:Lcom/android/server/LocationManagerService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    :goto_2d8
    :try_start_2d8
    const-string v5, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v5, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e9
    .catch Ljava/lang/Throwable; {:try_start_2d8 .. :try_end_2e9} :catch_5d2

    .line 370
    :goto_2e9
    :try_start_2e9
    const-string v5, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v5, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v6, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_301
    .catch Ljava/lang/Throwable; {:try_start_2e9 .. :try_end_301} :catch_5e2

    .line 378
    :goto_301
    :try_start_301
    const-string v5, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v68, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v68

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_310
    .catch Ljava/lang/Throwable; {:try_start_301 .. :try_end_310} :catch_5f2

    .line 380
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v68, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_310
    const-string v5, "wallpaper"

    move-object v0, v5

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_318
    .catch Ljava/lang/Throwable; {:try_start_310 .. :try_end_318} :catch_6aa

    move-object/from16 v67, v68

    .line 386
    .end local v68           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_31a
    :try_start_31a
    const-string v5, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v5, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32b
    .catch Ljava/lang/Throwable; {:try_start_31a .. :try_end_32b} :catch_602

    .line 393
    :goto_32b
    :try_start_32b
    const-string v5, "SystemServer"

    const-string v9, "Headset Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v43, Lcom/android/server/HeadsetObserver;

    move-object/from16 v0, v43

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HeadsetObserver;-><init>(Landroid/content/Context;)V
    :try_end_33a
    .catch Ljava/lang/Throwable; {:try_start_32b .. :try_end_33a} :catch_612

    .end local v42           #headset:Lcom/android/server/HeadsetObserver;
    .local v43, headset:Lcom/android/server/HeadsetObserver;
    move-object/from16 v42, v43

    .line 401
    .end local v43           #headset:Lcom/android/server/HeadsetObserver;
    .restart local v42       #headset:Lcom/android/server/HeadsetObserver;
    :goto_33c
    :try_start_33c
    const-string v5, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v38, Lcom/android/server/DockObserver;

    move-object/from16 v0, v38

    move-object v1, v6

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_34c
    .catch Ljava/lang/Throwable; {:try_start_33c .. :try_end_34c} :catch_622

    .end local v37           #dock:Lcom/android/server/DockObserver;
    .local v38, dock:Lcom/android/server/DockObserver;
    move-object/from16 v37, v38

    .line 409
    .end local v38           #dock:Lcom/android/server/DockObserver;
    .restart local v37       #dock:Lcom/android/server/DockObserver;
    :goto_34e
    :try_start_34e
    const-string v5, "SystemServer"

    const-string v9, "USB Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v66, Lcom/android/server/UsbObserver;

    move-object/from16 v0, v66

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UsbObserver;-><init>(Landroid/content/Context;)V
    :try_end_35d
    .catch Ljava/lang/Throwable; {:try_start_34e .. :try_end_35d} :catch_632

    .end local v65           #usb:Lcom/android/server/UsbObserver;
    .local v66, usb:Lcom/android/server/UsbObserver;
    move-object/from16 v65, v66

    .line 417
    .end local v66           #usb:Lcom/android/server/UsbObserver;
    .restart local v65       #usb:Lcom/android/server/UsbObserver;
    :goto_35f
    :try_start_35f
    const-string v5, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v64, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v64

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_36e
    .catch Ljava/lang/Throwable; {:try_start_35f .. :try_end_36e} :catch_642

    .end local v63           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v64, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v63, v64

    .line 425
    .end local v64           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v63       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_370
    :try_start_370
    const-string v5, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v5, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_381
    .catch Ljava/lang/Throwable; {:try_start_370 .. :try_end_381} :catch_652

    .line 433
    :goto_381
    :try_start_381
    const-string v5, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v27, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v27

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_390
    .catch Ljava/lang/Throwable; {:try_start_381 .. :try_end_390} :catch_662

    .line 435
    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .local v27, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_390
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_398
    .catch Ljava/lang/Throwable; {:try_start_390 .. :try_end_398} :catch_6a4

    move-object/from16 v26, v27

    .line 441
    .end local v27           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v26       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_39a
    :try_start_39a
    const-string v5, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v57, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v57

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a9
    .catch Ljava/lang/Throwable; {:try_start_39a .. :try_end_3a9} :catch_672

    .end local v56           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v57, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v56, v57

    .line 448
    .end local v57           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v56       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_3ab
    :try_start_3ab
    const-string v5, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v5, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3bc
    .catch Ljava/lang/Throwable; {:try_start_3ab .. :try_end_3bc} :catch_682

    .line 456
    .end local v6           #context:Landroid/content/Context;
    :cond_3bc
    :goto_3bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    const-string v9, "1"

    const-string v10, "persist.service.adb.enable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_692

    const/4 v9, 0x1

    :goto_3d2
    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 465
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/WindowManagerService;->detectSafeMode()Z

    move-result v20

    .line 466
    .local v20, safeMode:Z
    if-eqz v20, :cond_695

    .line 468
    :try_start_3f2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->enterSafeMode()V

    .line 470
    const/4 v5, 0x1

    sput-boolean v5, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 472
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V
    :try_end_403
    .catch Landroid/os/RemoteException; {:try_start_3f2 .. :try_end_403} :catch_6a1

    .line 482
    :goto_403
    if-eqz v35, :cond_408

    .line 483
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V

    .line 486
    :cond_408
    if-eqz v50, :cond_40d

    .line 487
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/NotificationManagerService;->systemReady()V

    .line 490
    :cond_40d
    if-eqz v59, :cond_412

    .line 491
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/StatusBarManagerService;->systemReady()V

    .line 493
    :cond_412
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/WindowManagerService;->systemReady()V

    .line 494
    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 496
    :try_start_418
    invoke-interface/range {v52 .. v52}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_41b
    .catch Landroid/os/RemoteException; {:try_start_418 .. :try_end_41b} :catch_69e

    .line 501
    :goto_41b
    move-object/from16 v12, v59

    .line 502
    .local v12, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object v13, v7

    .line 503
    .local v13, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v14, v34

    .line 504
    .local v14, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v15, v37

    .line 505
    .local v15, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v16, v65

    .line 506
    .local v16, usbF:Lcom/android/server/UsbObserver;
    move-object/from16 v24, v61

    .line 507
    .local v24, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v17, v63

    .line 508
    .local v17, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v19, v26

    .line 509
    .local v19, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v21, v67

    .line 510
    .local v21, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v22, v44

    .line 511
    .local v22, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v18, v56

    .line 512
    .local v18, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v23, v48

    .line 519
    .local v23, locationF:Lcom/android/server/LocationManagerService;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/ServerThread$1;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v24}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Lcom/android/server/StatusBarManagerService;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/UsbObserver;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/ThrottleService;)V

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 545
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_44f

    .line 546
    const-string v5, "SystemServer"

    const-string v6, "Enabled StrictMode for system server main thread."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_44f
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 550
    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 101
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v13           #batteryF:Lcom/android/server/BatteryService;
    .end local v14           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v15           #dockF:Lcom/android/server/DockObserver;
    .end local v16           #usbF:Lcom/android/server/UsbObserver;
    .end local v17           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v18           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v19           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v20           #safeMode:Z
    .end local v21           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v22           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v23           #locationF:Lcom/android/server/LocationManagerService;
    .end local v24           #throttleF:Lcom/android/server/ThrottleService;
    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v34           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v37           #dock:Lcom/android/server/DockObserver;
    .end local v40           #factoryTest:I
    .end local v41           #factoryTestStr:Ljava/lang/String;
    .end local v42           #headset:Lcom/android/server/HeadsetObserver;
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .end local v52           #pm:Landroid/content/pm/IPackageManager;
    .end local v56           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .end local v63           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v65           #usb:Lcom/android/server/UsbObserver;
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v69           #wm:Lcom/android/server/WindowManagerService;
    :cond_45a
    const/4 v5, 0x0

    move/from16 v55, v5

    goto/16 :goto_37

    .line 107
    .restart local v55       #reboot:Z
    :cond_45f
    const/16 v54, 0x0

    .restart local v54       #reason:Ljava/lang/String;
    goto/16 :goto_4b

    .line 115
    .end local v54           #reason:Ljava/lang/String;
    .end local v55           #reboot:Z
    .restart local v41       #factoryTestStr:Ljava/lang/String;
    :cond_463
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v40, v5

    goto/16 :goto_66

    .line 152
    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v34       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v37       #dock:Lcom/android/server/DockObserver;
    .restart local v40       #factoryTest:I
    .restart local v42       #headset:Lcom/android/server/HeadsetObserver;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    .restart local v52       #pm:Landroid/content/pm/IPackageManager;
    .restart local v56       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    .restart local v63       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v65       #usb:Lcom/android/server/UsbObserver;
    .restart local v69       #wm:Lcom/android/server/WindowManagerService;
    :cond_46b
    const/4 v5, 0x0

    goto/16 :goto_ce

    .line 164
    :catch_46e
    move-exception v5

    move-object/from16 v39, v5

    .line 165
    .local v39, e:Ljava/lang/Throwable;
    :try_start_471
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47c
    .catch Ljava/lang/RuntimeException; {:try_start_471 .. :try_end_47c} :catch_47e

    goto/16 :goto_ef

    .line 235
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_47e
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v7, v28

    .line 236
    .end local v28           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .local v39, e:Ljava/lang/RuntimeException;
    :goto_483
    const-string v5, "System"

    const-string v9, "Failure starting core service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b0

    .line 169
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v39           #e:Ljava/lang/RuntimeException;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    :cond_490
    const/4 v5, 0x0

    goto/16 :goto_fd

    .line 198
    .end local v28           #battery:Lcom/android/server/BatteryService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :cond_493
    const/4 v5, 0x0

    goto/16 :goto_179

    .line 211
    :cond_496
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-ne v0, v1, :cond_4b1

    .line 212
    :try_start_49c
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (factory test)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_1ae

    .line 235
    :catch_4ab
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto :goto_483

    .line 215
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :cond_4b1
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v30, Landroid/server/BluetoothService;

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_4c0
    .catch Ljava/lang/RuntimeException; {:try_start_49c .. :try_end_4c0} :catch_4ab

    .line 217
    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .local v30, bluetooth:Landroid/server/BluetoothService;
    :try_start_4c0
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 218
    invoke-virtual/range {v30 .. v30}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 219
    new-instance v32, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v32

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_4d5
    .catch Ljava/lang/RuntimeException; {:try_start_4c0 .. :try_end_4d5} :catch_6e9

    .line 220
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v32, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_4d5
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 226
    .local v33, bluetoothOn:I
    if-lez v33, :cond_4fc

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 229
    .local v25, airplaneModeOn:I
    if-nez v25, :cond_4fc

    .line 230
    invoke-virtual/range {v30 .. v30}, Landroid/server/BluetoothService;->enable()Z
    :try_end_4fc
    .catch Ljava/lang/RuntimeException; {:try_start_4d5 .. :try_end_4fc} :catch_6f2

    .end local v25           #airplaneModeOn:I
    :cond_4fc
    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_1ae

    .line 252
    .end local v33           #bluetoothOn:I
    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v26       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_502
    move-exception v5

    move-object/from16 v39, v5

    .line 253
    .local v39, e:Ljava/lang/Throwable;
    :goto_505
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DevicePolicyService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1dd

    .line 260
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_512
    move-exception v5

    move-object/from16 v39, v5

    .line 261
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_515
    const-string v5, "SystemServer"

    const-string v9, "Failure starting StatusBarManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f6

    .line 268
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_522
    move-exception v5

    move-object/from16 v39, v5

    .line 269
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_207

    .line 276
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_532
    move-exception v5

    move-object/from16 v39, v5

    .line 277
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_535
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_222

    .line 283
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_542
    move-exception v5

    move-object/from16 v39, v5

    .line 284
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_233

    .line 292
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_552
    move-exception v5

    move-object/from16 v39, v5

    .line 293
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkManagement Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_243

    .line 300
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_562
    move-exception v5

    move-object/from16 v39, v5

    .line 301
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_256

    .line 309
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_572
    move-exception v5

    move-object/from16 v39, v5

    .line 310
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_575
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ThrottleService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26f

    .line 317
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_582
    move-exception v5

    move-object/from16 v39, v5

    .line 318
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_280

    .line 328
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_592
    move-exception v5

    move-object/from16 v39, v5

    .line 329
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_291

    .line 336
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_5a2
    move-exception v5

    move-object/from16 v39, v5

    .line 337
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_5a5
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2ae

    .line 344
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_5b2
    move-exception v5

    move-object/from16 v39, v5

    .line 345
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2bf

    .line 352
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_5c2
    move-exception v5

    move-object/from16 v39, v5

    .line 353
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_5c5
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d8

    .line 360
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_5d2
    move-exception v5

    move-object/from16 v39, v5

    .line 361
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e9

    .line 373
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_5e2
    move-exception v5

    move-object/from16 v39, v5

    .line 374
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DropBoxManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_301

    .line 381
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_5f2
    move-exception v5

    move-object/from16 v39, v5

    .line 382
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_5f5
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31a

    .line 388
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_602
    move-exception v5

    move-object/from16 v39, v5

    .line 389
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32b

    .line 396
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_612
    move-exception v5

    move-object/from16 v39, v5

    .line 397
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HeadsetObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33c

    .line 404
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_622
    move-exception v5

    move-object/from16 v39, v5

    .line 405
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34e

    .line 412
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_632
    move-exception v5

    move-object/from16 v39, v5

    .line 413
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35f

    .line 420
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_642
    move-exception v5

    move-object/from16 v39, v5

    .line 421
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UiModeManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_370

    .line 428
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_652
    move-exception v5

    move-object/from16 v39, v5

    .line 429
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_381

    .line 436
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_662
    move-exception v5

    move-object/from16 v39, v5

    .line 437
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_665
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39a

    .line 443
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_672
    move-exception v5

    move-object/from16 v39, v5

    .line 444
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3ab

    .line 450
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_682
    move-exception v5

    move-object/from16 v39, v5

    .line 451
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting DiskStats Service"

    .end local v6           #context:Landroid/content/Context;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3bc

    .line 456
    .end local v39           #e:Ljava/lang/Throwable;
    :cond_692
    const/4 v9, 0x0

    goto/16 :goto_3d2

    .line 477
    .restart local v20       #safeMode:Z
    :cond_695
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_403

    .line 497
    :catch_69e
    move-exception v5

    goto/16 :goto_41b

    .line 473
    :catch_6a1
    move-exception v5

    goto/16 :goto_403

    .line 436
    .end local v20           #safeMode:Z
    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v27       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_6a4
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v26, v27

    .end local v27           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v26       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_665

    .line 381
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v68       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_6aa
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v67, v68

    .end local v68           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5f5

    .line 352
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .restart local v49       #location:Lcom/android/server/LocationManagerService;
    :catch_6b1
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v48, v49

    .end local v49           #location:Lcom/android/server/LocationManagerService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5c5

    .line 336
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v51       #notification:Lcom/android/server/NotificationManagerService;
    :catch_6b8
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v50, v51

    .end local v51           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5a5

    .line 309
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .restart local v62       #throttle:Lcom/android/server/ThrottleService;
    :catch_6bf
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v61, v62

    .end local v62           #throttle:Lcom/android/server/ThrottleService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_575

    .line 276
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v45       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_6c6
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v44, v45

    .end local v45           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_535

    .line 260
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v60       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_6cd
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v59, v60

    .end local v60           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_515

    .line 252
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_6d4
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v35, v36

    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_505

    .line 235
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v28       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #power:Lcom/android/server/PowerManagerService;
    :catch_6db
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v7, v28

    .end local v28           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v8, v53

    .end local v53           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_483

    :catch_6e4
    move-exception v5

    move-object/from16 v39, v5

    goto/16 :goto_483

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :catch_6e9
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_483

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v30       #bluetooth:Landroid/server/BluetoothService;
    .restart local v32       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :catch_6f2
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v31, v32

    .end local v32           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v29, v30

    .end local v30           #bluetooth:Landroid/server/BluetoothService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_483
.end method
