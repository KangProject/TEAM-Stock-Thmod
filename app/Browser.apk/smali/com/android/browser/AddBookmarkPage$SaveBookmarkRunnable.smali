.class Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBookmarkRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "msg"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    .line 123
    iput-object p3, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    .line 124
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 128
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "title"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, title:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, url:Ljava/lang/String;
    const-string v0, "invalidateThumbnail"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 132
    .local v8, invalidateThumbnail:Z
    if-eqz v8, :cond_1

    move-object v4, v5

    .line 134
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    :goto_0
    const-string v0, "touchIconUrl"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, touchIconUrl:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/AddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 139
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 140
    if-eqz v9, :cond_0

    .line 141
    new-instance v0, Lcom/android/browser/DownloadTouchIcon;

    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v1, v2}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-static {v11}, Lcom/android/browser/AddBookmarkPage;->access$000(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    invoke-virtual {v0, v5}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    const/4 v5, 0x1

    iput v5, v0, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1           #cr:Landroid/content/ContentResolver;
    :goto_1
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void

    .line 132
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    .end local v9           #touchIconUrl:Ljava/lang/String;
    :cond_1
    const-string v0, "thumbnail"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_0

    .line 144
    .restart local v4       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v9       #touchIconUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 145
    .local v7, e:Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    iput v12, v0, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
