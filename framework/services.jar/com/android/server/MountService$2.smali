.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, path:Ljava/lang/String;
    const-string v9, "removed"

    .line 607
    .local v9, state:Ljava/lang/String;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume list"

    const/16 v15, 0x6e

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 609
    .local v11, vols:[Ljava/lang/String;
    move-object v1, v11

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1e
    if-ge v5, v6, :cond_ed

    aget-object v12, v1, v5

    .line 610
    .local v12, volstr:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 612
    .local v10, tok:[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4a

    .line 613
    const-string v13, "MountService"

    const-string v14, "Skipping unknown volume \'%s\'"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, v10, v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 617
    :cond_4a
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 618
    .local v8, st:I
    if-nez v8, :cond_b6

    .line 619
    const-string v9, "removed"

    .line 631
    :goto_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    const/4 v14, 0x1

    aget-object v14, v10, v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ro.product."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".automount"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_83} :catch_84

    goto :goto_47

    .line 638
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #st:I
    .end local v10           #tok:[Ljava/lang/String;
    .end local v11           #vols:[Ljava/lang/String;
    .end local v12           #volstr:Ljava/lang/String;
    :catch_84
    move-exception v13

    move-object v3, v13

    .line 639
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state"

    invoke-static {v13, v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    const-string v14, "removed"

    invoke-static {v13, v7, v14}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .end local v3           #e:Ljava/lang/Exception;
    :cond_97
    :goto_97
    :try_start_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    const-string v14, "ums"

    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v2

    .line 645
    .local v2, avail:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    const-string v14, "ums"

    invoke-static {v13, v14, v2}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_ac} :catch_f8

    .line 653
    .end local v2           #avail:Z
    :goto_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;Z)Z

    .line 654
    return-void

    .line 620
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #st:I
    .restart local v10       #tok:[Ljava/lang/String;
    .restart local v11       #vols:[Ljava/lang/String;
    .restart local v12       #volstr:Ljava/lang/String;
    :cond_b6
    const/4 v13, 0x1

    if-ne v8, v13, :cond_bc

    .line 621
    :try_start_b9
    const-string v9, "unmounted"

    goto :goto_55

    .line 622
    :cond_bc
    const/4 v13, 0x4

    if-ne v8, v13, :cond_c9

    .line 623
    const-string v9, "mounted"

    .line 624
    const-string v13, "MountService"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 625
    :cond_c9
    const/4 v13, 0x7

    if-ne v8, v13, :cond_d6

    .line 626
    const-string v9, "shared"

    .line 627
    const-string v13, "MountService"

    const-string v14, "Media shared on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 629
    :cond_d6
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Unexpected state %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 634
    .end local v8           #st:I
    .end local v10           #tok:[Ljava/lang/String;
    .end local v12           #volstr:Ljava/lang/String;
    :cond_ed
    if-eqz v9, :cond_97

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    move-object v13, v0

    invoke-static {v13, v7, v9}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_f7} :catch_84

    goto :goto_97

    .line 646
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v11           #vols:[Ljava/lang/String;
    :catch_f8
    move-exception v13

    move-object v4, v13

    .line 647
    .local v4, ex:Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Failed to get share availability"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac
.end method
