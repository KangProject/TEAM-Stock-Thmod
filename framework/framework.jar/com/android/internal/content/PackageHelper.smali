.class public Lcom/android/internal/content/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final TAG:Ljava/lang/String; = "PackageHelper"

.field private static final localLOGV:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSdDir(JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "sizeBytes"
    .parameter "cid"
    .parameter "sdEncKey"
    .parameter "uid"

    .prologue
    .line 70
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 71
    .local v0, mountService:Landroid/os/storage/IMountService;
    const/16 v1, 0x14

    shr-long v1, p0, v1

    long-to-int v2, v1

    .line 72
    .local v2, sizeMb:I
    mul-int/lit16 v1, v2, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-long v3, v1

    sub-long v3, p0, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 76
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 78
    const-string v1, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size of container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    const-string v3, "fat"

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IMountService;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 83
    .local p0, rc:I
    if-eqz p0, :cond_1

    .line 84
    const-string p0, "PackageHelper"

    .end local p0           #rc:I
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create secure container "

    .end local p3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 p0, 0x0

    .line 94
    .end local p2
    .end local p4
    :goto_0
    return-object p0

    .line 87
    .restart local p0       #rc:I
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    invoke-interface {v0, p2}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    .local p0, cachePath:Ljava/lang/String;
    const-string p1, "PackageHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Created secure container "

    .end local p4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string p3, " at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local p0           #cachePath:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 92
    .local p0, e:Landroid/os/RemoteException;
    const-string p0, "PackageHelper"

    .end local p0           #e:Landroid/os/RemoteException;
    const-string p1, "MountService running?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static destroySdDir(Ljava/lang/String;)Z
    .locals 9
    .parameter "cid"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "Failed to destroy container "

    const-string v5, "PackageHelper"

    .line 170
    :try_start_0
    const-string v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcibly destroying container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3}, Landroid/os/storage/IMountService;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v1

    .line 172
    .local v1, rc:I
    if-eqz v1, :cond_0

    .line 173
    const-string v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    .line 181
    .end local v1           #rc:I
    :goto_0
    return v2

    .restart local v1       #rc:I
    :cond_0
    move v2, v7

    .line 176
    goto :goto_0

    .line 177
    .end local v1           #rc:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to destroy container "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 181
    goto :goto_0
.end method

.method public static finalizeSdDir(Ljava/lang/String;)Z
    .locals 8
    .parameter "cid"

    .prologue
    const/4 v5, 0x0

    const-string v7, "PackageHelper"

    const-string v6, "Failed to finalize container "

    .line 155
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/storage/IMountService;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, rc:I
    if-eqz v1, :cond_0

    .line 157
    const-string v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to finalize container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 165
    .end local v1           #rc:I
    :goto_0
    return v2

    .line 160
    .restart local v1       #rc:I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 161
    .end local v1           #rc:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to finalize container "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 165
    goto :goto_0
.end method

.method public static getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 58
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 60
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 62
    :cond_0
    const-string v1, "PackageHelper"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSdDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cid"

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get container path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSecureContainerList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getSecureContainerList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 191
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 188
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get secure container list with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isContainerMounted(Ljava/lang/String;)Z
    .locals 4
    .parameter "cid"

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->isSecureContainerMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 197
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find out if container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mounted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "cid"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    const/4 v7, 0x0

    const-string v6, "PackageHelper"

    .line 99
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p0, p1, p2}, Landroid/os/storage/IMountService;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, rc:I
    if-eqz v2, :cond_0

    .line 101
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mount container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 110
    .end local v2           #rc:I
    :goto_0
    return-object v3

    .line 104
    .restart local v2       #rc:I
    :cond_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 105
    .end local v2           #rc:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 106
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PackageHelper"

    const-string v3, "MountService running?"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    move-object v3, v7

    .line 110
    goto :goto_0

    .line 107
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 108
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    const-string v3, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mountSdDir failed to mount container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "oldId"
    .parameter "newId"

    .prologue
    const/4 v5, 0x0

    const-string v7, "PackageHelper"

    const-string v6, " to "

    .line 129
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/os/storage/IMountService;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, rc:I
    if-eqz v1, :cond_0

    .line 131
    const-string v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "with rc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 140
    .end local v1           #rc:I
    :goto_0
    return v2

    .line 135
    .restart local v1       #rc:I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 136
    .end local v1           #rc:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ot rename  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 140
    goto :goto_0
.end method

.method public static unMountSdDir(Ljava/lang/String;)Z
    .locals 7
    .parameter "cid"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "PackageHelper"

    .line 115
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3}, Landroid/os/storage/IMountService;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v1

    .line 116
    .local v1, rc:I
    if-eqz v1, :cond_0

    .line 117
    const-string v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unmount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with rc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 124
    .end local v1           #rc:I
    :goto_0
    return v2

    .restart local v1       #rc:I
    :cond_0
    move v2, v4

    .line 120
    goto :goto_0

    .line 121
    .end local v1           #rc:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PackageHelper"

    const-string v2, "MountService running?"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 124
    goto :goto_0
.end method
