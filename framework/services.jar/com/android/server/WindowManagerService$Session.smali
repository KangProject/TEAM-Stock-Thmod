.class final Lcom/android/server/WindowManagerService$Session;
.super Landroid/view/IWindowSession$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Session"
.end annotation


# instance fields
.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field mClientDead:Z

.field final mInputContext:Lcom/android/internal/view/IInputContext;

.field mNumWindow:I

.field final mPid:I

.field final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V
    .registers 12
    .parameter
    .parameter "client"
    .parameter "inputContext"

    .prologue
    const/4 v5, 0x0

    .line 5587
    iput-object p1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 5584
    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 5585
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    .line 5588
    iput-object p2, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 5589
    iput-object p3, p0, Lcom/android/server/WindowManagerService$Session;->mInputContext:Lcom/android/internal/view/IInputContext;

    .line 5590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    .line 5591
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mPid:I

    .line 5592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5593
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "Session{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5594
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5595
    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5596
    iget v5, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5597
    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5598
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WindowManagerService$Session;->mStringName:Ljava/lang/String;

    .line 5600
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5601
    :try_start_47
    iget-object v6, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-nez v6, :cond_5b

    iget-boolean v6, p1, Lcom/android/server/WindowManagerService;->mHaveInputMethods:Z

    if-eqz v6, :cond_5b

    .line 5602
    const-string v6, "input_method"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5604
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v6

    iput-object v6, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 5606
    .end local v0           #b:Landroid/os/IBinder;
    :cond_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_79

    .line 5607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5611
    .local v2, ident:J
    :try_start_60
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_7c

    .line 5612
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget v6, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    iget v7, p0, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-interface {v5, p2, p3, v6, v7}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 5617
    :goto_6d
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_75} :catch_81

    .line 5627
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5629
    :goto_78
    return-void

    .line 5606
    .end local v2           #ident:J
    :catchall_79
    move-exception v6

    :try_start_7a
    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v6

    .line 5615
    .restart local v2       #ident:J
    :cond_7c
    const/4 v5, 0x0

    :try_start_7d
    invoke-interface {p2, v5}, Lcom/android/internal/view/IInputMethodClient;->setUsingInputMethod(Z)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_6d

    .line 5618
    :catch_81
    move-exception v5

    move-object v1, v5

    .line 5621
    .local v1, e:Landroid/os/RemoteException;
    :try_start_83
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_8c

    .line 5622
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v5, p2}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_90
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8c} :catch_95

    .line 5627
    :cond_8c
    :goto_8c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_78

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_90
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 5624
    .restart local v1       #e:Landroid/os/RemoteException;
    :catch_95
    move-exception v5

    goto :goto_8c
.end method


# virtual methods
.method public add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 13
    .parameter "window"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"
    .parameter "outInputChannel"

    .prologue
    .line 5663
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/WindowManagerService;->addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    .registers 12
    .parameter "window"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"

    .prologue
    .line 5669
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/WindowManagerService;->addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .registers 4

    .prologue
    .line 5649
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_f

    .line 5650
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_29

    .line 5654
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5655
    :try_start_14
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5656
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    .line 5657
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$Session;->killSessionLocked()V

    .line 5658
    monitor-exit v0

    .line 5659
    return-void

    .line 5658
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v1

    .line 5652
    :catch_29
    move-exception v0

    goto :goto_f
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 5808
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5809
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5810
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5811
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 5705
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->finishDrawingWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V

    .line 5706
    return-void
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "window"
    .parameter "outDisplayFrame"

    .prologue
    .line 5699
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 5700
    return-void
.end method

.method public getInTouchMode()Z
    .registers 3

    .prologue
    .line 5715
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5716
    :try_start_5
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    monitor-exit v0

    return v1

    .line 5717
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method killSessionLocked()V
    .registers 5

    .prologue
    .line 5787
    iget v1, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    if-gtz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    if-eqz v1, :cond_1b

    .line 5788
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5789
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v1, :cond_1b

    .line 5796
    :try_start_13
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1c

    .line 5802
    :goto_18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 5805
    :cond_1b
    return-void

    .line 5797
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 5798
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when killing surface session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5635
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 5636
    :catch_5
    move-exception v0

    .line 5638
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 5639
    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5641
    :cond_11
    throw v0
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .registers 10
    .parameter "window"
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 5722
    iget-object v2, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 5723
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_22

    move-result-wide v0

    .line 5725
    .local v0, ident:J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1d

    move-result v3

    .line 5729
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    return v3

    :catchall_1d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5731
    .end local v0           #ident:J
    :catchall_22
    move-exception v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw v3
.end method

.method public relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .registers 26
    .parameter "window"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewFlags"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 5681
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/WindowManagerService;->relayoutWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v13

    .line 5685
    .local v13, res:I
    return v13
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 5673
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V

    .line 5674
    return-void
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 19
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 5753
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 5754
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_29

    move-result-wide v8

    .line 5756
    .local v8, ident:J
    :try_start_9
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/WindowManagerService;->sendWindowWallpaperCommandLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_24

    move-result-object v0

    .line 5760
    :try_start_1f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10

    return-object v0

    :catchall_24
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 5762
    .end local v8           #ident:J
    :catchall_29
    move-exception v0

    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 5709
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5710
    :try_start_5
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 5711
    monitor-exit v0

    .line 5712
    return-void

    .line 5711
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .parameter "window"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"

    .prologue
    .line 5694
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setInsetsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5696
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4
    .parameter "window"
    .parameter "region"

    .prologue
    .line 5689
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService;->access$400(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 5690
    return-void
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 15
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 5735
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 5736
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_23

    move-result-wide v6

    .line 5738
    .local v6, ident:J
    :try_start_9
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setWindowWallpaperPositionLocked(Lcom/android/server/WindowManagerService$WindowState;FFFF)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 5742
    :try_start_19
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5744
    monitor-exit v8

    .line 5745
    return-void

    .line 5742
    :catchall_1e
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 5744
    .end local v6           #ident:J
    :catchall_23
    move-exception v0

    monitor-exit v8
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5815
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4
    .parameter "window"
    .parameter "result"

    .prologue
    .line 5766
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WindowManagerService;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 5767
    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 5748
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 5749
    return-void
.end method

.method windowAddedLocked()V
    .registers 2

    .prologue
    .line 5770
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_12

    .line 5773
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 5776
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5778
    :cond_12
    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 5779
    return-void
.end method

.method windowRemovedLocked()V
    .registers 3

    .prologue
    .line 5782
    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 5783
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$Session;->killSessionLocked()V

    .line 5784
    return-void
.end method
