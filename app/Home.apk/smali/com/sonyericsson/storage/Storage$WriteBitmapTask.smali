.class Lcom/sonyericsson/storage/Storage$WriteBitmapTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteBitmapTask"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "bitmap"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write bitmap - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mName:Ljava/lang/String;

    .line 255
    iput-object p3, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sonyericsson/storage/Storage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8

    .prologue
    .line 260
    const/4 v3, 0x0

    .line 263
    .local v3, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mContext:Landroid/content/Context;

    const-string v6, "img"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 264
    .local v0, bitmapDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml.gz.tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    .local v2, outputFile:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .local v4, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 271
    if-eqz v4, :cond_2

    .line 273
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 278
    .end local v0           #bitmapDir:Ljava/io/File;
    .end local v2           #outputFile:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 274
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #bitmapDir:Ljava/io/File;
    .restart local v2       #outputFile:Ljava/io/File;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 275
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 268
    .end local v0           #bitmapDir:Ljava/io/File;
    .end local v2           #outputFile:Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 269
    .local v1, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "Storage"

    const-string v6, "Write bitmap failed!"

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    if-eqz v3, :cond_0

    .line 273
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 274
    :catch_2
    move-exception v5

    goto :goto_0

    .line 271
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_1

    .line 273
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 275
    :cond_1
    :goto_3
    throw v5

    .line 274
    :catch_3
    move-exception v6

    goto :goto_3

    .line 271
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #bitmapDir:Ljava/io/File;
    .restart local v2       #outputFile:Ljava/io/File;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 268
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    :cond_2
    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public postExecute()V
    .locals 6

    .prologue
    .line 282
    iget-object v3, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mContext:Landroid/content/Context;

    const-string v4, "img"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 284
    .local v0, bitmapDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/storage/Storage$WriteBitmapTask;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml.gz.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v2, tmpFile:Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    const-string v3, "Storage"

    const-string v4, "Failed to rename file during write bitmap!"

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method
