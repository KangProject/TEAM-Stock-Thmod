.class Lcom/sonyericsson/storage/Storage$ReadRootTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadRootTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private mRoot:Lcom/sonyericsson/storage/Root;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read root - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    .line 361
    iput-object p2, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    .line 362
    iput-object p3, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    .line 363
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;Lcom/sonyericsson/storage/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/storage/Storage$ReadRootTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V

    return-void
.end method

.method private convertZipToGzip(Ljava/lang/String;)Z
    .locals 17
    .parameter "name"

    .prologue
    .line 441
    const/4 v10, 0x0

    .line 442
    .local v10, inputStream:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 443
    .local v12, zipFile:Ljava/util/zip/ZipFile;
    const/4 v8, 0x0

    .line 444
    .local v8, gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    const/4 v3, 0x0

    .line 447
    .local v3, converted:Z
    :try_start_0
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    move-object v14, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".zip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 449
    .end local v12           #zipFile:Ljava/util/zip/ZipFile;
    .local v13, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 451
    .local v6, entry:Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_1

    .line 452
    invoke-virtual {v13, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 453
    if-eqz v10, :cond_1

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    move-object v14, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".xml.gz"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 456
    .local v7, fileOutputStream:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6

    .line 457
    .end local v8           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .local v9, gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    const/16 v14, 0x400

    :try_start_2
    new-array v2, v14, [B

    .line 458
    .local v2, buf:[B
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 459
    .local v11, len:I
    :goto_0
    if-lez v11, :cond_0

    .line 460
    const/4 v14, 0x0

    invoke-virtual {v9, v2, v14, v11}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 461
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v11

    goto :goto_0

    .line 463
    :cond_0
    const/4 v3, 0x1

    move-object v8, v9

    .line 473
    .end local v2           #buf:[B
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v9           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .end local v11           #len:I
    .restart local v8       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    :cond_1
    if-eqz v10, :cond_2

    .line 474
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 476
    :cond_2
    if-eqz v8, :cond_3

    .line 477
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 479
    :cond_3
    if-eqz v13, :cond_4

    .line 480
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move-object v12, v13

    .line 486
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #zipFile:Ljava/util/zip/ZipFile;
    :cond_5
    :goto_1
    return v3

    .line 482
    .end local v12           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v6       #entry:Ljava/util/zip/ZipEntry;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v14

    move-object v12, v13

    .line 484
    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 466
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v14

    move-object v4, v14

    .line 467
    .local v4, e1:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v14, "Storage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "I/O error when reading: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".zip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 473
    if-eqz v10, :cond_6

    .line 474
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 476
    :cond_6
    if-eqz v8, :cond_7

    .line 477
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 479
    :cond_7
    if-eqz v12, :cond_5

    .line 480
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 482
    :catch_2
    move-exception v14

    goto :goto_1

    .line 469
    .end local v4           #e1:Ljava/io/IOException;
    :catch_3
    move-exception v14

    move-object v5, v14

    .line 470
    .local v5, e2:Ljava/lang/IllegalStateException;
    :goto_3
    :try_start_6
    const-string v14, "Storage"

    const-string v15, "ZipFile was closed unexpectedly."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 473
    if-eqz v10, :cond_8

    .line 474
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 476
    :cond_8
    if-eqz v8, :cond_9

    .line 477
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 479
    :cond_9
    if-eqz v12, :cond_5

    .line 480
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 482
    :catch_4
    move-exception v14

    goto :goto_1

    .line 472
    .end local v5           #e2:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v14

    .line 473
    :goto_4
    if-eqz v10, :cond_a

    .line 474
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 476
    :cond_a
    if-eqz v8, :cond_b

    .line 477
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 479
    :cond_b
    if-eqz v12, :cond_c

    .line 480
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 483
    :cond_c
    :goto_5
    throw v14

    .line 482
    :catch_5
    move-exception v15

    goto :goto_5

    .line 472
    .end local v12           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .end local v8           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .end local v12           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v6       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v9       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v14

    move-object v8, v9

    .end local v9           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v8       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 469
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v12           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v14

    move-object v5, v14

    move-object v12, v13

    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_3

    .end local v8           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .end local v12           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v6       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v9       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v14

    move-object v5, v14

    move-object v8, v9

    .end local v9           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v8       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 466
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v12           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v14

    move-object v4, v14

    move-object v12, v13

    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v8           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .end local v12           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v6       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v9       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v13       #zipFile:Ljava/util/zip/ZipFile;
    :catch_9
    move-exception v14

    move-object v4, v14

    move-object v8, v9

    .end local v9           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .restart local v8       #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v12       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_2
.end method


# virtual methods
.method public execute()V
    .locals 10

    .prologue
    const-string v7, ".xml.gz"

    const-string v7, "Storage"

    .line 367
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 368
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 369
    .local v4, gzipInputStream:Ljava/util/zip/GZIPInputStream;
    const/4 v3, 0x0

    .line 370
    .local v3, fileInputStream:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 374
    .local v0, converted:Z
    :try_start_0
    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml.gz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v3

    .line 387
    :goto_0
    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 389
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v5, gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :try_start_2
    const-string v7, "UTF-8"

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 391
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 392
    .local v2, eventType:I
    if-eqz v2, :cond_3

    .line 393
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Not at the start of document"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_b

    .line 402
    .end local v2           #eventType:I
    :catch_0
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .line 405
    .end local v5           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :goto_1
    const/4 v7, 0x0

    :try_start_3
    iput-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    if-eqz v3, :cond_0

    .line 418
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 420
    :cond_0
    if-eqz v4, :cond_1

    .line 421
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e

    .line 426
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return-void

    .line 375
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 378
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    :try_start_5
    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sonyericsson/storage/Storage$ReadRootTask;->convertZipToGzip(Ljava/lang/String;)Z

    move-result v0

    .line 379
    if-nez v0, :cond_2

    .line 380
    throw v1

    .line 402
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    move-object v1, v7

    goto :goto_1

    .line 382
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 383
    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml.gz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_8

    move-result-object v3

    goto :goto_0

    .line 396
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #eventType:I
    .restart local v5       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :cond_3
    :try_start_6
    invoke-static {v6}, Lcom/sonyericsson/storage/Root;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/storage/Root;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    .line 398
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 399
    const/4 v7, 0x1

    if-eq v2, v7, :cond_5

    .line 400
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Not at the end of document"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b

    .line 406
    .end local v2           #eventType:I
    :catch_3
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .line 407
    .end local v5           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :goto_3
    :try_start_7
    const-string v7, "Storage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "I/O error when reading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 417
    if-eqz v3, :cond_4

    .line 418
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 420
    :cond_4
    if-eqz v4, :cond_1

    .line 421
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 423
    :catch_4
    move-exception v7

    goto/16 :goto_2

    .line 417
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #eventType:I
    .restart local v5       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :cond_5
    if-eqz v3, :cond_6

    .line 418
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 420
    :cond_6
    if-eqz v5, :cond_7

    .line 421
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    move-object v4, v5

    .line 424
    .end local v5           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_2

    .line 423
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v5       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_5
    move-exception v7

    move-object v4, v5

    .line 425
    .end local v5           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_2

    .line 409
    .end local v2           #eventType:I
    :catch_6
    move-exception v7

    move-object v1, v7

    .line 410
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_a
    const-string v7, "Storage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XML parsing error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 417
    if-eqz v3, :cond_8

    .line 418
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 420
    :cond_8
    if-eqz v4, :cond_1

    .line 421
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_2

    .line 423
    :catch_7
    move-exception v7

    goto/16 :goto_2

    .line 412
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v7

    move-object v1, v7

    .line 413
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :goto_5
    :try_start_c
    const-string v7, "Storage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read root: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 417
    if-eqz v3, :cond_9

    .line 418
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 420
    :cond_9
    if-eqz v4, :cond_1

    .line 421
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_2

    .line 423
    :catch_9
    move-exception v7

    goto/16 :goto_2

    .line 416
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v7

    .line 417
    :goto_6
    if-eqz v3, :cond_a

    .line 418
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 420
    :cond_a
    if-eqz v4, :cond_b

    .line 421
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 424
    :cond_b
    :goto_7
    throw v7

    .line 423
    :catch_a
    move-exception v8

    goto :goto_7

    .line 416
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v5       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_6

    .line 412
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v5       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_b
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_5

    .line 409
    .end local v4           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v5       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_c
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_4

    .line 406
    :catch_d
    move-exception v7

    move-object v1, v7

    goto/16 :goto_3

    .line 423
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_e
    move-exception v7

    goto/16 :goto_2
.end method

.method public postExecute()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    iget-object v1, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-interface {v0, v1}, Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V

    .line 433
    :cond_0
    return-void
.end method
