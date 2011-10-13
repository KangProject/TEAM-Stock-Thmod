.class Lcom/android/server/PackageManagerService$InstallParams;
.super Lcom/android/server/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field flags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

.field private mRet:I

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final packageURI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 4664
    iput-object p1, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 4665
    iput-object p2, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    .line 4666
    iput p4, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 4667
    iput-object p3, p0, Lcom/android/server/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 4668
    iput-object p5, p0, Lcom/android/server/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 4669
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I
    .registers 11
    .parameter "pkgLite"
    .parameter "flags"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4672
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 4673
    .local v2, packageName:Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 4674
    .local v0, installLocation:I
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_35

    move v1, v6

    .line 4675
    .local v1, onSd:Z
    :goto_b
    iget-object v4, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 4676
    :try_start_10
    iget-object v5, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 4677
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_47

    .line 4678
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_58

    .line 4680
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3b

    .line 4681
    if-eqz v1, :cond_38

    .line 4682
    const-string v5, "PackageManager"

    const-string v6, "Cannot install update to system app on sdcard"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    const/4 v5, -0x3

    monitor-exit v4

    move v4, v5

    .line 4716
    :goto_34
    return v4

    .line 4674
    .end local v1           #onSd:Z
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_35
    const/4 v4, 0x0

    move v1, v4

    goto :goto_b

    .line 4685
    .restart local v1       #onSd:Z
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_38
    monitor-exit v4

    move v4, v6

    goto :goto_34

    .line 4687
    :cond_3b
    if-eqz v1, :cond_40

    .line 4689
    monitor-exit v4

    move v4, v7

    goto :goto_34

    .line 4692
    :cond_40
    if-ne v0, v6, :cond_45

    .line 4694
    monitor-exit v4

    move v4, v6

    goto :goto_34

    .line 4695
    :cond_45
    if-ne v0, v7, :cond_4c

    .line 4710
    :cond_47
    monitor-exit v4

    .line 4713
    if-eqz v1, :cond_5f

    move v4, v7

    .line 4714
    goto :goto_34

    .line 4699
    :cond_4c
    invoke-static {v3}, Lcom/android/server/PackageManagerService;->access$2300(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 4700
    monitor-exit v4

    move v4, v7

    goto :goto_34

    .line 4702
    :cond_55
    monitor-exit v4

    move v4, v6

    goto :goto_34

    .line 4707
    :cond_58
    const/4 v5, -0x4

    monitor-exit v4

    move v4, v5

    goto :goto_34

    .line 4710
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_5c
    move-exception v5

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_10 .. :try_end_5e} :catchall_5c

    throw v5

    .line 4716
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_5f
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_34
.end method


# virtual methods
.method handleReturnCode()V
    .registers 4

    .prologue
    .line 4793
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_d

    .line 4794
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService;->access$2500(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;I)V

    .line 4796
    :cond_d
    return-void
.end method

.method handleServiceError()V
    .registers 2

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/PackageManagerService;->access$2400(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 4801
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    .line 4802
    return-void
.end method

.method public handleStartCopy()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const-string v8, "PackageManager"

    .line 4726
    const/4 v5, 0x1

    .line 4727
    .local v5, ret:I
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_40

    move v0, v10

    .line 4728
    .local v0, fwdLocked:Z
    :goto_c
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_42

    move v3, v10

    .line 4729
    .local v3, onSd:Z
    :goto_13
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_44

    move v2, v10

    .line 4730
    .local v2, onInt:Z
    :goto_1a
    if-eqz v2, :cond_46

    if-eqz v3, :cond_46

    .line 4732
    const-string v6, "PackageManager"

    const-string v6, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    const/16 v5, -0x13

    .line 4779
    :cond_27
    :goto_27
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v6, p0}, Lcom/android/server/PackageManagerService;->access$2400(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 4780
    if-ne v5, v10, :cond_3d

    .line 4783
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/android/server/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v5

    .line 4785
    :cond_3d
    iput v5, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    .line 4786
    return-void

    .end local v0           #fwdLocked:Z
    .end local v2           #onInt:Z
    .end local v3           #onSd:Z
    :cond_40
    move v0, v7

    .line 4727
    goto :goto_c

    .restart local v0       #fwdLocked:Z
    :cond_42
    move v3, v7

    .line 4728
    goto :goto_13

    .restart local v3       #onSd:Z
    :cond_44
    move v2, v7

    .line 4729
    goto :goto_1a

    .line 4734
    .restart local v2       #onInt:Z
    :cond_46
    if-eqz v0, :cond_54

    if-eqz v3, :cond_54

    .line 4736
    const-string v6, "PackageManager"

    const-string v6, "Cannot install fwd locked apps on sdcard"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    const/16 v5, -0x13

    goto :goto_27

    .line 4742
    :cond_54
    :try_start_54
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v7, "com.android.defcontainer"

    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 4744
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-interface {v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Landroid/net/Uri;I)Landroid/content/pm/PackageInfoLite;
    :try_end_6d
    .catchall {:try_start_54 .. :try_end_6d} :catchall_7f

    move-result-object v4

    .line 4746
    .local v4, pkgLite:Landroid/content/pm/PackageInfoLite;
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 4749
    iget v1, v4, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 4750
    .local v1, loc:I
    const/4 v6, -0x3

    if-ne v1, v6, :cond_8a

    .line 4751
    const/16 v5, -0x13

    goto :goto_27

    .line 4746
    .end local v1           #loc:I
    .end local v4           #pkgLite:Landroid/content/pm/PackageInfoLite;
    :catchall_7f
    move-exception v6

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v6

    .line 4752
    .restart local v1       #loc:I
    .restart local v4       #pkgLite:Landroid/content/pm/PackageInfoLite;
    :cond_8a
    const/4 v6, -0x4

    if-ne v1, v6, :cond_8f

    .line 4753
    const/4 v5, -0x1

    goto :goto_27

    .line 4754
    :cond_8f
    const/4 v6, -0x1

    if-ne v1, v6, :cond_94

    .line 4755
    const/4 v5, -0x4

    goto :goto_27

    .line 4756
    :cond_94
    const/4 v6, -0x2

    if-ne v1, v6, :cond_99

    .line 4757
    const/4 v5, -0x2

    goto :goto_27

    .line 4758
    :cond_99
    const/4 v6, -0x5

    if-ne v1, v6, :cond_9f

    .line 4759
    const/16 v5, -0x14

    goto :goto_27

    .line 4762
    :cond_9f
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-direct {p0, v4, v6}, Lcom/android/server/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I

    move-result v1

    .line 4763
    if-nez v3, :cond_27

    if-nez v2, :cond_27

    .line 4765
    const/4 v6, 0x2

    if-ne v1, v6, :cond_ba

    .line 4767
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 4768
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, -0x11

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_27

    .line 4772
    :cond_ba
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 4773
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_27
.end method
