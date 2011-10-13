.class final Lcom/android/server/WindowManagerService$InputMonitor;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InputMonitor"
.end annotation


# instance fields
.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/WindowManagerService$WindowState;

.field private mTempInputApplication:Lcom/android/server/InputApplication;

.field private mTempInputWindows:Lcom/android/server/InputWindowList;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .registers 3
    .parameter

    .prologue
    .line 5072
    iput-object p1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchEnabled:Z

    .line 5083
    new-instance v0, Lcom/android/server/InputWindowList;

    invoke-direct {v0}, Lcom/android/server/InputWindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputWindows:Lcom/android/server/InputWindowList;

    .line 5086
    new-instance v0, Lcom/android/server/InputApplication;

    invoke-direct {v0}, Lcom/android/server/InputApplication;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    return-void
.end method

.method private getWindowStateForInputChannel(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;
    .registers 4
    .parameter "inputChannel"

    .prologue
    .line 5145
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5146
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->getWindowStateForInputChannelLocked(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5147
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private getWindowStateForInputChannelLocked(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;
    .registers 6
    .parameter "inputChannel"

    .prologue
    .line 5151
    iget-object v3, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5152
    .local v1, windowCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_1e

    .line 5153
    iget-object v3, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 5154
    .local v2, windowState:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-ne v3, p1, :cond_1b

    move-object v3, v2

    .line 5159
    .end local v2           #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1a
    return-object v3

    .line 5152
    .restart local v2       #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 5159
    .end local v2           #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .prologue
    .line 5365
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputManager;->setInputDispatchMode(ZZ)V

    .line 5366
    return-void
.end method


# virtual methods
.method public freezeInputDispatchingLw()V
    .registers 2

    .prologue
    .line 5332
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_a

    .line 5337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    .line 5338
    invoke-direct {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputDispatchModeLw()V

    .line 5340
    :cond_a
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/InputChannel;IIIIIII)Z
    .registers 18
    .parameter "focus"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "metaState"
    .parameter "repeatCount"
    .parameter "policyFlags"

    .prologue
    .line 5269
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->getWindowStateForInputChannel(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 5270
    .local v1, windowState:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;IIIIIII)Z

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQueueing(JIIIIIZ)I
    .registers 18
    .parameter "whenNanos"
    .parameter "action"
    .parameter "flags"
    .parameter "keyCode"
    .parameter "scanCode"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 5260
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(JIIIIIZ)I

    move-result v0

    return v0
.end method

.method public notifyANR(Ljava/lang/Object;Landroid/view/InputChannel;)J
    .registers 12
    .parameter "token"
    .parameter "inputChannel"

    .prologue
    const-string v8, "WindowManager"

    .line 5110
    const/4 v2, 0x0

    .line 5111
    .local v2, appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz p2, :cond_31

    .line 5112
    iget-object v4, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5113
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService$InputMonitor;->getWindowStateForInputChannelLocked(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v3

    .line 5114
    .local v3, windowState:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v3, :cond_30

    .line 5115
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out sending to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    iget-object v2, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 5119
    :cond_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_64

    .line 5122
    .end local v3           #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :cond_31
    if-nez v2, :cond_53

    if-eqz p1, :cond_53

    .line 5123
    move-object v0, p1

    check-cast v0, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v2, v0

    .line 5124
    const-string v4, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event dispatching timed out sending to application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    :cond_53
    if-eqz v2, :cond_68

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v4, :cond_68

    .line 5132
    :try_start_59
    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z

    move-result v1

    .line 5133
    .local v1, abort:Z
    if-nez v1, :cond_68

    .line 5136
    iget-wide v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->inputDispatchingTimeoutNanos:J
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_63} :catch_67

    .line 5141
    .end local v1           #abort:Z
    :goto_63
    return-wide v4

    .line 5119
    :catchall_64
    move-exception v5

    :try_start_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v5

    .line 5138
    :catch_67
    move-exception v4

    .line 5141
    :cond_68
    const-wide/16 v4, 0x0

    goto :goto_63
.end method

.method public notifyInputChannelBroken(Landroid/view/InputChannel;)V
    .registers 7
    .parameter "inputChannel"

    .prologue
    .line 5093
    iget-object v1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5094
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService$InputMonitor;->getWindowStateForInputChannelLocked(Landroid/view/InputChannel;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 5095
    .local v0, windowState:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_d

    .line 5096
    monitor-exit v1

    .line 5102
    :goto_c
    return-void

    .line 5099
    :cond_d
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    iget-object v2, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/WindowManagerService;->removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 5101
    monitor-exit v1

    goto :goto_c

    .end local v0           #windowState:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 5253
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 5254
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/WindowManagerService$WindowToken;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 5310
    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-nez v0, :cond_a

    .line 5315
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5316
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 5318
    :cond_a
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/WindowManagerService$WindowToken;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 5321
    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v0, :cond_a

    .line 5326
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5327
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 5329
    :cond_a
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 5354
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_9

    .line 5359
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchEnabled:Z

    .line 5360
    invoke-direct {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputDispatchModeLw()V

    .line 5362
    :cond_9
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/WindowManagerService$AppWindowToken;)V
    .registers 5
    .parameter "newApp"

    .prologue
    .line 5297
    if-nez p1, :cond_b

    .line 5298
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/InputManager;->setFocusedApplication(Lcom/android/server/InputApplication;)V

    .line 5307
    :goto_a
    return-void

    .line 5300
    :cond_b
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/InputApplication;->name:Ljava/lang/String;

    .line 5301
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    iget-wide v1, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v1, v0, Lcom/android/server/InputApplication;->dispatchingTimeoutNanos:J

    .line 5303
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    iput-object p1, v0, Lcom/android/server/InputApplication;->token:Ljava/lang/Object;

    .line 5305
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputApplication:Lcom/android/server/InputApplication;

    invoke-virtual {v0, v1}, Lcom/android/server/InputManager;->setFocusedApplication(Lcom/android/server/InputApplication;)V

    goto :goto_a
.end method

.method public setInputFocusLw(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 4
    .parameter "newWindow"

    .prologue
    .line 5282
    iget-object v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_16

    .line 5283
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5287
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5290
    :cond_11
    iput-object p1, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 5291
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputWindowsLw()V

    .line 5293
    :cond_16
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 2

    .prologue
    .line 5343
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_a

    .line 5348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputDispatchFrozen:Z

    .line 5349
    invoke-direct {p0}, Lcom/android/server/WindowManagerService$InputMonitor;->updateInputDispatchModeLw()V

    .line 5351
    :cond_a
    return-void
.end method

.method public updateInputWindowsLw()V
    .registers 16

    .prologue
    .line 5169
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v12, v13, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 5170
    .local v12, windows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5171
    .local v0, N:I
    const/4 v13, 0x1

    sub-int v6, v0, v13

    .local v6, i:I
    :goto_b
    if-ltz v6, :cond_101

    .line 5172
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 5173
    .local v1, child:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v13, :cond_1b

    iget-boolean v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-eqz v13, :cond_1e

    .line 5171
    :cond_1b
    :goto_1b
    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    .line 5178
    :cond_1e
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5179
    .local v2, flags:I
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5181
    .local v10, type:I
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mInputFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v1, v13, :cond_b7

    const/4 v13, 0x1

    move v4, v13

    .line 5182
    .local v4, hasFocus:Z
    :goto_2c
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v9

    .line 5183
    .local v9, isVisible:Z
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v1, v13, :cond_bb

    const/16 v13, 0x7d4

    if-eq v10, v13, :cond_bb

    const/4 v13, 0x1

    move v5, v13

    .line 5187
    .local v5, hasWallpaper:Z
    :goto_3c
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputWindows:Lcom/android/server/InputWindowList;

    invoke-virtual {v13}, Lcom/android/server/InputWindowList;->add()Lcom/android/server/InputWindow;

    move-result-object v7

    .line 5188
    .local v7, inputWindow:Lcom/android/server/InputWindow;
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mInputChannel:Landroid/view/InputChannel;

    iput-object v13, v7, Lcom/android/server/InputWindow;->inputChannel:Landroid/view/InputChannel;

    .line 5189
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$WindowState;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/android/server/InputWindow;->name:Ljava/lang/String;

    .line 5190
    iput v2, v7, Lcom/android/server/InputWindow;->layoutParamsFlags:I

    .line 5191
    iput v10, v7, Lcom/android/server/InputWindow;->layoutParamsType:I

    .line 5192
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v13

    iput-wide v13, v7, Lcom/android/server/InputWindow;->dispatchingTimeoutNanos:J

    .line 5193
    iput-boolean v9, v7, Lcom/android/server/InputWindow;->visible:Z

    .line 5194
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v13

    iput-boolean v13, v7, Lcom/android/server/InputWindow;->canReceiveKeys:Z

    .line 5195
    iput-boolean v4, v7, Lcom/android/server/InputWindow;->hasFocus:Z

    .line 5196
    iput-boolean v5, v7, Lcom/android/server/InputWindow;->hasWallpaper:Z

    .line 5197
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v13, :cond_bf

    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v13, v13, Lcom/android/server/WindowManagerService$AppWindowToken;->paused:Z

    :goto_6a
    iput-boolean v13, v7, Lcom/android/server/InputWindow;->paused:Z

    .line 5198
    iget v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v13, v7, Lcom/android/server/InputWindow;->layer:I

    .line 5199
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mPid:I

    iput v13, v7, Lcom/android/server/InputWindow;->ownerPid:I

    .line 5200
    iget-object v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mUid:I

    iput v13, v7, Lcom/android/server/InputWindow;->ownerUid:I

    .line 5202
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    .line 5203
    .local v3, frame:Landroid/graphics/Rect;
    iget v13, v3, Landroid/graphics/Rect;->left:I

    iput v13, v7, Lcom/android/server/InputWindow;->frameLeft:I

    .line 5204
    iget v13, v3, Landroid/graphics/Rect;->top:I

    iput v13, v7, Lcom/android/server/InputWindow;->frameTop:I

    .line 5205
    iget v13, v3, Landroid/graphics/Rect;->right:I

    iput v13, v7, Lcom/android/server/InputWindow;->frameRight:I

    .line 5206
    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Lcom/android/server/InputWindow;->frameBottom:I

    .line 5208
    iget-object v11, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 5209
    .local v11, visibleFrame:Landroid/graphics/Rect;
    iget v13, v11, Landroid/graphics/Rect;->left:I

    iput v13, v7, Lcom/android/server/InputWindow;->visibleFrameLeft:I

    .line 5210
    iget v13, v11, Landroid/graphics/Rect;->top:I

    iput v13, v7, Lcom/android/server/InputWindow;->visibleFrameTop:I

    .line 5211
    iget v13, v11, Landroid/graphics/Rect;->right:I

    iput v13, v7, Lcom/android/server/InputWindow;->visibleFrameRight:I

    .line 5212
    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Lcom/android/server/InputWindow;->visibleFrameBottom:I

    .line 5214
    iget v13, v1, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    packed-switch v13, :pswitch_data_114

    .line 5217
    iget v13, v3, Landroid/graphics/Rect;->left:I

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaLeft:I

    .line 5218
    iget v13, v3, Landroid/graphics/Rect;->top:I

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaTop:I

    .line 5219
    iget v13, v3, Landroid/graphics/Rect;->right:I

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaRight:I

    .line 5220
    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaBottom:I

    goto/16 :goto_1b

    .line 5181
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v4           #hasFocus:Z
    .end local v5           #hasWallpaper:Z
    .end local v7           #inputWindow:Lcom/android/server/InputWindow;
    .end local v9           #isVisible:Z
    .end local v11           #visibleFrame:Landroid/graphics/Rect;
    :cond_b7
    const/4 v13, 0x0

    move v4, v13

    goto/16 :goto_2c

    .line 5183
    .restart local v4       #hasFocus:Z
    .restart local v9       #isVisible:Z
    :cond_bb
    const/4 v13, 0x0

    move v5, v13

    goto/16 :goto_3c

    .line 5197
    .restart local v5       #hasWallpaper:Z
    .restart local v7       #inputWindow:Lcom/android/server/InputWindow;
    :cond_bf
    const/4 v13, 0x0

    goto :goto_6a

    .line 5224
    .restart local v3       #frame:Landroid/graphics/Rect;
    .restart local v11       #visibleFrame:Landroid/graphics/Rect;
    :pswitch_c1
    iget-object v8, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 5225
    .local v8, inset:Landroid/graphics/Rect;
    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaLeft:I

    .line 5226
    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaTop:I

    .line 5227
    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaRight:I

    .line 5228
    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaBottom:I

    goto/16 :goto_1b

    .line 5233
    .end local v8           #inset:Landroid/graphics/Rect;
    :pswitch_e1
    iget-object v8, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 5234
    .restart local v8       #inset:Landroid/graphics/Rect;
    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaLeft:I

    .line 5235
    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaTop:I

    .line 5236
    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaRight:I

    .line 5237
    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    iget v14, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    iput v13, v7, Lcom/android/server/InputWindow;->touchableAreaBottom:I

    goto/16 :goto_1b

    .line 5244
    .end local v1           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #flags:I
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v4           #hasFocus:Z
    .end local v5           #hasWallpaper:Z
    .end local v7           #inputWindow:Lcom/android/server/InputWindow;
    .end local v8           #inset:Landroid/graphics/Rect;
    .end local v9           #isVisible:Z
    .end local v10           #type:I
    .end local v11           #visibleFrame:Landroid/graphics/Rect;
    :cond_101
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/WindowManagerService;->mInputManager:Lcom/android/server/InputManager;

    iget-object v14, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputWindows:Lcom/android/server/InputWindowList;

    invoke-virtual {v14}, Lcom/android/server/InputWindowList;->toNullTerminatedArray()[Lcom/android/server/InputWindow;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/InputManager;->setInputWindows([Lcom/android/server/InputWindow;)V

    .line 5248
    iget-object v13, p0, Lcom/android/server/WindowManagerService$InputMonitor;->mTempInputWindows:Lcom/android/server/InputWindowList;

    invoke-virtual {v13}, Lcom/android/server/InputWindowList;->clear()V

    .line 5249
    return-void

    .line 5214
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_e1
    .end packed-switch
.end method
