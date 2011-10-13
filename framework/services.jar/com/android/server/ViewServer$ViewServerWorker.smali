.class Lcom/android/server/ViewServer$ViewServerWorker;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/WindowManagerService$WindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lcom/android/server/ViewServer;


# direct methods
.method public constructor <init>(Lcom/android/server/ViewServer;Ljava/net/Socket;)V
    .registers 4
    .parameter
    .parameter "client"

    .prologue
    const/4 v0, 0x0

    .line 222
    iput-object p1, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    .line 224
    iput-boolean v0, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 226
    return-void
.end method

.method private windowManagerAutolistLoop()Z
    .registers 8

    .prologue
    .line 303
    iget-object v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-static {v5}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/WindowManagerService;->addWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V

    .line 304
    const/4 v3, 0x0

    .line 306
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_a
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_99
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_9b

    .line 307
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_83

    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, needWindowListUpdate:Z
    const/4 v1, 0x0

    .line 310
    .local v1, needFocusedWindowUpdate:Z
    monitor-enter p0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_32

    .line 311
    :goto_23
    :try_start_23
    iget-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-nez v5, :cond_4c

    iget-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-nez v5, :cond_4c

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_23

    .line 322
    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    .line 332
    .end local v1           #needFocusedWindowUpdate:Z
    .end local v2           #needWindowListUpdate:Z
    :catch_32
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .line 333
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_35
    :try_start_35
    const-string v5, "ViewServer"

    const-string v6, "Connection error: "

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_99

    .line 335
    if-eqz v3, :cond_41

    .line 337
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_95

    .line 341
    :cond_41
    :goto_41
    iget-object v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-static {v5}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V

    .line 343
    .end local v0           #e:Ljava/lang/Exception;
    :goto_4a
    const/4 v5, 0x1

    return v5

    .line 314
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v1       #needFocusedWindowUpdate:Z
    .restart local v2       #needWindowListUpdate:Z
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_4c
    :try_start_4c
    iget-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    if-eqz v5, :cond_54

    .line 315
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 316
    const/4 v2, 0x1

    .line 318
    :cond_54
    iget-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    if-eqz v5, :cond_5c

    .line 319
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 320
    const/4 v1, 0x1

    .line 322
    :cond_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_2f

    .line 323
    if-eqz v2, :cond_67

    .line 324
    :try_start_5f
    const-string v5, "LIST UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 327
    :cond_67
    if-eqz v1, :cond_1a

    .line 328
    const-string v5, "FOCUS UPDATE\n"

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_71
    .catchall {:try_start_5f .. :try_end_71} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_71} :catch_32

    goto :goto_1a

    .line 335
    .end local v1           #needFocusedWindowUpdate:Z
    .end local v2           #needWindowListUpdate:Z
    :catchall_72
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :goto_74
    if-eqz v3, :cond_79

    .line 337
    :try_start_76
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_97

    .line 341
    :cond_79
    :goto_79
    iget-object v6, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-static {v6}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V

    throw v5

    .line 335
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_83
    if-eqz v4, :cond_88

    .line 337
    :try_start_85
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_93

    .line 341
    :cond_88
    :goto_88
    iget-object v5, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-static {v5}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/server/WindowManagerService;->removeWindowChangeListener(Lcom/android/server/WindowManagerService$WindowChangeListener;)V

    move-object v3, v4

    .line 342
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4a

    .line 338
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_93
    move-exception v5

    goto :goto_88

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_95
    move-exception v5

    goto :goto_41

    .end local v0           #e:Ljava/lang/Exception;
    :catch_97
    move-exception v6

    goto :goto_79

    .line 335
    :catchall_99
    move-exception v5

    goto :goto_74

    .line 332
    :catch_9b
    move-exception v5

    move-object v0, v5

    goto :goto_35
.end method


# virtual methods
.method public focusChanged()V
    .registers 2

    .prologue
    .line 296
    monitor-enter p0

    .line 297
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedFocusedWindowUpdate:Z

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit p0

    .line 300
    return-void

    .line 299
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 12

    .prologue
    const-string v8, "ViewServer"

    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_f2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_cd

    .line 234
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, request:Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 240
    .local v4, index:I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_5f

    .line 241
    move-object v0, v6

    .line 242
    .local v0, command:Ljava/lang/String;
    const-string v5, ""

    .line 249
    .local v5, parameters:Ljava/lang/String;
    :goto_25
    const-string v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 250
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "3"

    invoke-static {v8, v9}, Lcom/android/server/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .line 264
    .local v7, result:Z
    :goto_35
    if-nez v7, :cond_4f

    .line 265
    const-string v8, "ViewServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "An error occured with the command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_10d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_4f} :catch_110

    .line 270
    :cond_4f
    if-eqz v3, :cond_54

    .line 272
    :try_start_51
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_c1

    .line 278
    :cond_54
    :goto_54
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_114

    .line 280
    :try_start_58
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5d} :catch_c6

    move-object v2, v3

    .line 286
    .end local v0           #command:Ljava/lang/String;
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #index:I
    .end local v5           #parameters:Ljava/lang/String;
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #result:Z
    .restart local v2       #in:Ljava/io/BufferedReader;
    :cond_5e
    :goto_5e
    return-void

    .line 244
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #index:I
    .restart local v6       #request:Ljava/lang/String;
    :cond_5f
    const/4 v8, 0x0

    :try_start_60
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local v0       #command:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #parameters:Ljava/lang/String;
    goto :goto_25

    .line 251
    :cond_6b
    const-string v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 252
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    const-string v9, "4"

    invoke-static {v8, v9}, Lcom/android/server/ViewServer;->access$000(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_35

    .line 253
    .end local v7           #result:Z
    :cond_7c
    const-string v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 254
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-static {v8}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_35

    .line 255
    .end local v7           #result:Z
    :cond_91
    const-string v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 256
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-static {v8}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9}, Lcom/android/server/WindowManagerService;->viewServerGetFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_35

    .line 257
    .end local v7           #result:Z
    :cond_a6
    const-string v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 258
    invoke-direct {p0}, Lcom/android/server/ViewServer$ViewServerWorker;->windowManagerAutolistLoop()Z

    move-result v7

    .restart local v7       #result:Z
    goto :goto_35

    .line 260
    .end local v7           #result:Z
    :cond_b3
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->this$0:Lcom/android/server/ViewServer;

    invoke-static {v8}, Lcom/android/server/ViewServer;->access$100(Lcom/android/server/ViewServer;)Lcom/android/server/WindowManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8, v9, v0, v5}, Lcom/android/server/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_be
    .catchall {:try_start_60 .. :try_end_be} :catchall_10d
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_be} :catch_110

    move-result v7

    .restart local v7       #result:Z
    goto/16 :goto_35

    .line 274
    :catch_c1
    move-exception v1

    .line 275
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    .line 281
    .end local v1           #e:Ljava/io/IOException;
    :catch_c6
    move-exception v8

    move-object v1, v8

    .line 282
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 283
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_5e

    .line 267
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #index:I
    .end local v5           #parameters:Ljava/lang/String;
    .end local v6           #request:Ljava/lang/String;
    .end local v7           #result:Z
    :catch_cd
    move-exception v8

    move-object v1, v8

    .line 268
    .restart local v1       #e:Ljava/io/IOException;
    :goto_cf
    :try_start_cf
    const-string v8, "ViewServer"

    const-string v9, "Connection error: "

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_f2

    .line 270
    if-eqz v2, :cond_db

    .line 272
    :try_start_d8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_ed

    .line 278
    :cond_db
    :goto_db
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_5e

    .line 280
    :try_start_df
    iget-object v8, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e4} :catch_e6

    goto/16 :goto_5e

    .line 281
    :catch_e6
    move-exception v8

    move-object v1, v8

    .line 282
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5e

    .line 274
    :catch_ed
    move-exception v1

    .line 275
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_db

    .line 270
    .end local v1           #e:Ljava/io/IOException;
    :catchall_f2
    move-exception v8

    :goto_f3
    if-eqz v2, :cond_f8

    .line 272
    :try_start_f5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_102

    .line 278
    :cond_f8
    :goto_f8
    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_101

    .line 280
    :try_start_fc
    iget-object v9, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_101} :catch_107

    .line 283
    :cond_101
    :goto_101
    throw v8

    .line 274
    :catch_102
    move-exception v1

    .line 275
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f8

    .line 281
    .end local v1           #e:Ljava/io/IOException;
    :catch_107
    move-exception v9

    move-object v1, v9

    .line 282
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_101

    .line 270
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catchall_10d
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_f3

    .line 267
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_110
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_cf

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v0       #command:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #index:I
    .restart local v5       #parameters:Ljava/lang/String;
    .restart local v6       #request:Ljava/lang/String;
    .restart local v7       #result:Z
    :cond_114
    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto/16 :goto_5e
.end method

.method public windowsChanged()V
    .registers 2

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/ViewServer$ViewServerWorker;->mNeedWindowListUpdate:Z

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit p0

    .line 293
    return-void

    .line 292
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
