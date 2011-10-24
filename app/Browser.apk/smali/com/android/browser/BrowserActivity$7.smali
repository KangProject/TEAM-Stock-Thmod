.class Lcom/android/browser/BrowserActivity$7;
.super Landroid/os/Handler;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2284
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const-string v6, "url"

    const-string v5, "title"

    .line 2287
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2398
    :cond_0
    :goto_0
    return-void

    .line 2290
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 2291
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2292
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2295
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    .line 2296
    const-string v3, "webview"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 2298
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 2301
    iget v2, p1, Landroid/os/Message;->arg1:I

    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 2304
    :sswitch_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/browser/BrowserActivity;->access$900(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 2307
    :sswitch_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$300(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2308
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2, v8}, Lcom/android/browser/BrowserActivity;->access$1000(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    .line 2309
    if-eq v2, v1, :cond_0

    .line 2310
    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2314
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    const-class v4, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2316
    const-string v3, "url"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2317
    const-string v3, "title"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2318
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2322
    :sswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "url = "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2324
    invoke-static {v4, v8}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2327
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1100(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2332
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2337
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2339
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 2341
    if-eqz v3, :cond_4

    .line 2342
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2345
    :goto_1
    const/4 v4, 0x7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 2347
    if-eqz v4, :cond_3

    .line 2348
    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2351
    :goto_2
    iget-object v5, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v5, v2, v8, v3, v4}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2359
    :goto_3
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2354
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    const v4, 0x7f080061

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v8, v3}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2359
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_4
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 2363
    :sswitch_5
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1, v8}, Lcom/android/browser/BrowserActivity;->access$800(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2367
    :sswitch_6
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    const-wide/16 v6, -0x1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v9

    move-object v5, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/browser/BrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 2374
    :sswitch_7
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/android/browser/BrowserActivity;->access$900(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2378
    :sswitch_8
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto/16 :goto_0

    .line 2382
    :sswitch_9
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2383
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1200(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2387
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$300(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->stopAllLoading()V

    goto/16 :goto_0

    .line 2392
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView;

    .line 2393
    if-eqz v1, :cond_0

    .line 2394
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$7;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2, v1}, Lcom/android/browser/BrowserActivity;->access$1300(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 2359
    :catchall_1
    move-exception v1

    move-object v2, v9

    goto :goto_4

    :cond_3
    move-object v4, v9

    goto/16 :goto_2

    :cond_4
    move-object v3, v9

    goto/16 :goto_1

    .line 2287
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_8
    .end sparse-switch

    .line 2301
    :sswitch_data_1
    .sparse-switch
        0x7f0c005f -> :sswitch_1
        0x7f0c0063 -> :sswitch_4
        0x7f0c0093 -> :sswitch_2
        0x7f0c0094 -> :sswitch_3
        0x7f0c0095 -> :sswitch_6
        0x7f0c0096 -> :sswitch_5
        0x7f0c0098 -> :sswitch_6
        0x7f0c0099 -> :sswitch_1
    .end sparse-switch
.end method
