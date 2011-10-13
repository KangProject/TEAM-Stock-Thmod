.class public Lcom/android/server/ClipboardService;
.super Landroid/text/IClipboard$Stub;
.source "ClipboardService.java"


# instance fields
.field private mClipboard:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/IClipboard$Stub;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ClipboardService;->mClipboard:Ljava/lang/CharSequence;

    .line 31
    return-void
.end method


# virtual methods
.method public getClipboardText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 46
    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboard:Ljava/lang/CharSequence;

    monitor-exit p0

    return-object v0

    .line 48
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public hasClipboardText()Z
    .registers 2

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboard:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 55
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setClipboardText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    if-nez p1, :cond_5

    .line 37
    :try_start_3
    const-string p1, ""

    .line 40
    :cond_5
    iput-object p1, p0, Lcom/android/server/ClipboardService;->mClipboard:Ljava/lang/CharSequence;

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 41
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method
