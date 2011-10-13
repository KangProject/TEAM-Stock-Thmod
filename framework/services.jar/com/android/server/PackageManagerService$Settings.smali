.class final Lcom/android/server/PackageManagerService$Settings;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    }
.end annotation


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field final mDisabledSysPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSdkPlatform:I

.field mInternalSdkPlatform:I

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$Settings$PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredActivities:Lcom/android/server/IntentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IntentResolver",
            "<",
            "Lcom/android/server/PackageManagerService$PreferredActivity;",
            "Lcom/android/server/PackageManagerService$PreferredActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFilename:Ljava/io/File;

.field private final mSharedUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x1fd

    const/4 v4, -0x1

    .line 7985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7904
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    .line 7907
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    .line 7918
    new-instance v3, Lcom/android/server/PackageManagerService$Settings$1;

    invoke-direct {v3, p0}, Lcom/android/server/PackageManagerService$Settings$1;-><init>(Lcom/android/server/PackageManagerService$Settings;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    .line 7942
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    .line 7944
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    .line 7945
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 7949
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 7953
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    .line 7957
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 7962
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 7968
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    .line 7970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 7982
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 7986
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 7987
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7989
    .local v1, systemDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "secure/system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7990
    .local v2, systemSecureDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7991
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 7992
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 7996
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8000
    new-instance v3, Ljava/io/File;

    const-string v4, "packages.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    .line 8001
    new-instance v3, Ljava/io/File;

    const-string v4, "packages-backup.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 8002
    new-instance v3, Ljava/io/File;

    const-string v4, "packages.list"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    .line 8003
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7900
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 7900
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7900
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 7900
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 7900
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7900
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7900
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7900
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$Settings;->removePackageLP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V
    .registers 9
    .parameter "p"
    .parameter "name"
    .parameter "sharedUser"

    .prologue
    const/4 v2, 0x6

    const-string v4, "Package "

    const-string v3, "; I am not changing its files so it will probably fail!"

    .line 8349
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8350
    if-eqz p3, :cond_5a

    .line 8351
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_5b

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eq v0, p3, :cond_5b

    .line 8352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8356
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8365
    :cond_4f
    :goto_4f
    iget-object v0, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8366
    iput-object p3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8367
    iget v0, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8369
    :cond_5a
    return-void

    .line 8357
    :cond_5b
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget v1, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-eq v0, v1, :cond_4f

    .line 8358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_4f
.end method

.method private addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .parameter "uid"
    .parameter "obj"
    .parameter "name"

    .prologue
    const/16 v3, 0x2710

    const/4 v5, 0x6

    const/4 v4, 0x0

    const-string v6, " name="

    .line 8452
    const/16 v2, 0x2af8

    if-lt p1, v2, :cond_c

    move v2, v4

    .line 8479
    :goto_b
    return v2

    .line 8456
    :cond_c
    if-lt p1, v3, :cond_52

    .line 8457
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8458
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8459
    .local v1, index:I
    :goto_16
    if-lt v1, v0, :cond_21

    .line 8460
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8461
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 8463
    :cond_21
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 8464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, v4

    .line 8467
    goto :goto_b

    .line 8469
    :cond_4b
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8479
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_50
    const/4 v2, 0x1

    goto :goto_b

    .line 8471
    :cond_52
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 8472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, v4

    .line 8475
    goto :goto_b

    .line 8477
    :cond_7c
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_50
.end method

.method private findPackagesWithFlag(I)Ljava/util/Set;
    .registers 6
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8493
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8494
    .local v2, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8496
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_f

    .line 8497
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 8500
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_26
    return-object v2
.end method

.method private getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 26
    .parameter "name"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "vc"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 8188
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8189
    .local v4, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v4, :cond_8b

    .line 8190
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 8192
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_91

    .line 8196
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to update system app code path from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8212
    :cond_43
    :goto_43
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v0, v5

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_d5

    .line 8213
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " shared user changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v7, :cond_cf

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v7, v7, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    :goto_68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p4, :cond_d2

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object v7, v0

    :goto_79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; replacing with new"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8219
    const/4 v4, 0x0

    .line 8229
    :cond_8b
    :goto_8b
    if-nez v4, :cond_1d7

    .line 8232
    if-nez p10, :cond_e0

    .line 8233
    const/4 v5, 0x0

    .line 8301
    .end local p2
    :goto_90
    return-object v5

    .line 8201
    .restart local p2
    :cond_91
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " codePath changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; Retaining data and using new"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8209
    move-object/from16 v0, p7

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_43

    .line 8213
    :cond_cf
    const-string v7, "<nothing>"

    goto :goto_68

    :cond_d2
    const-string v7, "<nothing>"

    goto :goto_79

    .line 8221
    :cond_d5
    and-int/lit8 v5, p9, 0x1

    if-eqz v5, :cond_8b

    .line 8225
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    goto :goto_8b

    .line 8235
    :cond_e0
    if-eqz p2, :cond_14e

    .line 8237
    new-instance v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v4           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v5, v0

    move-object v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8243
    .restart local v4       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v13, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 8244
    .local v13, s:Lcom/android/server/PackageManagerService$PackageSignatures;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V

    .line 8245
    iput-object v13, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 8246
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8247
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v5, v0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8248
    move-object/from16 v0, p2

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 8249
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8250
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object p1, v0

    .line 8252
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 8290
    .end local v13           #s:Lcom/android/server/PackageManagerService$PackageSignatures;
    .end local p2
    :goto_12a
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-gez v5, :cond_1cd

    .line 8291
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be assigned a valid uid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8293
    const/4 v5, 0x0

    goto/16 :goto_90

    .line 8254
    .restart local p2
    :cond_14e
    new-instance v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v4           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8259
    .restart local v4       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 8260
    move-object/from16 v0, p4

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8261
    if-eqz p4, :cond_179

    .line 8262
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move v5, v0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto :goto_12a

    .line 8265
    :cond_179
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8266
    .local v12, dis:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v12, :cond_1c5

    .line 8271
    iget-object v5, v12, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v5

    if-eqz v5, :cond_19f

    .line 8272
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v6}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v6

    invoke-virtual {v6}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, [Landroid/content/pm/Signature;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1102(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 8274
    :cond_19f
    iget v5, v12, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8276
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    .line 8278
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    .line 8279
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    .line 8281
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_12a

    .line 8284
    .restart local p2
    :cond_1c5
    invoke-direct {p0, v4}, Lcom/android/server/PackageManagerService$Settings;->newUserIdLP(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto/16 :goto_12a

    .line 8295
    .end local v12           #dis:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local p2
    :cond_1cd
    if-eqz p11, :cond_1d7

    .line 8298
    move-object v0, p0

    move-object v1, v4

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$Settings;->addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V

    :cond_1d7
    move-object v5, v4

    .line 8301
    goto/16 :goto_90
.end method

.method private insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 11
    .parameter "p"
    .parameter "pkg"

    .prologue
    const-string v7, "PackageManager"

    const-string v6, " to "

    const-string v5, " changing from "

    .line 8305
    iput-object p2, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 8306
    iget v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    iput v3, p2, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    .line 8307
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 8308
    .local v0, codePath:Ljava/lang/String;
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 8310
    .local v2, resourcePath:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 8311
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Code path for pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changing from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8313
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    .line 8314
    iput-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    .line 8317
    :cond_57
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 8318
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource path for pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changing from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8320
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    .line 8321
    iput-object v2, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 8324
    :cond_9a
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 8325
    .local v1, nativeLibraryPath:Ljava/lang/String;
    if-eqz v1, :cond_aa

    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 8327
    iput-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    .line 8330
    :cond_aa
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    if-eq v3, v4, :cond_b4

    .line 8331
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    .line 8334
    :cond_b4
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    if-nez v3, :cond_c3

    .line 8335
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$3800(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)V

    .line 8339
    :cond_c3
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_da

    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    if-nez v3, :cond_da

    .line 8340
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$3800(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)V

    .line 8342
    :cond_da
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/PackageManagerService$Settings;->addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V

    .line 8343
    return-void
.end method

.method private newUserIdLP(Ljava/lang/Object;)I
    .registers 5
    .parameter "obj"

    .prologue
    .line 9599
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9600
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 9601
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 9602
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9603
    add-int/lit16 v2, v1, 0x2710

    .line 9613
    :goto_18
    return v2

    .line 9600
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 9608
    :cond_1c
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_22

    .line 9609
    const/4 v2, -0x1

    goto :goto_18

    .line 9612
    :cond_22
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9613
    add-int/lit16 v2, v0, 0x2710

    goto :goto_18
.end method

.method private readDisabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9407
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9410
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_72

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_72

    .line 9412
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 9417
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9418
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 9419
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9420
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 9421
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9432
    .end local v0           #name:Ljava/lang/String;
    :goto_38
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 9423
    .restart local v0       #name:Ljava/lang/String;
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_38

    .line 9428
    .end local v0           #name:Ljava/lang/String;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_38

    .line 9434
    .end local v2           #tagName:Ljava/lang/String;
    :cond_72
    return-void
.end method

.method private readDisabledSysPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 24
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9111
    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9112
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "realName"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9113
    .local v5, realName:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "codePath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 9114
    .local v11, codePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "resourcePath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9115
    .local v14, resourcePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9116
    .local v8, nativeLibraryPathStr:Ljava/lang/String;
    if-nez v14, :cond_3a

    .line 9117
    move-object v14, v11

    .line 9119
    :cond_3a
    const/4 v6, 0x0

    const-string v7, "version"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 9120
    .local v21, version:Ljava/lang/String;
    const/4 v9, 0x0

    .line 9121
    .local v9, versionCode:I
    if-eqz v21, :cond_4c

    .line 9123
    :try_start_48
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4b} :catch_15c

    move-result v9

    .line 9128
    :cond_4c
    :goto_4c
    const/4 v10, 0x0

    .line 9129
    .local v10, pkgFlags:I
    or-int/lit8 v10, v10, 0x1

    .line 9130
    new-instance v3, Lcom/android/server/PackageManagerService$PackageSetting;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v3 .. v10}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 9132
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v6, 0x0

    const-string v7, "ft"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9133
    .local v19, timeStampStr:Ljava/lang/String;
    if-eqz v19, :cond_114

    .line 9135
    const/16 v6, 0x10

    :try_start_6d
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    .line 9136
    .local v17, timeStamp:J
    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_7a} :catch_165

    .line 9149
    .end local v17           #timeStamp:J
    :cond_7a
    :goto_7a
    const/4 v6, 0x0

    const-string v7, "it"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9150
    if-eqz v19, :cond_92

    .line 9152
    const/16 v6, 0x10

    :try_start_89
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_92} :catch_162

    .line 9156
    :cond_92
    :goto_92
    const/4 v6, 0x0

    const-string v7, "ut"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9157
    if-eqz v19, :cond_aa

    .line 9159
    const/16 v6, 0x10

    :try_start_a1
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J
    :try_end_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_aa} :catch_15f

    .line 9163
    :cond_aa
    :goto_aa
    const/4 v6, 0x0

    const-string v7, "userId"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9164
    .local v12, idStr:Ljava/lang/String;
    if-eqz v12, :cond_130

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_bb
    iput v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 9165
    iget v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-gtz v6, :cond_d4

    .line 9166
    const/4 v6, 0x0

    const-string v7, "sharedUserId"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 9167
    .local v15, sharedIdStr:Ljava/lang/String;
    if-eqz v15, :cond_132

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_d2
    iput v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 9169
    .end local v15           #sharedIdStr:Ljava/lang/String;
    :cond_d4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 9172
    .end local v8           #nativeLibraryPathStr:Ljava/lang/String;
    .local v13, outerDepth:I
    :cond_d8
    :goto_d8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v6, 0x1

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_153

    const/4 v6, 0x3

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_ee

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v13, :cond_153

    .line 9174
    :cond_ee
    const/4 v6, 0x3

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_d8

    const/4 v6, 0x4

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_d8

    .line 9179
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 9180
    .local v16, tagName:Ljava/lang/String;
    const-string v6, "perms"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_134

    .line 9181
    iget-object v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto :goto_d8

    .line 9140
    .end local v12           #idStr:Ljava/lang/String;
    .end local v13           #outerDepth:I
    .end local v16           #tagName:Ljava/lang/String;
    .end local v20           #type:I
    .restart local v8       #nativeLibraryPathStr:Ljava/lang/String;
    :cond_114
    const/4 v6, 0x0

    const-string v7, "ts"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9141
    if-eqz v19, :cond_7a

    .line 9143
    :try_start_121
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 9144
    .restart local v17       #timeStamp:J
    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V
    :try_end_12b
    .catch Ljava/lang/NumberFormatException; {:try_start_121 .. :try_end_12b} :catch_12d

    goto/16 :goto_7a

    .line 9145
    .end local v17           #timeStamp:J
    :catch_12d
    move-exception v6

    goto/16 :goto_7a

    .line 9164
    .restart local v12       #idStr:Ljava/lang/String;
    :cond_130
    const/4 v6, 0x0

    goto :goto_bb

    .line 9167
    .restart local v15       #sharedIdStr:Ljava/lang/String;
    :cond_132
    const/4 v6, 0x0

    goto :goto_d2

    .line 9184
    .end local v8           #nativeLibraryPathStr:Ljava/lang/String;
    .end local v15           #sharedIdStr:Ljava/lang/String;
    .restart local v13       #outerDepth:I
    .restart local v16       #tagName:Ljava/lang/String;
    .restart local v20       #type:I
    :cond_134
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <updated-package>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9187
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d8

    .line 9190
    .end local v16           #tagName:Ljava/lang/String;
    :cond_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9191
    return-void

    .line 9124
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v10           #pkgFlags:I
    .end local v12           #idStr:Ljava/lang/String;
    .end local v13           #outerDepth:I
    .end local v19           #timeStampStr:Ljava/lang/String;
    .end local v20           #type:I
    .restart local v8       #nativeLibraryPathStr:Ljava/lang/String;
    :catch_15c
    move-exception v6

    goto/16 :goto_4c

    .line 9160
    .restart local v3       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v10       #pkgFlags:I
    .restart local v19       #timeStampStr:Ljava/lang/String;
    :catch_15f
    move-exception v6

    goto/16 :goto_aa

    .line 9153
    :catch_162
    move-exception v6

    goto/16 :goto_92

    .line 9137
    :catch_165
    move-exception v6

    goto/16 :goto_7a
.end method

.method private readEnabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9439
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9442
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_72

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_72

    .line 9444
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 9449
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9450
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 9451
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9452
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 9453
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9464
    .end local v0           #name:Ljava/lang/String;
    :goto_38
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 9455
    .restart local v0       #name:Ljava/lang/String;
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_38

    .line 9460
    .end local v0           #name:Ljava/lang/String;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_38

    .line 9466
    .end local v2           #tagName:Ljava/lang/String;
    :cond_72
    return-void
.end method

.method private readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .registers 11
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, outPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9535
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9538
    .local v1, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_70

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_70

    .line 9540
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 9545
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9546
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 9547
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9548
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 9549
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9560
    .end local v0           #name:Ljava/lang/String;
    :goto_36
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 9551
    .restart local v0       #name:Ljava/lang/String;
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <perms> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_36

    .line 9556
    .end local v0           #name:Ljava/lang/String;
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <perms>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_36

    .line 9562
    .end local v2           #tagName:Ljava/lang/String;
    :cond_70
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .parameter "parser"
    .parameter "ns"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 9042
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9044
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_8

    move v2, p4

    .line 9054
    :goto_7
    return v2

    .line 9047
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    goto :goto_7

    .line 9048
    :catch_d
    move-exception v0

    .line 9049
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, p4

    .line 9054
    goto :goto_7
.end method

.method private readPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 37
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9195
    const/16 v22, 0x0

    .line 9196
    .local v22, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 9197
    .local v5, realName:Ljava/lang/String;
    const/16 v17, 0x0

    .line 9198
    .local v17, idStr:Ljava/lang/String;
    const/16 v26, 0x0

    .line 9199
    .local v26, sharedIdStr:Ljava/lang/String;
    const/4 v12, 0x0

    .line 9200
    .local v12, codePathStr:Ljava/lang/String;
    const/16 v25, 0x0

    .line 9201
    .local v25, resourcePathStr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 9202
    .local v8, nativeLibraryPathStr:Ljava/lang/String;
    const/16 v27, 0x0

    .line 9203
    .local v27, systemStr:Ljava/lang/String;
    const/16 v19, 0x0

    .line 9204
    .local v19, installerPackageName:Ljava/lang/String;
    const/16 v33, 0x0

    .line 9205
    .local v33, uidError:Ljava/lang/String;
    const/4 v11, 0x0

    .line 9206
    .local v11, pkgFlags:I
    const-wide/16 v29, 0x0

    .line 9207
    .local v29, timeStamp:J
    const-wide/16 v15, 0x0

    .line 9208
    .local v15, firstInstallTime:J
    const-wide/16 v20, 0x0

    .line 9209
    .local v20, lastUpdateTime:J
    const/16 v24, 0x0

    .line 9210
    .local v24, packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    const/16 v34, 0x0

    .line 9211
    .local v34, version:Ljava/lang/String;
    const/4 v10, 0x0

    .line 9213
    .local v10, versionCode:I
    const/4 v4, 0x0

    :try_start_1e
    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 9214
    const/4 v4, 0x0

    const-string v6, "realName"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9215
    const/4 v4, 0x0

    const-string v6, "userId"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 9216
    const/4 v4, 0x0

    const-string v6, "uidError"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 9217
    const/4 v4, 0x0

    const-string v6, "sharedUserId"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 9218
    const/4 v4, 0x0

    const-string v6, "codePath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9219
    const/4 v4, 0x0

    const-string v6, "resourcePath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 9220
    const/4 v4, 0x0

    const-string v6, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9221
    const/4 v4, 0x0

    const-string v6, "version"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_7f} :catch_40c

    move-result-object v34

    .line 9222
    if-eqz v34, :cond_86

    .line 9224
    :try_start_82
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_85} :catch_3fa

    move-result v10

    .line 9228
    :cond_86
    :goto_86
    const/4 v4, 0x0

    :try_start_87
    const-string v6, "installer"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9230
    const/4 v4, 0x0

    const-string v6, "flags"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_9b} :catch_40c

    move-result-object v27

    .line 9231
    if-eqz v27, :cond_19c

    .line 9233
    :try_start_9e
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_a1} :catch_3fd

    move-result v11

    .line 9247
    :goto_a2
    const/4 v4, 0x0

    :try_start_a3
    const-string v6, "ft"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_ac} :catch_40c

    move-result-object v31

    .line 9248
    .local v31, timeStampStr:Ljava/lang/String;
    if-eqz v31, :cond_1be

    .line 9250
    const/16 v4, 0x10

    :try_start_b1
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_b1 .. :try_end_b7} :catch_400

    move-result-wide v29

    .line 9262
    :cond_b8
    :goto_b8
    const/4 v4, 0x0

    :try_start_b9
    const-string v6, "it"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c2
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_c2} :catch_40c

    move-result-object v31

    .line 9263
    if-eqz v31, :cond_ce

    .line 9265
    const/16 v4, 0x10

    :try_start_c7
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_cd
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_cd} :catch_406

    move-result-wide v15

    .line 9269
    :cond_ce
    :goto_ce
    const/4 v4, 0x0

    :try_start_cf
    const-string v6, "ut"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d8
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_d8} :catch_40c

    move-result-object v31

    .line 9270
    if-eqz v31, :cond_e4

    .line 9272
    const/16 v4, 0x10

    :try_start_dd
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_e3
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_e3} :catch_409

    move-result-wide v20

    .line 9278
    :cond_e4
    :goto_e4
    if-eqz v17, :cond_1d1

    :try_start_e6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 9279
    .local v9, userId:I
    :goto_eb
    if-nez v25, :cond_ef

    .line 9280
    move-object/from16 v25, v12

    .line 9282
    :cond_ef
    if-eqz v5, :cond_f5

    .line 9283
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 9285
    :cond_f5
    if-nez v22, :cond_1d5

    .line 9286
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_112} :catch_40c

    move-object/from16 v3, v24

    .line 9341
    .end local v9           #userId:I
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .end local v31           #timeStampStr:Ljava/lang/String;
    .local v3, packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :goto_114
    if-eqz v3, :cond_3f6

    .line 9342
    const-string v4, "true"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->uidError:Z

    .line 9343
    move-object/from16 v0, v19

    move-object v1, v3

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 9344
    iput-object v8, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 9345
    const/4 v4, 0x0

    const-string v5, "enabled"

    .end local v5           #realName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9346
    .local v14, enabledStr:Ljava/lang/String;
    if-eqz v14, :cond_382

    .line 9347
    const-string v4, "true"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_331

    .line 9348
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 9362
    :goto_140
    const/4 v4, 0x0

    const-string v5, "installStatus"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 9363
    .local v18, installStatusStr:Ljava/lang/String;
    if-eqz v18, :cond_15b

    .line 9364
    const-string v4, "false"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_387

    .line 9365
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 9371
    :cond_15b
    :goto_15b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    .line 9374
    .local v23, outerDepth:I
    :cond_15f
    :goto_15f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, type:I
    const/4 v4, 0x1

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_3f9

    const/4 v4, 0x3

    move/from16 v0, v32

    move v1, v4

    if-ne v0, v1, :cond_178

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v23

    if-le v0, v1, :cond_3f9

    .line 9376
    :cond_178
    const/4 v4, 0x3

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_15f

    const/4 v4, 0x4

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_15f

    .line 9381
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 9382
    .local v28, tagName:Ljava/lang/String;
    const-string v4, "disabled-components"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38c

    .line 9383
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readDisabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_15f

    .line 9238
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v18           #installStatusStr:Ljava/lang/String;
    .end local v23           #outerDepth:I
    .end local v28           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    .restart local v5       #realName:Ljava/lang/String;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_19c
    const/4 v4, 0x0

    :try_start_19d
    const-string v6, "system"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 9239
    if-eqz v27, :cond_1ba

    .line 9240
    const-string v4, "true"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b8

    const/4 v4, 0x1

    :goto_1b5
    or-int/2addr v11, v4

    goto/16 :goto_a2

    :cond_1b8
    const/4 v4, 0x0

    goto :goto_1b5

    .line 9244
    :cond_1ba
    or-int/lit8 v11, v11, 0x1

    goto/16 :goto_a2

    .line 9254
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :cond_1be
    const/4 v4, 0x0

    const-string v6, "ts"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c8
    .catch Ljava/lang/NumberFormatException; {:try_start_19d .. :try_end_1c8} :catch_40c

    move-result-object v31

    .line 9255
    if-eqz v31, :cond_b8

    .line 9257
    :try_start_1cb
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1ce
    .catch Ljava/lang/NumberFormatException; {:try_start_1cb .. :try_end_1ce} :catch_403

    move-result-wide v29

    goto/16 :goto_b8

    .line 9278
    :cond_1d1
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_eb

    .line 9289
    .restart local v9       #userId:I
    :cond_1d5
    if-nez v12, :cond_1f6

    .line 9290
    const/4 v4, 0x5

    :try_start_1d8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_114

    .line 9293
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_1f6
    if-lez v9, :cond_280

    .line 9294
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/PackageManagerService$Settings;->addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;
    :try_end_20e
    .catch Ljava/lang/NumberFormatException; {:try_start_1d8 .. :try_end_20e} :catch_40c

    move-result-object v3

    .line 9299
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    if-nez v3, :cond_271

    .line 9300
    const/4 v4, 0x6

    :try_start_212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure adding uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while parsing settings at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_236
    .catch Ljava/lang/NumberFormatException; {:try_start_212 .. :try_end_236} :catch_238

    goto/16 :goto_114

    .line 9335
    :catch_238
    move-exception v4

    move-object v13, v4

    .line 9336
    .end local v9           #userId:I
    .end local v31           #timeStampStr:Ljava/lang/String;
    .local v13, e:Ljava/lang/NumberFormatException;
    :goto_23a
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_114

    .line 9305
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #userId:I
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :cond_271
    :try_start_271
    move-object v0, v3

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSettingBase;->setTimeStamp(J)V

    .line 9306
    iput-wide v15, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    .line 9307
    move-wide/from16 v0, v20

    move-object v2, v3

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J
    :try_end_27e
    .catch Ljava/lang/NumberFormatException; {:try_start_271 .. :try_end_27e} :catch_238

    goto/16 :goto_114

    .line 9309
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_280
    if-eqz v26, :cond_2f8

    .line 9310
    if-eqz v26, :cond_2bc

    :try_start_284
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 9312
    :goto_289
    if-lez v9, :cond_2bf

    .line 9313
    new-instance v3, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v3 .. v11}, Lcom/android/server/PackageManagerService$Settings$PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V
    :try_end_2a1
    .catch Ljava/lang/NumberFormatException; {:try_start_284 .. :try_end_2a1} :catch_40c

    .line 9316
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :try_start_2a1
    move-object v0, v3

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSettingBase;->setTimeStamp(J)V

    .line 9317
    iput-wide v15, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    .line 9318
    move-wide/from16 v0, v20

    move-object v2, v3

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    .line 9319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v3

    check-cast v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    move-object v4, v0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2ba
    .catch Ljava/lang/NumberFormatException; {:try_start_2a1 .. :try_end_2ba} :catch_238

    goto/16 :goto_114

    .line 9310
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_2bc
    const/4 v4, 0x0

    move v9, v4

    goto :goto_289

    .line 9324
    :cond_2bf
    const/4 v4, 0x5

    :try_start_2c0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad sharedId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_114

    .line 9330
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_2f8
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_32d
    .catch Ljava/lang/NumberFormatException; {:try_start_2c0 .. :try_end_32d} :catch_40c

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_114

    .line 9349
    .end local v5           #realName:Ljava/lang/String;
    .end local v9           #userId:I
    .end local v31           #timeStampStr:Ljava/lang/String;
    .restart local v14       #enabledStr:Ljava/lang/String;
    :cond_331
    const-string v4, "false"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33e

    .line 9350
    const/4 v4, 0x2

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_140

    .line 9351
    :cond_33e
    const-string v4, "default"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34b

    .line 9352
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_140

    .line 9354
    :cond_34b
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad enabled value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_140

    .line 9360
    :cond_382
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_140

    .line 9367
    .restart local v18       #installStatusStr:Ljava/lang/String;
    :cond_387
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    goto/16 :goto_15b

    .line 9384
    .restart local v23       #outerDepth:I
    .restart local v28       #tagName:Ljava/lang/String;
    .restart local v32       #type:I
    :cond_38c
    const-string v4, "enabled-components"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a1

    .line 9385
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readEnabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_15f

    .line 9386
    :cond_3a1
    const-string v4, "sigs"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3bc

    .line 9387
    iget-object v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_15f

    .line 9388
    :cond_3bc
    const-string v4, "perms"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d6

    .line 9389
    iget-object v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 9391
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    goto/16 :goto_15f

    .line 9393
    :cond_3d6
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <package>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9396
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_15f

    .line 9400
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v18           #installStatusStr:Ljava/lang/String;
    .end local v23           #outerDepth:I
    .end local v28           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    .restart local v5       #realName:Ljava/lang/String;
    :cond_3f6
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9402
    .end local v5           #realName:Ljava/lang/String;
    :cond_3f9
    return-void

    .line 9225
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v5       #realName:Ljava/lang/String;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :catch_3fa
    move-exception v4

    goto/16 :goto_86

    .line 9234
    :catch_3fd
    move-exception v4

    goto/16 :goto_a2

    .line 9251
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :catch_400
    move-exception v4

    goto/16 :goto_b8

    .line 9258
    :catch_403
    move-exception v4

    goto/16 :goto_b8

    .line 9266
    :catch_406
    move-exception v4

    goto/16 :goto_ce

    .line 9273
    :catch_409
    move-exception v4

    goto/16 :goto_e4

    .line 9335
    .end local v31           #timeStampStr:Ljava/lang/String;
    :catch_40c
    move-exception v4

    move-object v13, v4

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_23a
.end method

.method private readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 9060
    .local p1, out:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 9063
    .local v3, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_d5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_d5

    .line 9065
    :cond_14
    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 9070
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 9071
    .local v7, tagName:Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ab

    .line 9072
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9073
    .local v2, name:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "package"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9074
    .local v6, sourcePackage:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "type"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9075
    .local v5, ptype:Ljava/lang/String;
    if-eqz v2, :cond_8f

    if-eqz v6, :cond_8f

    .line 9076
    const-string v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 9077
    .local v1, dynamic:Z
    new-instance v0, Lcom/android/server/PackageManagerService$BasePermission;

    if-eqz v1, :cond_8d

    const/4 v9, 0x2

    :goto_4a
    invoke-direct {v0, v2, v6, v9}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9081
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    const/4 v9, 0x0

    const-string v10, "protection"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/PackageManagerService$Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    .line 9083
    if-eqz v1, :cond_83

    .line 9084
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 9085
    .local v4, pi:Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 9086
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 9087
    const/4 v9, 0x0

    const-string v10, "icon"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/PackageManagerService$Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 9088
    const/4 v9, 0x0

    const-string v10, "label"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 9090
    iget v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 9091
    iput-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 9093
    .end local v4           #pi:Landroid/content/pm/PermissionInfo;
    :cond_83
    iget-object v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9105
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #dynamic:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :goto_88
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 9077
    .restart local v1       #dynamic:Z
    .restart local v2       #name:Ljava/lang/String;
    .restart local v5       #ptype:Ljava/lang/String;
    .restart local v6       #sourcePackage:Ljava/lang/String;
    :cond_8d
    const/4 v9, 0x0

    goto :goto_4a

    .line 9095
    .end local v1           #dynamic:Z
    :cond_8f
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_88

    .line 9100
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :cond_ab
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element reading permissions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_88

    .line 9107
    .end local v7           #tagName:Ljava/lang/String;
    :cond_d5
    return-void
.end method

.method private readPreferredActivitiesLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9566
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 9569
    .local v0, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_7a

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_7a

    .line 9571
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 9576
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9577
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 9578
    new-instance v1, Lcom/android/server/PackageManagerService$PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/PackageManagerService$PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9579
    .local v1, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    if-nez v4, :cond_35

    .line 9580
    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v4, v1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_6

    .line 9582
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_6

    .line 9588
    .end local v1           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9591
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 9594
    .end local v2           #tagName:Ljava/lang/String;
    :cond_7a
    return-void
.end method

.method private readSharedUserLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9470
    const/4 v2, 0x0

    .line 9471
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 9472
    .local v1, idStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 9473
    .local v4, pkgFlags:I
    const/4 v5, 0x0

    .line 9475
    .local v5, su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/4 v9, 0x0

    :try_start_5
    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9476
    const/4 v9, 0x0

    const-string v10, "userId"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9477
    if-eqz v1, :cond_77

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v8, v9

    .line 9478
    .local v8, userId:I
    :goto_19
    const-string v9, "true"

    const/4 v10, 0x0

    const-string v11, "system"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 9479
    or-int/lit8 v4, v4, 0x1

    .line 9481
    :cond_2a
    if-nez v2, :cond_7a

    .line 9482
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_47} :catch_ac

    .line 9504
    .end local v8           #userId:I
    :cond_47
    :goto_47
    if-eqz v5, :cond_135

    .line 9505
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 9508
    .local v3, outerDepth:I
    :cond_4d
    :goto_4d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_138

    const/4 v9, 0x3

    if-ne v7, v9, :cond_5d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_138

    .line 9510
    :cond_5d
    const/4 v9, 0x3

    if-eq v7, v9, :cond_4d

    const/4 v9, 0x4

    if-eq v7, v9, :cond_4d

    .line 9515
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 9516
    .local v6, tagName:Ljava/lang/String;
    const-string v9, "sigs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_106

    .line 9517
    iget-object v9, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/PackageManagerService$PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_4d

    .line 9477
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_77
    const/4 v9, 0x0

    move v8, v9

    goto :goto_19

    .line 9485
    .restart local v8       #userId:I
    :cond_7a
    if-nez v8, :cond_df

    .line 9486
    const/4 v9, 0x5

    :try_start_7d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_ab} :catch_ac

    goto :goto_47

    .line 9497
    .end local v8           #userId:I
    :catch_ac
    move-exception v9

    move-object v0, v9

    .line 9498
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_47

    .line 9491
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    :cond_df
    :try_start_df
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_47

    .line 9492
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/NumberFormatException; {:try_start_df .. :try_end_104} :catch_ac

    goto/16 :goto_47

    .line 9518
    .end local v8           #userId:I
    .restart local v3       #outerDepth:I
    .restart local v6       #tagName:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_106
    const-string v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 9519
    iget-object v9, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {p0, p1, v9}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto/16 :goto_4d

    .line 9521
    :cond_115
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <shared-user>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9524
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4d

    .line 9529
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_135
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9531
    :cond_138
    return-void
.end method

.method private removePackageLP(Ljava/lang/String;)I
    .registers 5
    .parameter "name"

    .prologue
    .line 8420
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8421
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_41

    .line 8422
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8423
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v1, :cond_39

    .line 8424
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8425
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_41

    .line 8426
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8427
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$Settings;->removeUserIdLP(I)V

    .line 8428
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8435
    :goto_38
    return v1

    .line 8431
    :cond_39
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$Settings;->removeUserIdLP(I)V

    .line 8432
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto :goto_38

    .line 8435
    :cond_41
    const/4 v1, -0x1

    goto :goto_38
.end method

.method private removeUserIdLP(I)V
    .registers 6
    .parameter "uid"

    .prologue
    const/16 v3, 0x2710

    .line 8504
    if-lt p1, v3, :cond_15

    .line 8505
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8506
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8507
    .local v1, index:I
    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8511
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_14
    :goto_14
    return-void

    .line 8509
    :cond_15
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_14
.end method

.method private replacePackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .registers 5
    .parameter "name"
    .parameter "newp"

    .prologue
    .line 8439
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8440
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_1c

    .line 8441
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v1, :cond_22

    .line 8442
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8443
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8448
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8449
    return-void

    .line 8445
    :cond_22
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/PackageManagerService$Settings;->replaceUserIdLP(ILjava/lang/Object;)V

    goto :goto_1c
.end method

.method private replaceUserIdLP(ILjava/lang/Object;)V
    .registers 7
    .parameter "uid"
    .parameter "obj"

    .prologue
    const/16 v3, 0x2710

    .line 8514
    if-lt p1, v3, :cond_14

    .line 8515
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8516
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8517
    .local v1, index:I
    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8521
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_13
    :goto_13
    return-void

    .line 8519
    :cond_14
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13
.end method

.method private transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "origPkg"
    .parameter "newPkg"

    .prologue
    const/4 v5, 0x0

    .line 8163
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v4, 0x2

    if-ge v1, v4, :cond_41

    .line 8164
    if-nez v1, :cond_3a

    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object v3, v4

    .line 8166
    .local v3, permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :goto_a
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8167
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 8172
    iput-object p2, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    .line 8173
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 8174
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 8175
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_34

    .line 8176
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 8178
    :cond_34
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 8179
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    goto :goto_12

    .line 8164
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_3a
    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object v3, v4

    goto :goto_a

    .line 8163
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8183
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_41
    return-void
.end method

.method private updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    .registers 13
    .parameter "deletedPs"
    .parameter "globalGids"

    .prologue
    .line 8380
    if-eqz p1, :cond_6

    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v8, :cond_e

    .line 8381
    :cond_6
    const-string v8, "PackageManager"

    const-string v9, "Trying to update info for null package. Just ignoring"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8417
    :cond_d
    :goto_d
    return-void

    .line 8385
    :cond_e
    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v8, :cond_d

    .line 8388
    iget-object v6, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8390
    .local v6, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8391
    .local v1, eachPerm:Ljava/lang/String;
    const/4 v7, 0x0

    .line 8392
    .local v7, used:Z
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 8395
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8396
    .local v5, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_37

    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 8399
    const/4 v7, 0x1

    .line 8403
    .end local v5           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_60
    if-nez v7, :cond_1c

    .line 8405
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 8409
    .end local v1           #eachPerm:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #used:Z
    :cond_68
    move-object v4, p2

    .line 8410
    .local v4, newGids:[I
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8411
    .restart local v1       #eachPerm:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8412
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_6f

    .line 8413
    iget-object v8, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v4, v8}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v4

    goto :goto_6f

    .line 8416
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #eachPerm:Ljava/lang/String;
    :cond_8c
    iput-object v4, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    goto/16 :goto_d
.end method


# virtual methods
.method addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 17
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "uid"
    .parameter "vc"
    .parameter "pkgFlags"

    .prologue
    .line 8122
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8123
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_29

    .line 8124
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-ne v1, p6, :cond_10

    move-object v1, v0

    .line 8138
    :goto_f
    return-object v1

    .line 8127
    :cond_10
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8129
    const/4 v1, 0x0

    goto :goto_f

    .line 8131
    :cond_29
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v0           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8133
    .restart local v0       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    iput p6, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8134
    invoke-direct {p0, p6, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 8135
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 8136
    goto :goto_f

    .line 8138
    :cond_45
    const/4 v1, 0x0

    goto :goto_f
.end method

.method addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;
    .registers 9
    .parameter "name"
    .parameter "uid"
    .parameter "pkgFlags"

    .prologue
    const/4 v4, 0x0

    .line 8142
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8143
    .local v0, s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v0, :cond_2a

    .line 8144
    iget v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-ne v1, p2, :cond_11

    move-object v1, v0

    .line 8157
    :goto_10
    return-object v1

    .line 8147
    :cond_11
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object v1, v4

    .line 8149
    goto :goto_10

    .line 8151
    :cond_2a
    new-instance v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v0           #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {v0, p1, p3}, Lcom/android/server/PackageManagerService$SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 8152
    .restart local v0       #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iput p2, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8153
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 8154
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 8155
    goto :goto_10

    :cond_3e
    move-object v1, v4

    .line 8157
    goto :goto_10
.end method

.method disableSystemPackageLP(Ljava/lang/String;)Z
    .registers 9
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 8080
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8081
    .local v2, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_2b

    .line 8082
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not an installed package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 8101
    :goto_2a
    return v3

    .line 8085
    :cond_2b
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8087
    .local v0, dp:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_58

    .line 8088
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_49

    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_49

    .line 8089
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8091
    :cond_49
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8097
    new-instance v1, Lcom/android/server/PackageManagerService$PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Lcom/android/server/PackageManagerService$PackageSetting;)V

    .line 8098
    .local v1, newp:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/PackageManagerService$Settings;->replacePackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;)V

    .line 8099
    const/4 v3, 0x1

    goto :goto_2a

    .end local v1           #newp:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_58
    move v3, v6

    .line 8101
    goto :goto_2a
.end method

.method enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 13
    .parameter "name"

    .prologue
    .line 8105
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8106
    .local v9, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v9, :cond_2a

    .line 8107
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8108
    const/4 v0, 0x0

    .line 8117
    :goto_29
    return-object v0

    .line 8111
    :cond_2a
    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_3e

    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3e

    .line 8112
    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8114
    :cond_3e
    iget-object v2, v9, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v9, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v9, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    iget v6, v9, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget v7, v9, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    iget v8, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/PackageManagerService$Settings;->addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v10

    .line 8116
    .local v10, ret:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v10

    .line 8117
    goto :goto_29
.end method

.method public getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 5
    .parameter "name"

    .prologue
    .line 9617
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 9618
    :try_start_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 9619
    .local v0, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v1

    return-object v0

    .line 9620
    .end local v0           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v2
.end method

.method getInstallStatus(Ljava/lang/String;)I
    .registers 4
    .parameter "pkgName"

    .prologue
    .line 8048
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8049
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_f

    .line 8050
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v1

    .line 8052
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "pkgName"

    .prologue
    .line 8043
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8044
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method getListOfIncompleteInstallPackages()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8876
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8877
    .local v1, kList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8878
    .local v0, its:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8879
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 8880
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8881
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8882
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_14

    .line 8883
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 8886
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_32
    return-object v4
.end method

.method getPackageLP(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZZ)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 24
    .parameter "pkg"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 8008
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 8009
    .local v1, name:Ljava/lang/String;
    iget v8, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v12

    .line 8011
    .local v12, p:Lcom/android/server/PackageManagerService$PackageSetting;
    return-object v12
.end method

.method getReadMessagesLP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8872
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;
    .registers 8
    .parameter "name"
    .parameter "pkgFlags"
    .parameter "create"

    .prologue
    .line 8057
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8058
    .local v0, s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v0, :cond_46

    .line 8059
    if-nez p3, :cond_e

    .line 8060
    const/4 v1, 0x0

    .line 8076
    :goto_d
    return-object v1

    .line 8062
    :cond_e
    new-instance v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v0           #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/PackageManagerService$SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 8064
    .restart local v0       #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/PackageManagerService$Settings;->newUserIdLP(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8068
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8071
    iget v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-ltz v1, :cond_46

    .line 8072
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    move-object v1, v0

    .line 8076
    goto :goto_d
.end method

.method public getUserIdLP(I)Ljava/lang/Object;
    .registers 6
    .parameter "uid"

    .prologue
    const/16 v3, 0x2710

    .line 8483
    if-lt p1, v3, :cond_17

    .line 8484
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8485
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8486
    .local v1, index:I
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 8488
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_14
    return-object v2

    .line 8486
    .restart local v0       #N:I
    .restart local v1       #index:I
    :cond_15
    const/4 v2, 0x0

    goto :goto_14

    .line 8488
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_17
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_14
.end method

.method isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z
    .registers 8
    .parameter "componentInfo"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9624
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_8

    move v1, v4

    .line 9655
    :goto_7
    return v1

    .line 9627
    :cond_8
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 9636
    .local v0, packageSettings:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_16

    move v1, v3

    .line 9642
    goto :goto_7

    .line 9644
    :cond_16
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2b

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_2d

    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    if-nez v1, :cond_2d

    :cond_2b
    move v1, v3

    .line 9647
    goto :goto_7

    .line 9649
    :cond_2d
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    move v1, v4

    .line 9650
    goto :goto_7

    .line 9652
    :cond_39
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    move v1, v3

    .line 9653
    goto :goto_7

    .line 9655
    :cond_45
    iget-boolean v1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_7
.end method

.method peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .registers 3
    .parameter "name"

    .prologue
    .line 8015
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    return-object p0
.end method

.method readLP()Z
    .registers 34

    .prologue
    .line 8890
    const/16 v29, 0x0

    .line 8891
    .local v29, str:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 8893
    :try_start_d
    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_432

    .line 8894
    .end local v29           #str:Ljava/io/FileInputStream;
    .local v30, str:Ljava/io/FileInputStream;
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8895
    const/4 v3, 0x4

    const-string v4, "Need to read from backup settings file"

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 8900
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_5a} :catch_435

    :cond_5a
    move-object/from16 v29, v30

    .line 8908
    .end local v30           #str:Ljava/io/FileInputStream;
    .restart local v29       #str:Ljava/io/FileInputStream;
    :cond_5c
    :goto_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 8911
    if-nez v29, :cond_92

    .line 8912
    :try_start_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_83

    .line 8913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8914
    const/4 v3, 0x4

    const-string v4, "No settings file; creating initial state"

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8915
    const/4 v3, 0x0

    .line 9037
    :goto_82
    return v3

    .line 8917
    :cond_83
    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v29           #str:Ljava/io/FileInputStream;
    .restart local v30       #str:Ljava/io/FileInputStream;
    move-object/from16 v29, v30

    .line 8919
    .end local v30           #str:Ljava/io/FileInputStream;
    .restart local v29       #str:Ljava/io/FileInputStream;
    :cond_92
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 8920
    .local v27, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8924
    :cond_9f
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, type:I
    const/4 v3, 0x2

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_af

    const/4 v3, 0x1

    move/from16 v0, v32

    move v1, v3

    if-ne v0, v1, :cond_9f

    .line 8928
    :cond_af
    const/4 v3, 0x2

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_c7

    .line 8929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8930
    const/4 v3, 0x5

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8931
    const/4 v3, 0x0

    goto :goto_82

    .line 8934
    :cond_c7
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v25

    .line 8936
    .local v25, outerDepth:I
    :cond_cb
    :goto_cb
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    const/4 v3, 0x1

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_358

    const/4 v3, 0x3

    move/from16 v0, v32

    move v1, v3

    if-ne v0, v1, :cond_e4

    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v25

    if-le v0, v1, :cond_358

    .line 8938
    :cond_e4
    const/4 v3, 0x3

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_cb

    const/4 v3, 0x4

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_cb

    .line 8943
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    .line 8944
    .local v31, tagName:Ljava/lang/String;
    const-string v3, "package"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d3

    .line 8945
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_106} :catch_107
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_106} :catch_1ed

    goto :goto_cb

    .line 8991
    .end local v25           #outerDepth:I
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v31           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    :catch_107
    move-exception v3

    move-object/from16 v16, v3

    .line 8992
    .local v16, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8993
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8994
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9003
    .end local v16           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 9004
    .local v15, N:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_159
    move/from16 v0, v18

    move v1, v15

    if-ge v0, v1, :cond_3ea

    .line 9005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    .line 9006
    .local v28, pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v19

    .line 9007
    .local v19, idObj:Ljava/lang/Object;
    if-eqz v19, :cond_366

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move v3, v0

    if-eqz v3, :cond_366

    .line 9008
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->realName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v7, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->codePath:Ljava/io/File;

    move-object v8, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->resourcePath:Ljava/io/File;

    move-object v9, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->nativeLibraryPathString:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->versionCode:I

    move v11, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->pkgFlags:I

    move v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v14}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v26

    .line 9011
    .local v26, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v26, :cond_35d

    .line 9012
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9004
    .end local v26           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_1d0
    add-int/lit8 v18, v18, 0x1

    goto :goto_159

    .line 8946
    .end local v15           #N:I
    .end local v18           #i:I
    .end local v19           #idObj:Ljava/lang/Object;
    .end local v28           #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    .restart local v25       #outerDepth:I
    .restart local v27       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31       #tagName:Ljava/lang/String;
    .restart local v32       #type:I
    :cond_1d3
    :try_start_1d3
    const-string v3, "permissions"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_236

    .line 8947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d3 .. :try_end_1eb} :catch_107
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1eb} :catch_1ed

    goto/16 :goto_cb

    .line 8996
    .end local v25           #outerDepth:I
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v31           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    :catch_1ed
    move-exception v3

    move-object/from16 v16, v3

    .line 8997
    .local v16, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8998
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8999
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14e

    .line 8948
    .end local v16           #e:Ljava/io/IOException;
    .restart local v25       #outerDepth:I
    .restart local v27       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31       #tagName:Ljava/lang/String;
    .restart local v32       #type:I
    :cond_236
    :try_start_236
    const-string v3, "permission-trees"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_250

    .line 8949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_cb

    .line 8950
    :cond_250
    const-string v3, "shared-user"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_264

    .line 8951
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readSharedUserLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_cb

    .line 8952
    :cond_264
    const-string v3, "preferred-packages"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cb

    .line 8954
    const-string v3, "preferred-activities"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_283

    .line 8955
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPreferredActivitiesLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_cb

    .line 8956
    :cond_283
    const-string v3, "updated-package"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_297

    .line 8957
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readDisabledSysPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_cb

    .line 8958
    :cond_297
    const-string v3, "cleaning-package"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2bc

    .line 8959
    const/4 v3, 0x0

    const-string v4, "name"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 8960
    .local v22, name:Ljava/lang/String;
    if-eqz v22, :cond_cb

    .line 8961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_cb

    .line 8963
    .end local v22           #name:Ljava/lang/String;
    :cond_2bc
    const-string v3, "renamed-package"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f0

    .line 8964
    const/4 v3, 0x0

    const-string v4, "new"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 8965
    .local v23, nname:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "old"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 8966
    .local v24, oname:Ljava/lang/String;
    if-eqz v23, :cond_cb

    if-eqz v24, :cond_cb

    .line 8967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_cb

    .line 8969
    .end local v23           #nname:Ljava/lang/String;
    .end local v24           #oname:Ljava/lang/String;
    :cond_2f0
    const-string v3, "last-platform-version"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_337

    .line 8970
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I
    :try_end_306
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_236 .. :try_end_306} :catch_107
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_306} :catch_1ed

    .line 8972
    const/4 v3, 0x0

    :try_start_307
    const-string v4, "internal"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 8973
    .local v20, internal:Ljava/lang/String;
    if-eqz v20, :cond_31c

    .line 8974
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    .line 8976
    :cond_31c
    const/4 v3, 0x0

    const-string v4, "external"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 8977
    .local v17, external:Ljava/lang/String;
    if-eqz v17, :cond_cb

    .line 8978
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I
    :try_end_332
    .catch Ljava/lang/NumberFormatException; {:try_start_307 .. :try_end_332} :catch_334
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_307 .. :try_end_332} :catch_107
    .catch Ljava/io/IOException; {:try_start_307 .. :try_end_332} :catch_1ed

    goto/16 :goto_cb

    .line 8980
    .end local v17           #external:Ljava/lang/String;
    .end local v20           #internal:Ljava/lang/String;
    :catch_334
    move-exception v3

    goto/16 :goto_cb

    .line 8983
    :cond_337
    :try_start_337
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8985
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_cb

    .line 8989
    .end local v31           #tagName:Ljava/lang/String;
    :cond_358
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_35b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_337 .. :try_end_35b} :catch_107
    .catch Ljava/io/IOException; {:try_start_337 .. :try_end_35b} :catch_1ed

    goto/16 :goto_14e

    .line 9016
    .end local v25           #outerDepth:I
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v32           #type:I
    .restart local v15       #N:I
    .restart local v18       #i:I
    .restart local v19       #idObj:Ljava/lang/Object;
    .restart local v26       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v28       #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    :cond_35d
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V

    goto/16 :goto_1d0

    .line 9017
    .end local v26           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_366
    if-eqz v19, :cond_3a9

    .line 9018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not a shared uid\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 9021
    .local v21, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9022
    const/4 v3, 0x6

    move v0, v3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_1d0

    .line 9024
    .end local v21           #msg:Ljava/lang/String;
    :cond_3a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not defined\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 9027
    .restart local v21       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9028
    const/4 v3, 0x6

    move v0, v3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_1d0

    .line 9031
    .end local v19           #idObj:Ljava/lang/Object;
    .end local v21           #msg:Ljava/lang/String;
    .end local v28           #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    :cond_3ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9037
    const/4 v3, 0x1

    goto/16 :goto_82

    .line 8903
    .end local v15           #N:I
    .end local v18           #i:I
    :catch_432
    move-exception v3

    goto/16 :goto_5c

    .end local v29           #str:Ljava/io/FileInputStream;
    .restart local v30       #str:Ljava/io/FileInputStream;
    :catch_435
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #str:Ljava/io/FileInputStream;
    .restart local v29       #str:Ljava/io/FileInputStream;
    goto/16 :goto_5c
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .registers 5
    .parameter "pkgName"
    .parameter "status"

    .prologue
    .line 8026
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8027
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_13

    .line 8028
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_13

    .line 8029
    invoke-virtual {v0, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->setInstallStatus(I)V

    .line 8032
    :cond_13
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "pkgName"
    .parameter "installerPkgName"

    .prologue
    .line 8036
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8037
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_d

    .line 8038
    invoke-virtual {v0, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 8040
    :cond_d
    return-void
.end method

.method writeDisabledSysPackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .registers 14
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v10, "updated-package"

    const-string v9, "perms"

    const-string v8, "name"

    const-string v7, "item"

    .line 8715
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8716
    const-string v3, "name"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v6, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8717
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 8718
    const-string v3, "realName"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8720
    :cond_20
    const-string v3, "codePath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8721
    const-string v3, "ft"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8722
    const-string v3, "it"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8723
    const-string v3, "ut"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8724
    const-string v3, "version"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8725
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 8726
    const-string v3, "resourcePath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8728
    :cond_64
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v3, :cond_6f

    .line 8729
    const-string v3, "nativeLibraryPath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8731
    :cond_6f
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v3, :cond_b3

    .line 8732
    const-string v3, "userId"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8738
    :goto_7e
    const-string v3, "perms"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8739
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v3, :cond_bf

    .line 8744
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8d
    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8745
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8746
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_8d

    .line 8749
    const-string v3, "item"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8750
    const-string v3, "name"

    invoke-interface {p1, v6, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8751
    const-string v3, "item"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8d

    .line 8735
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :cond_b3
    const-string v3, "sharedUserId"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7e

    .line 8755
    :cond_bf
    const-string v3, "perms"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8756
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8757
    return-void
.end method

.method writeLP()V
    .registers 28

    .prologue
    .line 8528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_42

    .line 8533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_32

    .line 8534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v23

    if-nez v23, :cond_42

    .line 8535
    const-string v23, "PackageManager"

    const-string v24, "Unable to backup package manager settings, current changes will be lost at reboot"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8711
    :cond_31
    :goto_31
    return-void

    .line 8539
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 8540
    const-string v23, "PackageManager"

    const-string v24, "Preserving older settings backup"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8544
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 8547
    :try_start_4b
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8548
    .local v9, fstr:Ljava/io/FileOutputStream;
    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8551
    .local v20, str:Ljava/io/BufferedOutputStream;
    new-instance v19, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 8552
    .local v19, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v23, "utf-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8553
    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8554
    const-string v23, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 8556
    const/16 v23, 0x0

    const-string v24, "packages"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8558
    const/16 v23, 0x0

    const-string v24, "last-platform-version"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8559
    const/16 v23, 0x0

    const-string v24, "internal"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8560
    const/16 v23, 0x0

    const-string v24, "external"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8561
    const/16 v23, 0x0

    const-string v24, "last-platform-version"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8563
    const/16 v23, 0x0

    const-string v24, "permission-trees"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_103
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_15f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8565
    .local v5, bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    :try_end_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_117} :catch_118
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_117} :catch_19c

    goto :goto_103

    .line 8699
    .end local v5           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v19           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v20           #str:Ljava/io/BufferedOutputStream;
    :catch_118
    move-exception v23

    move-object/from16 v7, v23

    .line 8700
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v23, "PackageManager"

    const-string v24, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8705
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_31

    .line 8706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v23

    if-nez v23, :cond_31

    .line 8707
    const-string v23, "PackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to clean up mangled file: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 8567
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v19       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20       #str:Ljava/io/BufferedOutputStream;
    :cond_15f
    const/16 v23, 0x0

    :try_start_161
    const-string v24, "permission-trees"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8569
    const/16 v23, 0x0

    const-string v24, "permissions"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_187
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1ad

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8571
    .restart local v5       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    :try_end_19b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_161 .. :try_end_19b} :catch_118
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_19b} :catch_19c

    goto :goto_187

    .line 8701
    .end local v5           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v19           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v20           #str:Ljava/io/BufferedOutputStream;
    :catch_19c
    move-exception v23

    move-object/from16 v7, v23

    .line 8702
    .local v7, e:Ljava/io/IOException;
    const-string v23, "PackageManager"

    const-string v24, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_127

    .line 8573
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v19       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20       #str:Ljava/io/BufferedOutputStream;
    :cond_1ad
    const/16 v23, 0x0

    :try_start_1af
    const-string v24, "permissions"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1c8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1de

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8576
    .local v17, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V

    goto :goto_1c8

    .line 8579
    .end local v17           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1ec
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_202

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8580
    .restart local v17       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writeDisabledSysPackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V

    goto :goto_1ec

    .line 8583
    .end local v17           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_202
    const/16 v23, 0x0

    const-string v24, "preferred-activities"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_21d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_24b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 8585
    .local v16, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8586
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8587
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_21d

    .line 8589
    .end local v16           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_24b
    const/16 v23, 0x0

    const-string v24, "preferred-activities"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11           #i$:Ljava/util/Iterator;
    :goto_266
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_32e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8592
    .local v22, usr:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/16 v23, 0x0

    const-string v24, "shared-user"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8593
    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8594
    const/16 v23, 0x0

    const-string v24, "userId"

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8596
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v23, v0

    const-string v24, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8597
    const/16 v23, 0x0

    const-string v24, "perms"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8598
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2dd
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_312

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 8599
    .local v15, name:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8600
    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v15

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8601
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2dd

    .line 8603
    .end local v15           #name:Ljava/lang/String;
    :cond_312
    const/16 v23, 0x0

    const-string v24, "perms"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8604
    const/16 v23, 0x0

    const-string v24, "shared-user"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_266

    .line 8607
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v22           #usr:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_384

    .line 8608
    const/4 v10, 0x0

    .local v10, i:I
    :goto_33b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_384

    .line 8609
    const/16 v23, 0x0

    const-string v24, "cleaning-package"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8610
    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8611
    const/16 v23, 0x0

    const-string v24, "cleaning-package"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8608
    add-int/lit8 v10, v10, 0x1

    goto :goto_33b

    .line 8615
    .end local v10           #i:I
    :cond_384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    if-lez v23, :cond_3ed

    .line 8616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_39e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3ed

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 8617
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v23, 0x0

    const-string v24, "renamed-package"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8618
    const/16 v23, 0x0

    const-string v24, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8619
    const/16 v23, 0x0

    const-string v24, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8620
    const/16 v23, 0x0

    const-string v24, "renamed-package"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_39e

    .line 8624
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_3ed
    const/16 v23, 0x0

    const-string v24, "packages"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8626
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 8628
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V

    .line 8629
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 8630
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 8634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 8635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1b4

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8643
    new-instance v21, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".tmp"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8644
    .local v21, tempFile:Ljava/io/File;
    new-instance v14, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 8646
    .local v14, journal:Lcom/android/internal/util/JournaledFile;
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #fstr:Ljava/io/FileOutputStream;
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v23

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8647
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    new-instance v20, Ljava/io/BufferedOutputStream;

    .end local v20           #str:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, v20

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_46c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1af .. :try_end_46c} :catch_118
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_46c} :catch_19c

    .line 8649
    .restart local v20       #str:Ljava/io/BufferedOutputStream;
    :try_start_46c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 8650
    .local v18, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_47f
    :goto_47f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_536

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8651
    .restart local v17       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    .line 8652
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 8653
    .local v6, dataPath:Ljava/lang/String;
    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_52d

    const/16 v23, 0x1

    move/from16 v13, v23

    .line 8657
    .local v13, isDebug:Z
    :goto_4a5
    const-string v23, " "

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-gez v23, :cond_47f

    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    const/16 v24, 0x2710

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_47f

    .line 8673
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8674
    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8675
    const-string v23, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8676
    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8677
    if-eqz v13, :cond_533

    const-string v23, " 1 "

    :goto_4eb
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8678
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8679
    const-string v23, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8680
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_510
    .catch Ljava/lang/Exception; {:try_start_46c .. :try_end_510} :catch_512
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46c .. :try_end_510} :catch_118
    .catch Ljava/io/IOException; {:try_start_46c .. :try_end_510} :catch_19c

    goto/16 :goto_47f

    .line 8687
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #isDebug:Z
    .end local v17           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :catch_512
    move-exception v23

    move-object/from16 v7, v23

    .line 8688
    .local v7, e:Ljava/lang/Exception;
    :try_start_515
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 8691
    .end local v7           #e:Ljava/lang/Exception;
    :goto_518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1b4

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_52b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_515 .. :try_end_52b} :catch_118
    .catch Ljava/io/IOException; {:try_start_515 .. :try_end_52b} :catch_19c

    goto/16 :goto_31

    .line 8653
    .restart local v4       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #dataPath:Ljava/lang/String;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v17       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    :cond_52d
    const/16 v23, 0x0

    move/from16 v13, v23

    goto/16 :goto_4a5

    .line 8677
    .restart local v13       #isDebug:Z
    :cond_533
    :try_start_533
    const-string v23, " 0 "

    goto :goto_4eb

    .line 8682
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v13           #isDebug:Z
    .end local v17           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_536
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V

    .line 8683
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 8684
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 8685
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_542
    .catch Ljava/lang/Exception; {:try_start_533 .. :try_end_542} :catch_512
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_533 .. :try_end_542} :catch_118
    .catch Ljava/io/IOException; {:try_start_533 .. :try_end_542} :catch_19c

    goto :goto_518
.end method

.method writePackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .registers 13
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v9, "enabled-components"

    const-string v8, "disabled-components"

    const-string v7, "name"

    const-string v6, "item"

    .line 8761
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8762
    const-string v2, "name"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8763
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 8764
    const-string v2, "realName"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8766
    :cond_20
    const-string v2, "codePath"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8767
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 8768
    const-string v2, "resourcePath"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8770
    :cond_38
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 8771
    const-string v2, "nativeLibraryPath"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8773
    :cond_43
    const-string v2, "flags"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8775
    const-string v2, "ft"

    iget-wide v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->timeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8776
    const-string v2, "it"

    iget-wide v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8777
    const-string v2, "ut"

    iget-wide v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8778
    const-string v2, "version"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8779
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v2, :cond_f4

    .line 8780
    const-string v2, "userId"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8786
    :goto_89
    iget-boolean v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->uidError:Z

    if-eqz v2, :cond_94

    .line 8787
    const-string v2, "uidError"

    const-string v3, "true"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8789
    :cond_94
    iget v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    if-eqz v2, :cond_a4

    .line 8790
    const-string v2, "enabled"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_100

    const-string v3, "true"

    :goto_a1
    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8794
    :cond_a4
    iget v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installStatus:I

    if-nez v2, :cond_af

    .line 8795
    const-string v2, "installStatus"

    const-string v3, "false"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8797
    :cond_af
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_ba

    .line 8798
    const-string v2, "installer"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8800
    :cond_ba
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    const-string v3, "sigs"

    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8801
    iget v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_108

    .line 8802
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8803
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v2, :cond_103

    .line 8808
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8809
    .local v1, name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8810
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8811
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d8

    .line 8783
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :cond_f4
    const-string v2, "sharedUserId"

    iget v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_89

    .line 8790
    :cond_100
    const-string v3, "false"

    goto :goto_a1

    .line 8814
    :cond_103
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8816
    :cond_108
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_13c

    .line 8817
    const-string v2, "disabled-components"

    invoke-interface {p1, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8818
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_11b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_137

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8819
    .restart local v1       #name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8820
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8821
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_11b

    .line 8823
    .end local v1           #name:Ljava/lang/String;
    :cond_137
    const-string v2, "disabled-components"

    invoke-interface {p1, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8825
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_13c
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_170

    .line 8826
    const-string v2, "enabled-components"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8827
    iget-object v2, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_14f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8828
    .restart local v1       #name:Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8829
    const-string v2, "name"

    invoke-interface {p1, v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8830
    const-string v2, "item"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_14f

    .line 8832
    .end local v1           #name:Ljava/lang/String;
    :cond_16b
    const-string v2, "enabled-components"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8835
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_170
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8836
    return-void
.end method

.method writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    .registers 8
    .parameter "serializer"
    .parameter "bp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "item"

    .line 8840
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_68

    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_68

    .line 8842
    const-string v1, "item"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8843
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8844
    const-string v1, "package"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8845
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    if-eqz v1, :cond_2e

    .line 8847
    const-string v1, "protection"

    iget v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8852
    :cond_2e
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_63

    .line 8853
    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_69

    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v0, v1

    .line 8855
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    :goto_3c
    if-eqz v0, :cond_63

    .line 8856
    const-string v1, "type"

    const-string v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8857
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_54

    .line 8858
    const-string v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8861
    :cond_54
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_63

    .line 8862
    const-string v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8867
    .end local v0           #pi:Landroid/content/pm/PermissionInfo;
    :cond_63
    const-string v1, "item"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8869
    :cond_68
    return-void

    .line 8853
    :cond_69
    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    move-object v0, v1

    goto :goto_3c
.end method
