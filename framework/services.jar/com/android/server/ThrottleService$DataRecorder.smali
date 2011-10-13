.class Lcom/android/server/ThrottleService$DataRecorder;
.super Ljava/lang/Object;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataRecorder"
.end annotation


# static fields
.field private static final DATA_FILE_VERSION:I = 0x1

.field private static final MAX_SIMS_SUPPORTED:I = 0x3


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentPeriod:I

.field mImsi:Ljava/lang/String;

.field mParent:Lcom/android/server/ThrottleService;

.field mPeriodCount:I

.field mPeriodEnd:Ljava/util/Calendar;

.field mPeriodRxData:[J

.field mPeriodStart:Ljava/util/Calendar;

.field mPeriodTxData:[J

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/ThrottleService;)V
    .registers 5
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    .line 809
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    .line 810
    iput-object p2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    .line 812
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 815
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 816
    const/4 v1, 0x6

    :try_start_1a
    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    .line 817
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    .line 818
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    .line 820
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 821
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 823
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    .line 824
    monitor-exit v0

    .line 825
    return-void

    .line 824
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private checkAndDeleteLRUDataFile(Ljava/io/File;)V
    .registers 14
    .parameter "dir"

    .prologue
    const/4 v10, 0x3

    const-string v11, "ThrottleService"

    .line 951
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 953
    .local v2, files:[Ljava/io/File;
    array-length v6, v2

    if-gt v6, v10, :cond_b

    .line 967
    :cond_a
    :goto_a
    return-void

    .line 954
    :cond_b
    const-string v6, "ThrottleService"

    const-string v6, "Too many data files"

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_12
    const/4 v5, 0x0

    .line 957
    .local v5, oldest:Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_16
    if-ge v3, v4, :cond_2c

    aget-object v1, v0, v3

    .line 958
    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_28

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_29

    .line 959
    :cond_28
    move-object v5, v1

    .line 957
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 962
    .end local v1           #f:Ljava/io/File;
    :cond_2c
    if-eqz v5, :cond_a

    .line 963
    const-string v6, "ThrottleService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deleting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 965
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 966
    array-length v6, v2

    if-gt v6, v10, :cond_12

    goto :goto_a
.end method

.method private checkForSubscriberId()V
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 946
    :cond_4
    :goto_4
    return-void

    .line 941
    :cond_5
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 945
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    goto :goto_4
.end method

.method private getDataFile()Ljava/io/File;
    .registers 8

    .prologue
    .line 919
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 920
    .local v0, dataDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system/throttle"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 921
    .local v4, throttleDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 922
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, mImsi:Ljava/lang/String;
    if-nez v3, :cond_25

    .line 925
    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->useMRUFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 932
    .local v1, dataFile:Ljava/io/File;
    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 933
    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->checkAndDeleteLRUDataFile(Ljava/io/File;)V

    .line 934
    return-object v1

    .line 928
    .end local v1           #dataFile:Ljava/io/File;
    :cond_25
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, imsiHash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #dataFile:Ljava/io/File;
    goto :goto_1a
.end method

.method private record()V
    .registers 9

    .prologue
    const-string v7, ":"

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 997
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 998
    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1000
    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_2e

    .line 1002
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1003
    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1005
    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_42

    .line 1006
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1007
    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1009
    :cond_42
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1010
    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1012
    const-string v5, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1015
    const/4 v3, 0x0

    .line 1017
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_64
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_93
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_74} :catch_82

    .line 1018
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_9e
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7b} :catch_a1

    .line 1023
    if-eqz v4, :cond_80

    .line 1025
    :try_start_7d
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_9c

    :cond_80
    :goto_80
    move-object v3, v4

    .line 1029
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_81
    :goto_81
    return-void

    .line 1019
    :catch_82
    move-exception v5

    move-object v1, v5

    .line 1020
    .local v1, e:Ljava/io/IOException;
    :goto_84
    :try_start_84
    const-string v5, "ThrottleService"

    const-string v6, "Error writing data file"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_93

    .line 1023
    if-eqz v3, :cond_81

    .line 1025
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_81

    .line 1026
    :catch_91
    move-exception v5

    goto :goto_81

    .line 1023
    .end local v1           #e:Ljava/io/IOException;
    :catchall_93
    move-exception v5

    :goto_94
    if-eqz v3, :cond_99

    .line 1025
    :try_start_96
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a

    .line 1023
    :cond_99
    :goto_99
    throw v5

    .line 1026
    :catch_9a
    move-exception v6

    goto :goto_99

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_9c
    move-exception v5

    goto :goto_80

    .line 1023
    :catchall_9e
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_94

    .line 1019
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_a1
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_84
.end method

.method private retrieve()V
    .registers 15

    .prologue
    const-string v12, "ThrottleService"

    .line 1033
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/server/ThrottleService$DataRecorder;->zeroData(I)V

    .line 1035
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v3

    .line 1037
    .local v3, f:Ljava/io/File;
    const/4 v8, 0x0

    .line 1039
    .local v8, s:Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v0, v10, [B

    .line 1040
    .local v0, buffer:[B
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_46
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_35

    .line 1041
    .end local v8           #s:Ljava/io/FileInputStream;
    .local v9, s:Ljava/io/FileInputStream;
    :try_start_17
    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_136
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_13a

    .line 1046
    if-eqz v9, :cond_1f

    .line 1048
    :try_start_1c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_133

    .line 1052
    :cond_1f
    :goto_1f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1053
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4d

    .line 1054
    :cond_2c
    const-string v10, "ThrottleService"

    const-string v10, "data file empty"

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 1091
    .end local v0           #buffer:[B
    .end local v1           #data:Ljava/lang/String;
    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    :cond_34
    :goto_34
    return-void

    .line 1042
    :catch_35
    move-exception v10

    move-object v2, v10

    .line 1043
    .local v2, e:Ljava/io/IOException;
    :goto_37
    :try_start_37
    const-string v10, "ThrottleService"

    const-string v11, "Error reading data file"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_46

    .line 1046
    if-eqz v8, :cond_34

    .line 1048
    :try_start_40
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_34

    .line 1049
    :catch_44
    move-exception v10

    goto :goto_34

    .line 1046
    .end local v2           #e:Ljava/io/IOException;
    :catchall_46
    move-exception v10

    :goto_47
    if-eqz v8, :cond_4c

    .line 1048
    :try_start_49
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_130

    .line 1046
    :cond_4c
    :goto_4c
    throw v10

    .line 1057
    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #data:Ljava/lang/String;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :cond_4d
    iget-object v10, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v10

    .line 1058
    :try_start_50
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1059
    .local v5, parsed:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1060
    .local v6, parsedUsed:I
    array-length v11, v5

    const/4 v12, 0x6

    if-ge v11, v12, :cond_65

    .line 1061
    const-string v11, "ThrottleService"

    const-string v12, "reading data file with insufficient length - ignoring"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    monitor-exit v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto :goto_34

    .line 1065
    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :cond_65
    add-int/lit8 v7, v6, 0x1

    .end local v6           #parsedUsed:I
    .local v7, parsedUsed:I
    aget-object v11, v5, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7a

    .line 1066
    const-string v11, "ThrottleService"

    const-string v12, "reading data file with bad version - ignoring"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    monitor-exit v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto :goto_34

    .line 1070
    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :cond_7a
    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    .line 1071
    array-length v11, v5

    iget v12, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x5

    if-eq v11, v12, :cond_c0

    .line 1072
    const-string v11, "ThrottleService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reading data file with bad length ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " != "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") - ignoring"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    monitor-exit v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto/16 :goto_34

    .line 1077
    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :cond_c0
    iget v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v11, v11, [J

    iput-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    .line 1078
    const/4 v4, 0x0

    .local v4, i:I
    move v7, v6

    .end local v6           #parsedUsed:I
    .restart local v7       #parsedUsed:I
    :goto_c8
    iget v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v4, v11, :cond_dc

    .line 1079
    iget-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v12, v5, v7

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v4

    .line 1078
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #parsedUsed:I
    .restart local v7       #parsedUsed:I
    goto :goto_c8

    .line 1081
    :cond_dc
    iget v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v11, v11, [J

    iput-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    .line 1082
    const/4 v4, 0x0

    :goto_e3
    iget v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v4, v11, :cond_f7

    .line 1083
    iget-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v12, v5, v7

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v4

    .line 1082
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #parsedUsed:I
    .restart local v7       #parsedUsed:I
    goto :goto_e3

    .line 1085
    :cond_f7
    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v11, v5, v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 1086
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 1087
    iget-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #parsedUsed:I
    .restart local v7       #parsedUsed:I
    aget-object v12, v5, v6

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1088
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 1089
    iget-object v11, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #parsedUsed:I
    .restart local v6       #parsedUsed:I
    aget-object v12, v5, v7

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1090
    monitor-exit v10

    move-object v8, v9

    .line 1091
    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto/16 :goto_34

    .line 1090
    .end local v4           #i:I
    .end local v5           #parsed:[Ljava/lang/String;
    .end local v6           #parsedUsed:I
    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :catchall_12d
    move-exception v11

    monitor-exit v10
    :try_end_12f
    .catchall {:try_start_50 .. :try_end_12f} :catchall_12d

    throw v11

    .line 1049
    .end local v0           #buffer:[B
    .end local v1           #data:Ljava/lang/String;
    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    :catch_130
    move-exception v11

    goto/16 :goto_4c

    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v9       #s:Ljava/io/FileInputStream;
    :catch_133
    move-exception v10

    goto/16 :goto_1f

    .line 1046
    :catchall_136
    move-exception v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto/16 :goto_47

    .line 1042
    .end local v8           #s:Ljava/io/FileInputStream;
    .restart local v9       #s:Ljava/io/FileInputStream;
    :catch_13a
    move-exception v10

    move-object v2, v10

    move-object v8, v9

    .end local v9           #s:Ljava/io/FileInputStream;
    .restart local v8       #s:Ljava/io/FileInputStream;
    goto/16 :goto_37
.end method

.method private setPeriodEnd(Ljava/util/Calendar;)V
    .registers 4
    .parameter "end"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 873
    :try_start_3
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 874
    monitor-exit v0

    .line 875
    return-void

    .line 874
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setPeriodStart(Ljava/util/Calendar;)V
    .registers 4
    .parameter "start"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 885
    :try_start_3
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 886
    monitor-exit v0

    .line 887
    return-void

    .line 886
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private useMRUFile(Ljava/io/File;)Ljava/io/File;
    .registers 12
    .parameter "dir"

    .prologue
    .line 970
    const/4 v5, 0x0

    .line 971
    .local v5, newest:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 973
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v4, :cond_1e

    aget-object v1, v0, v3

    .line 974
    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1b

    .line 975
    :cond_1a
    move-object v5, v1

    .line 973
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 978
    .end local v1           #f:Ljava/io/File;
    :cond_1e
    if-nez v5, :cond_27

    .line 979
    new-instance v5, Ljava/io/File;

    .end local v5           #newest:Ljava/io/File;
    const-string v6, "temp"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 981
    .restart local v5       #newest:Ljava/io/File;
    :cond_27
    return-object v5
.end method

.method private zeroData(I)V
    .registers 7
    .parameter "field"

    .prologue
    .line 896
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 897
    const/4 v0, 0x0

    .local v0, period:I
    :goto_4
    :try_start_4
    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v0, v2, :cond_17

    .line 898
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 899
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 901
    :cond_17
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 902
    monitor-exit v1

    .line 904
    return-void

    .line 902
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v2
.end method


# virtual methods
.method addData(JJ)V
    .registers 10
    .parameter "bytesRead"
    .parameter "bytesWritten"

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    .line 911
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 912
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v1, v2

    add-long/2addr v3, p1

    aput-wide v3, v1, v2

    .line 913
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v1, v2

    add-long/2addr v3, p3

    aput-wide v3, v1, v2

    .line 914
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    .line 915
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    .line 916
    return-void

    .line 914
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getPeriodCount()I
    .registers 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 891
    :try_start_3
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    monitor-exit v0

    return v1

    .line 892
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getPeriodEnd()J
    .registers 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 867
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 868
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getPeriodRx(I)J
    .registers 5
    .parameter "which"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 1095
    :try_start_3
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v1, :cond_c

    const-wide/16 v1, 0x0

    monitor-exit v0

    move-wide v0, v1

    .line 1098
    :goto_b
    return-wide v0

    .line 1096
    :cond_c
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v1, p1

    .line 1097
    if-gez p1, :cond_15

    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v1

    .line 1098
    :cond_15
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v1, v1, p1

    monitor-exit v0

    move-wide v0, v1

    goto :goto_b

    .line 1099
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getPeriodStart()J
    .registers 4

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 879
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 880
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getPeriodTx(I)J
    .registers 5
    .parameter "which"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v0

    .line 1103
    :try_start_3
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v1, :cond_c

    const-wide/16 v1, 0x0

    monitor-exit v0

    move-wide v0, v1

    .line 1106
    :goto_b
    return-wide v0

    .line 1104
    :cond_c
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v1, p1

    .line 1105
    if-gez p1, :cond_15

    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v1

    .line 1106
    :cond_15
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v1, v1, p1

    monitor-exit v0

    move-wide v0, v1

    goto :goto_b

    .line 1107
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method setNextPeriod(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 9
    .parameter "start"
    .parameter "end"

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    .line 830
    const/4 v0, 0x1

    .line 832
    .local v0, startNewPeriod:Z
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 838
    const/4 v0, 0x0

    .line 859
    :goto_15
    invoke-direct {p0, p1}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodStart(Ljava/util/Calendar;)V

    .line 860
    invoke-direct {p0, p2}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodEnd(Ljava/util/Calendar;)V

    .line 861
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    .line 862
    return v0

    .line 852
    :cond_1f
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 853
    :try_start_22
    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 854
    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-lt v2, v3, :cond_31

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 855
    :cond_31
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 856
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 857
    monitor-exit v1

    goto :goto_15

    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_43

    throw v2
.end method
