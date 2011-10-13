.class Landroid/media/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1760
    iput-object p1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    .line 1761
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1762
    invoke-static {p1}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1764
    invoke-static {p1}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notifications_use_ring_volume"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1766
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    .line 1770
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1771
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1772
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1775
    .local v9, ringerModeAffectedStreams:I
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)I

    move-result v0

    if-eq v9, v0, :cond_0

    .line 1780
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v9}, Landroid/media/AudioService;->access$4302(Landroid/media/AudioService;I)I

    .line 1781
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;IZ)V

    .line 1784
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notifications_use_ring_volume"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1787
    .local v8, notificationsUseRingVolume:I
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v0

    if-eq v8, v0, :cond_1

    .line 1788
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v8}, Landroid/media/AudioService;->access$4402(Landroid/media/AudioService;I)I

    .line 1789
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1790
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 1791
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setVolumeIndexSettingName(Ljava/lang/String;)V

    .line 1804
    :cond_1
    :goto_0
    monitor-exit v10

    .line 1805
    return-void

    .line 1794
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 1795
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setVolumeIndexSettingName(Ljava/lang/String;)V

    .line 1800
    iget-object v0, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/media/AudioService$SettingsObserver;->this$0:Landroid/media/AudioService;

    invoke-static {v6}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    .line 1804
    .end local v8           #notificationsUseRingVolume:I
    .end local v9           #ringerModeAffectedStreams:I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
