.class public final Landroid/content/res/AssetManager$AssetInputStream;
.super Ljava/io/InputStream;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AssetInputStream"
.end annotation


# instance fields
.field private mAsset:I

.field private mLength:J

.field private mMarkPos:J

.field final synthetic this$0:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;I)V
    .locals 2
    .parameter
    .parameter "asset"

    .prologue
    .line 542
    iput-object p1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 543
    iput p2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    .line 544
    invoke-static {p1, p2}, Landroid/content/res/AssetManager;->access$100(Landroid/content/res/AssetManager;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    .line 545
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/AssetManager;ILandroid/content/res/AssetManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 537
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;I)V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v2, v3}, Landroid/content/res/AssetManager;->access$300(Landroid/content/res/AssetManager;I)J

    move-result-wide v0

    .line 554
    .local v0, len:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    monitor-enter v0

    .line 558
    :try_start_0
    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->access$400(Landroid/content/res/AssetManager;I)V

    .line 560
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    .line 561
    iget-object v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/content/res/AssetManager;->access$500(Landroid/content/res/AssetManager;I)V

    .line 563
    :cond_0
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 591
    return-void
.end method

.method public final getAssetInt()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    return v0
.end method

.method public final mark(I)V
    .locals 5
    .parameter "readlimit"

    .prologue
    .line 566
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    .line 567
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->access$200(Landroid/content/res/AssetManager;I)I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;I[BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->access$700(Landroid/content/res/AssetManager;I[BII)I

    move-result v0

    return v0
.end method

.method public final reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v1, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mMarkPos:J

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    .line 570
    return-void
.end method

.method public final skip(J)J
    .locals 9
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 578
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v2, v3, v7, v8, v6}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    move-result-wide v0

    .line 579
    .local v0, pos:J
    add-long v2, v0, p1

    iget-wide v4, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 580
    iget-wide v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->mLength:J

    sub-long p1, v2, v0

    .line 582
    :cond_0
    cmp-long v2, p1, v7

    if-lez v2, :cond_1

    .line 583
    iget-object v2, p0, Landroid/content/res/AssetManager$AssetInputStream;->this$0:Landroid/content/res/AssetManager;

    iget v3, p0, Landroid/content/res/AssetManager$AssetInputStream;->mAsset:I

    invoke-static {v2, v3, p1, p2, v6}, Landroid/content/res/AssetManager;->access$600(Landroid/content/res/AssetManager;IJI)J

    .line 585
    :cond_1
    return-wide p1
.end method
