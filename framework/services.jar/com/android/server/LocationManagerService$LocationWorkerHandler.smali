.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1810
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    .line 1815
    :try_start_1
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v10, :cond_64

    .line 1818
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_5a

    .line 1819
    :try_start_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    .line 1820
    .local v2, location:Landroid/location/Location;
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 1821
    .local v7, provider:Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v10, :cond_45

    move v6, v10

    .line 1823
    .local v6, passive:Z
    :goto_19
    if-nez v6, :cond_48

    .line 1825
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v1, v9, v10

    .local v1, i:I
    :goto_27
    if-ltz v1, :cond_48

    .line 1826
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 1827
    .local v3, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_42

    .line 1828
    invoke-interface {v3, v2}, Lcom/android/server/location/LocationProviderInterface;->updateLocation(Landroid/location/Location;)V

    .line 1825
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 1821
    .end local v1           #i:I
    .end local v3           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v6           #passive:Z
    :cond_45
    const/4 v9, 0x0

    move v6, v9

    goto :goto_19

    .line 1833
    .restart local v6       #passive:Z
    :cond_48
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v9, v7}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 1834
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v9, v2, v6}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    .line 1836
    :cond_55
    monitor-exit v8

    .line 1855
    .end local v2           #location:Landroid/location/Location;
    .end local v6           #passive:Z
    .end local v7           #provider:Ljava/lang/String;
    :cond_56
    :goto_56
    return-void

    .line 1836
    :catchall_57
    move-exception v9

    monitor-exit v8
    :try_end_59
    .catchall {:try_start_c .. :try_end_59} :catchall_57

    :try_start_59
    throw v9
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5a} :catch_5a

    .line 1851
    :catch_5a
    move-exception v8

    move-object v0, v8

    .line 1853
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "LocationManagerService"

    const-string v9, "Exception in LocationWorkerHandler.handleMessage:"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 1837
    .end local v0           #e:Ljava/lang/Exception;
    :cond_64
    :try_start_64
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_56

    .line 1838
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1839
    .local v5, packageName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1842
    .local v4, packageDot:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v8, v8, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v8, :cond_99

    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 1844
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v8, v8, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v8}, Lcom/android/server/location/LocationProviderProxy;->reconnect()V

    .line 1846
    :cond_99
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v8

    if-eqz v8, :cond_56

    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1848
    iget-object v8, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/location/GeocoderProxy;->reconnect()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_b6} :catch_5a

    goto :goto_56
.end method
