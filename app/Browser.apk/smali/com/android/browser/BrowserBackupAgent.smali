.class public Lcom/android/browser/BrowserBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "BrowserBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBackupAgent$Bookmark;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 198
    return-void
.end method

.method private buildBookmarkFile(Ljava/io/FileOutputStream;)J
    .locals 23
    .parameter "outfstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    .line 212
    .local v12, crc:Ljava/util/zip/CRC32;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x200

    invoke-direct {v10, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 213
    .local v10, bufstream:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 215
    .local v9, bout:Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "visits"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "date"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "created"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "title"

    aput-object v7, v5, v6

    const-string v6, "bookmark == 1 "

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 222
    .local v15, cursor:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 224
    .local v11, count:I
    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    .line 226
    .local v19, record:[B
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 227
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 230
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move v1, v11

    if-ge v0, v1, :cond_1

    .line 231
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 233
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 234
    .local v21, url:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 235
    .local v22, visits:I
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 236
    .local v16, date:J
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 237
    .local v13, created:J
    const/4 v3, 0x4

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 239
    .local v20, title:Ljava/lang/String;
    if-nez v20, :cond_0

    .line 241
    const-string v20, ""

    .line 245
    :cond_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 246
    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 247
    move-object v0, v9

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 248
    move-object v0, v9

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 249
    invoke-virtual {v9, v13, v14}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 250
    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    .line 254
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 255
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 230
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 260
    .end local v13           #created:J
    .end local v16           #date:J
    .end local v20           #title:Ljava/lang/String;
    .end local v21           #url:Ljava/lang/String;
    .end local v22           #visits:I
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 261
    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    return-wide v3
.end method

.method private copyBackupToFile(Landroid/app/backup/BackupDataInput;Ljava/io/File;I)J
    .locals 7
    .parameter "data"
    .parameter "file"
    .parameter "toRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    .line 291
    const/16 v0, 0x2000

    .line 292
    .local v0, CHUNK:I
    new-array v1, v5, [B

    .line 293
    .local v1, buf:[B
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 294
    .local v2, crc:Ljava/util/zip/CRC32;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 297
    .local v4, out:Ljava/io/FileOutputStream;
    :goto_0
    if-lez p3, :cond_0

    .line 298
    const/4 v5, 0x0

    const/16 v6, 0x2000

    :try_start_0
    invoke-virtual {p1, v1, v5, v6}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    move-result v3

    .line 299
    .local v3, numRead:I
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 300
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    sub-int/2addr p3, v3

    .line 302
    goto :goto_0

    .line 304
    .end local v3           #numRead:I
    :cond_0
    if-eqz v4, :cond_1

    .line 305
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 308
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    return-wide v5

    .line 304
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v5
.end method

.method private copyFileToBackup(Ljava/lang/String;Ljava/io/File;Landroid/app/backup/BackupDataOutput;)V
    .locals 7
    .parameter "key"
    .parameter "file"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    .line 267
    const/16 v0, 0x2000

    .line 268
    .local v0, CHUNK:I
    new-array v1, v5, [B

    .line 270
    .local v1, buf:[B
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 271
    .local v4, toCopy:I
    invoke-virtual {p3, p1, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 273
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 276
    .local v2, in:Ljava/io/FileInputStream;
    :goto_0
    if-lez v4, :cond_0

    .line 277
    const/4 v5, 0x0

    const/16 v6, 0x2000

    :try_start_0
    invoke-virtual {v2, v1, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 278
    .local v3, nRead:I
    invoke-virtual {p3, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    sub-int/2addr v4, v3

    goto :goto_0

    .line 282
    .end local v3           #nRead:I
    :cond_0
    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 286
    :cond_1
    return-void

    .line 282
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    .line 283
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw v5
.end method

.method private writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fileSize"
    .parameter "crc"
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 317
    .local v0, out:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 318
    invoke-virtual {v0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 325
    :cond_0
    return-void

    .line 321
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    throw v1
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 18
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const-wide/16 v14, -0x1

    .line 75
    .local v14, savedFileSize:J
    const-wide/16 v12, -0x1

    .line 76
    .local v12, savedCrc:J
    const/16 v16, -0x1

    .line 79
    .local v16, savedVersion:I
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    .local v10, in:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 83
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 84
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 88
    if-eqz v10, :cond_0

    .line 89
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 94
    :cond_0
    :goto_0
    const-string v4, "bkp"

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v17

    .line 96
    .local v17, tmpfile:Ljava/io/File;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 97
    .local v11, outfstream:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserBackupAgent;->buildBookmarkFile(Ljava/io/FileOutputStream;)J

    move-result-wide v7

    .line 98
    .local v7, newCrc:J
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 101
    if-nez v16, :cond_1

    cmp-long v4, v7, v12

    if-nez v4, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-eqz v4, :cond_2

    .line 105
    :cond_1
    const-string v4, "_bookmarks_"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserBackupAgent;->copyFileToBackup(Ljava/lang/String;Ljava/io/File;Landroid/app/backup/BackupDataOutput;)V

    .line 109
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/browser/BrowserBackupAgent;->writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 114
    return-void

    .line 85
    .end local v7           #newCrc:J
    .end local v11           #outfstream:Ljava/io/FileOutputStream;
    .end local v17           #tmpfile:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 88
    if-eqz v10, :cond_0

    .line 89
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_3

    .line 89
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    :cond_3
    throw v4

    .line 112
    .restart local v17       #tmpfile:Ljava/io/File;
    :catchall_1
    move-exception v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    throw v4
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 26
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide/16 v10, -0x1

    .line 125
    .local v10, crc:J
    const-string v4, "rst"

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v25

    .line 127
    .local v25, tmpfile:Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 128
    const-string v4, "_bookmarks_"

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserBackupAgent;->copyBackupToFile(Landroid/app/backup/BackupDataInput;Ljava/io/File;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 132
    .end local v10           #crc:J
    .local v16, crc:J
    :try_start_1
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 133
    .local v21, infstream:Ljava/io/FileInputStream;
    new-instance v20, Ljava/io/DataInputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 136
    .local v20, in:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 137
    .local v15, count:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v14, bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/BrowserBackupAgent$Bookmark;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move v1, v15

    if-ge v0, v1, :cond_0

    .line 142
    new-instance v23, Lcom/android/browser/BrowserBackupAgent$Bookmark;

    invoke-direct/range {v23 .. v23}, Lcom/android/browser/BrowserBackupAgent$Bookmark;-><init>()V

    .line 143
    .local v23, mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    .line 144
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->visits:I

    .line 145
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/browser/BrowserBackupAgent$Bookmark;->date:J

    .line 146
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/browser/BrowserBackupAgent$Bookmark;->created:J

    .line 147
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/browser/BrowserBackupAgent$Bookmark;->title:Ljava/lang/String;

    .line 148
    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 153
    .end local v23           #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    :cond_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 154
    .local v13, N:I
    const/16 v24, 0x0

    .line 156
    .local v24, nUnique:I
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v6, v4

    .line 157
    .local v6, urlCol:[Ljava/lang/String;
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move v1, v13

    if-ge v0, v1, :cond_2

    .line 158
    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/browser/BrowserBackupAgent$Bookmark;

    .line 161
    .restart local v23       #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url == \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bookmark"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " == 1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 165
    .local v18, cursor:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 169
    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->url:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/browser/BrowserBackupAgent$Bookmark;->title:Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 171
    add-int/lit8 v24, v24, 0x1

    .line 175
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 157
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 177
    .end local v18           #cursor:Landroid/database/Cursor;
    .end local v23           #mark:Lcom/android/browser/BrowserBackupAgent$Bookmark;
    :cond_2
    const-string v4, "BrowserBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored "

    .end local v6           #urlCol:[Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bookmarks"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    if-eqz v20, :cond_6

    .line 183
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v10, v16

    .line 190
    .end local v13           #N:I
    .end local v14           #bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/BrowserBackupAgent$Bookmark;>;"
    .end local v15           #count:I
    .end local v16           #crc:J
    .end local v19           #i:I
    .end local v20           #in:Ljava/io/DataInputStream;
    .end local v21           #infstream:Ljava/io/FileInputStream;
    .end local v24           #nUnique:I
    .restart local v10       #crc:J
    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v7, p0

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/android/browser/BrowserBackupAgent;->writeBackupState(JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 194
    :catchall_0
    move-exception v4

    :goto_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    throw v4

    .line 178
    .end local v10           #crc:J
    .restart local v16       #crc:J
    .restart local v20       #in:Ljava/io/DataInputStream;
    .restart local v21       #infstream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    move-object/from16 v22, v4

    .line 179
    .local v22, ioe:Ljava/io/IOException;
    :try_start_5
    const-string v4, "BrowserBackupAgent"

    const-string v5, "Bad backup data; not restoring"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 180
    const-wide/16 v10, -0x1

    .line 182
    .end local v16           #crc:J
    .restart local v10       #crc:J
    if-eqz v20, :cond_3

    .line 183
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 182
    .end local v10           #crc:J
    .end local v22           #ioe:Ljava/io/IOException;
    .restart local v16       #crc:J
    :catchall_1
    move-exception v4

    if-eqz v20, :cond_4

    .line 183
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->close()V

    :cond_4
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 194
    .end local v20           #in:Ljava/io/DataInputStream;
    .end local v21           #infstream:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-wide/from16 v10, v16

    .end local v16           #crc:J
    .restart local v10       #crc:J
    goto :goto_4

    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 196
    return-void

    .end local v10           #crc:J
    .restart local v13       #N:I
    .restart local v14       #bookmarks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/BrowserBackupAgent$Bookmark;>;"
    .restart local v15       #count:I
    .restart local v16       #crc:J
    .restart local v19       #i:I
    .restart local v20       #in:Ljava/io/DataInputStream;
    .restart local v21       #infstream:Ljava/io/FileInputStream;
    .restart local v24       #nUnique:I
    :cond_6
    move-wide/from16 v10, v16

    .end local v16           #crc:J
    .restart local v10       #crc:J
    goto :goto_3
.end method
