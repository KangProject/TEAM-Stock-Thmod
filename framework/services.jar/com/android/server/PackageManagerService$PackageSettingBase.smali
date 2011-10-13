.class Lcom/android/server/PackageManagerService$PackageSettingBase;
.super Lcom/android/server/PackageManagerService$GrantedPermissions;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageSettingBase"
.end annotation


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enabled:I

.field enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field firstInstallTime:J

.field haveGids:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field lastUpdateTime:J

.field final name:Ljava/lang/String;

.field nativeLibraryPathString:Ljava/lang/String;

.field origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

.field permissionsFixed:Z

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService$PackageSettingBase;)V
    .locals 2
    .parameter "base"

    .prologue
    const/4 v1, 0x0

    .line 7730
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$GrantedPermissions;-><init>(Lcom/android/server/PackageManagerService$GrantedPermissions;)V

    .line 7701
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 7707
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 7709
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 7710
    iput v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 7711
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7732
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    .line 7733
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    .line 7734
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    .line 7735
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 7736
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 7737
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 7738
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 7739
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7740
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    .line 7741
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    .line 7742
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    .line 7744
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->uidError:Z

    .line 7746
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$PackageSignatures;-><init>(Lcom/android/server/PackageManagerService$PackageSignatures;)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 7748
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    .line 7749
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    .line 7751
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 7753
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 7755
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 7756
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7758
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 7760
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 7761
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V
    .locals 2
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    const/4 v1, 0x0

    .line 7720
    invoke-direct {p0, p7}, Lcom/android/server/PackageManagerService$GrantedPermissions;-><init>(I)V

    .line 7701
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/PackageManagerService$PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 7707
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 7709
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 7710
    iput v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 7711
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7721
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->name:Ljava/lang/String;

    .line 7722
    iput-object p2, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->realName:Ljava/lang/String;

    .line 7723
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/PackageManagerService$PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    .line 7724
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 7797
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    .line 7798
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->gids:[I

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->gids:[I

    .line 7800
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7801
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    .line 7802
    iget-wide v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    .line 7803
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 7804
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    .line 7805
    iget-boolean v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->haveGids:Z

    .line 7806
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 7807
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 7808
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 7809
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7810
    return-void
.end method

.method currentEnabledStateLP(Ljava/lang/String;)I
    .locals 1
    .parameter "componentName"

    .prologue
    .line 7831
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7832
    const/4 v0, 0x1

    .line 7836
    :goto_0
    return v0

    .line 7833
    :cond_0
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7834
    const/4 v0, 0x2

    goto :goto_0

    .line 7836
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method disableComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7819
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7820
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7821
    return v0
.end method

.method enableComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7813
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7814
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7815
    return v0
.end method

.method public getInstallStatus()I
    .locals 1

    .prologue
    .line 7786
    iget v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7778
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    .locals 1
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"

    .prologue
    .line 7765
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePath:Ljava/io/File;

    .line 7766
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 7767
    iput-object p2, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 7768
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 7769
    iput-object p3, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 7770
    iput p4, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->versionCode:I

    .line 7771
    return-void
.end method

.method restoreComponentLP(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 7825
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 7826
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 7827
    return v0
.end method

.method public setInstallStatus(I)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 7782
    iput p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 7783
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 7774
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 7775
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "newStamp"

    .prologue
    .line 7790
    iput-wide p1, p0, Lcom/android/server/PackageManagerService$PackageSettingBase;->timeStamp:J

    .line 7791
    return-void
.end method
