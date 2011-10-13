.class public Lcom/android/settings/BootSoundSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootSoundSettingReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x1

    const-string v9, "persist.sys.boot.sound.volume"

    .line 41
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 46
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 48
    .local v1, maxVal:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    const-string v5, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 52
    .local v3, ringerMode:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    const-string v5, "persist.sys.boot.sound.volume"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 62
    .local v2, newVal:I
    mul-int/lit8 v5, v2, 0x64

    div-int v2, v5, v1

    .line 63
    const-string v5, "persist.sys.boot.sound.volume"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v2           #newVal:I
    .end local v3           #ringerMode:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 75
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 76
    .local v4, streamType:I
    const-string v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 78
    .restart local v2       #newVal:I
    if-ne v8, v4, :cond_0

    if-ltz v2, :cond_0

    if-gt v2, v1, :cond_0

    .line 82
    mul-int/lit8 v5, v2, 0x64

    div-int v2, v5, v1

    .line 83
    const-string v5, "persist.sys.boot.sound.volume"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
