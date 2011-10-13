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
    .line 309
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

    .line 310
    iput-object p1, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    .line 311
    iput-object p2, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    .line 312
    iput-object p3, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;Lcom/sonyericsson/storage/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/storage/Storage$ReadRootTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    const-string v5, "Storage"

    const-string v5, ".xml.gz"

    .line 317
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 318
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 321
    .local v2, gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    iget-object v5, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml.gz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 323
    .end local v2           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v3, gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 325
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 326
    .local v1, eventType:I
    if-eqz v1, :cond_1

    .line 327
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not at the start of document"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 336
    .end local v1           #eventType:I
    :catch_0
    move-exception v5

    move-object v0, v5

    move-object v2, v3

    .line 337
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :goto_0
    :try_start_2
    const-string v5, "Storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml.gz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    if-eqz v2, :cond_0

    .line 347
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 352
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 330
    .end local v2           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #eventType:I
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :cond_1
    :try_start_4
    invoke-static {v4}, Lcom/sonyericsson/storage/Root;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/storage/Root;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    .line 332
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 333
    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    .line 334
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "Not at the end of document"

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_a

    .line 338
    .end local v1           #eventType:I
    :catch_1
    move-exception v5

    move-object v0, v5

    move-object v2, v3

    .line 339
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :goto_2
    :try_start_5
    const-string v5, "Storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O error when reading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml.gz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 346
    if-eqz v2, :cond_0

    .line 347
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 349
    :catch_2
    move-exception v5

    goto :goto_1

    .line 346
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v1       #eventType:I
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :cond_2
    if-eqz v3, :cond_3

    .line 347
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    move-object v2, v3

    .line 350
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_1

    .line 349
    .end local v2           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_3
    move-exception v5

    move-object v2, v3

    .line 351
    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_1

    .line 340
    .end local v1           #eventType:I
    :catch_4
    move-exception v5

    move-object v0, v5

    .line 341
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_8
    const-string v5, "Storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XML parsing error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml.gz"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 346
    if-eqz v2, :cond_0

    .line 347
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 349
    :catch_5
    move-exception v5

    goto :goto_1

    .line 342
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v5

    move-object v0, v5

    .line 343
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_a
    const-string v5, "Storage"

    const-string v6, "Failed to read root!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 346
    if-eqz v2, :cond_0

    .line 347
    :try_start_b
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_1

    .line 349
    :catch_7
    move-exception v5

    goto/16 :goto_1

    .line 345
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    .line 346
    :goto_5
    if-eqz v2, :cond_4

    .line 347
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 350
    :cond_4
    :goto_6
    throw v5

    .line 349
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v5

    goto/16 :goto_1

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v6

    goto :goto_6

    .line 345
    .end local v2           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_5

    .line 342
    .end local v2           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_a
    move-exception v5

    move-object v0, v5

    move-object v2, v3

    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_4

    .line 340
    .end local v2           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    :catch_b
    move-exception v5

    move-object v0, v5

    move-object v2, v3

    .end local v3           #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    .restart local v2       #gzipInputStream:Ljava/util/zip/GZIPInputStream;
    goto :goto_3

    .line 338
    :catch_c
    move-exception v5

    move-object v0, v5

    goto/16 :goto_2

    .line 336
    :catch_d
    move-exception v5

    move-object v0, v5

    goto/16 :goto_0
.end method

.method public postExecute()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mCallback:Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;

    iget-object v1, p0, Lcom/sonyericsson/storage/Storage$ReadRootTask;->mRoot:Lcom/sonyericsson/storage/Root;

    invoke-interface {v0, v1}, Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;->onReadCompleted(Lcom/sonyericsson/storage/Root;)V

    .line 359
    :cond_0
    return-void
.end method
