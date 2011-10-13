.class final Lcom/android/server/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ANIMATE:I = 0x4

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final HOLD_SCREEN_CHANGED:I = 0xc

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field private mLastReportedHold:Lcom/android/server/WindowManagerService$Session;

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 7791
    iput-object p1, p0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7792
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 30
    .parameter "msg"

    .prologue
    .line 7796
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    packed-switch v4, :pswitch_data_49e

    .line 8131
    .end local p1
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 7801
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7802
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v15, v5, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 7803
    .local v15, lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v17, v0

    .line 7804
    .local v17, newFocus:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v15

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2c

    .line 7806
    monitor-exit v4

    goto :goto_8

    .line 7817
    .end local v15           #lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #newFocus:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_29
    move-exception v5

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_29

    throw v5

    .line 7808
    .restart local v15       #lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v17       #newFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2c
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object/from16 v0, v17

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 7811
    if-eqz v17, :cond_4b

    if-eqz v15, :cond_4b

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 7814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7815
    const/4 v15, 0x0

    .line 7817
    :cond_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_29

    .line 7819
    move-object v0, v15

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 7822
    if-eqz v17, :cond_6b

    .line 7825
    :try_start_53
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_63} :catch_49a

    .line 7829
    :goto_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/server/WindowManagerService;->access$800(Lcom/android/server/WindowManagerService;)V

    .line 7832
    :cond_6b
    if-eqz v15, :cond_8

    .line 7835
    :try_start_6d
    iget-object v4, v15, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_7a} :catch_7b

    goto :goto_8

    .line 7836
    :catch_7b
    move-exception v4

    goto :goto_8

    .line 7846
    .end local v15           #lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #newFocus:Lcom/android/server/WindowManagerService$WindowState;
    :pswitch_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7847
    :try_start_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 7848
    .local v16, losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 7849
    monitor-exit v4
    :try_end_9c
    .catchall {:try_start_85 .. :try_end_9c} :catchall_bf

    .line 7851
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 7852
    .local v11, N:I
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_a1
    if-ge v14, v11, :cond_8

    .line 7855
    :try_start_a3
    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_bc} :catch_497

    .line 7852
    :goto_bc
    add-int/lit8 v14, v14, 0x1

    goto :goto_a1

    .line 7849
    .end local v11           #N:I
    .end local v14           #i:I
    .end local v16           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    .restart local p1
    :catchall_bf
    move-exception v5

    :try_start_c0
    monitor-exit v4
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v5

    .line 7863
    :pswitch_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7864
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 7865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/WindowManagerService;->access$900(Lcom/android/server/WindowManagerService;)V

    .line 7866
    monitor-exit v4

    goto/16 :goto_8

    :catchall_dd
    move-exception v5

    monitor-exit v4
    :try_end_df
    .catchall {:try_start_ca .. :try_end_df} :catchall_dd

    throw v5

    .line 7870
    :pswitch_e0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7871
    .local v27, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object/from16 v22, v0

    .line 7873
    .local v22, sd:Lcom/android/server/WindowManagerService$StartingData;
    if-eqz v22, :cond_8

    .line 7881
    const/16 v25, 0x0

    .line 7883
    .local v25, view:Landroid/view/View;
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$StartingData;->pkg:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/WindowManagerService$StartingData;->theme:I

    move v7, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v8, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/WindowManagerService$StartingData;->labelRes:I

    move v9, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/WindowManagerService$StartingData;->icon:I

    move v10, v0

    invoke-interface/range {v4 .. v10}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;II)Landroid/view/View;
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_11a} :catch_16b

    move-result-object v25

    .line 7891
    :goto_11b
    if-eqz v25, :cond_8

    .line 7892
    const/4 v12, 0x0

    .line 7894
    .local v12, abort:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7895
    :try_start_126
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    move v5, v0

    if-nez v5, :cond_134

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v5, v0

    if-nez v5, :cond_175

    .line 7898
    :cond_134
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_148

    .line 7903
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 7904
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 7905
    const/4 v12, 0x1

    .line 7915
    :cond_148
    :goto_148
    monitor-exit v4
    :try_end_149
    .catchall {:try_start_126 .. :try_end_149} :catchall_17c

    .line 7917
    if-eqz v12, :cond_8

    .line 7919
    :try_start_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_15e} :catch_160

    goto/16 :goto_8

    .line 7920
    :catch_160
    move-exception v4

    move-object v13, v4

    .line 7921
    .local v13, e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 7887
    .end local v12           #abort:Z
    .end local v13           #e:Ljava/lang/Exception;
    :catch_16b
    move-exception v4

    move-object v13, v4

    .line 7888
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when adding starting window"

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11b

    .line 7908
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v12       #abort:Z
    :cond_175
    :try_start_175
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    goto :goto_148

    .line 7915
    :catchall_17c
    move-exception v5

    monitor-exit v4
    :try_end_17e
    .catchall {:try_start_175 .. :try_end_17e} :catchall_17c

    throw v5

    .line 7928
    .end local v12           #abort:Z
    .end local v22           #sd:Lcom/android/server/WindowManagerService$StartingData;
    .end local v25           #view:Landroid/view/View;
    .end local v27           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :pswitch_17f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7929
    .restart local v27       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v24, 0x0

    .line 7930
    .local v24, token:Landroid/os/IBinder;
    const/16 v25, 0x0

    .line 7931
    .restart local v25       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7936
    :try_start_193
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_1b8

    .line 7937
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 7938
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v24, v0

    .line 7939
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 7940
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 7941
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 7943
    :cond_1b8
    monitor-exit v4
    :try_end_1b9
    .catchall {:try_start_193 .. :try_end_1b9} :catchall_1d7

    .line 7944
    if-eqz v25, :cond_8

    .line 7946
    :try_start_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v0, v4

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1ca} :catch_1cc

    goto/16 :goto_8

    .line 7947
    :catch_1cc
    move-exception v4

    move-object v13, v4

    .line 7948
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 7943
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_1d7
    move-exception v5

    :try_start_1d8
    monitor-exit v4
    :try_end_1d9
    .catchall {:try_start_1d8 .. :try_end_1d9} :catchall_1d7

    throw v5

    .line 7954
    .end local v24           #token:Landroid/os/IBinder;
    .end local v25           #view:Landroid/view/View;
    .end local v27           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :pswitch_1da
    const/16 v24, 0x0

    .line 7955
    .restart local v24       #token:Landroid/os/IBinder;
    const/16 v25, 0x0

    .line 7957
    .restart local v25       #view:Landroid/view/View;
    :goto_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 7958
    :try_start_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 7959
    .restart local v11       #N:I
    if-gtz v11, :cond_1f9

    .line 7960
    monitor-exit v4

    goto/16 :goto_8

    .line 7978
    .end local v11           #N:I
    :catchall_1f6
    move-exception v5

    monitor-exit v4
    :try_end_1f8
    .catchall {:try_start_1e6 .. :try_end_1f8} :catchall_1f6

    throw v5

    .line 7962
    .restart local v11       #N:I
    :cond_1f9
    :try_start_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    const/4 v6, 0x1

    sub-int v6, v11, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7969
    .restart local v27       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-nez v5, :cond_212

    .line 7970
    monitor-exit v4

    goto :goto_1de

    .line 7973
    :cond_212
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 7974
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v24, v0

    .line 7975
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 7976
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 7977
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 7978
    monitor-exit v4
    :try_end_231
    .catchall {:try_start_1f9 .. :try_end_231} :catchall_1f6

    .line 7981
    :try_start_231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v0, v4

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_240} :catch_241

    goto :goto_1de

    .line 7982
    :catch_241
    move-exception v4

    move-object v13, v4

    .line 7983
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1de

    .line 7989
    .end local v11           #N:I
    .end local v13           #e:Ljava/lang/Exception;
    .end local v24           #token:Landroid/os/IBinder;
    .end local v25           #view:Landroid/view/View;
    .end local v27           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :pswitch_24b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 7991
    .restart local v27       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    if-eqz v4, :cond_276

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 7992
    .local v20, nowVisible:Z
    :goto_25d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    if-eqz v4, :cond_27a

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 7999
    .local v19, nowGone:Z
    :goto_267
    if-eqz v20, :cond_27e

    .line 8000
    :try_start_269
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_8

    .line 8004
    :catch_273
    move-exception v4

    goto/16 :goto_8

    .line 7991
    .end local v19           #nowGone:Z
    .end local v20           #nowVisible:Z
    :cond_276
    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_25d

    .line 7992
    .restart local v20       #nowVisible:Z
    :cond_27a
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_267

    .line 8002
    .restart local v19       #nowGone:Z
    :cond_27e
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_286
    .catch Landroid/os/RemoteException; {:try_start_269 .. :try_end_286} :catch_273

    goto/16 :goto_8

    .line 8009
    .end local v19           #nowGone:Z
    .end local v20           #nowVisible:Z
    .end local v27           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :pswitch_288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8010
    :try_start_290
    const-string v5, "WindowManager"

    const-string v6, "Window freeze timeout expired."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 8012
    .restart local v14       #i:I
    :cond_2a2
    :goto_2a2
    if-lez v14, :cond_2df

    .line 8013
    add-int/lit8 v14, v14, -0x1

    .line 8014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/WindowManagerService$WindowState;

    .line 8015
    .local v26, w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_2a2

    .line 8016
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 8017
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force clearing orientation change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a2

    .line 8021
    .end local v14           #i:I
    .end local v26           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_2dc
    move-exception v5

    monitor-exit v4
    :try_end_2de
    .catchall {:try_start_290 .. :try_end_2de} :catchall_2dc

    throw v5

    .line 8020
    .restart local v14       #i:I
    :cond_2df
    :try_start_2df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/WindowManagerService;->access$900(Lcom/android/server/WindowManagerService;)V

    .line 8021
    monitor-exit v4
    :try_end_2e8
    .catchall {:try_start_2df .. :try_end_2e8} :catchall_2dc

    goto/16 :goto_8

    .line 8028
    .end local v14           #i:I
    :pswitch_2ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8029
    :try_start_2f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/WindowManagerService$Session;

    move-object/from16 v21, v0

    .line 8030
    .local v21, oldHold:Lcom/android/server/WindowManagerService$Session;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/WindowManagerService$Session;

    .line 8031
    .local v18, newHold:Lcom/android/server/WindowManagerService$Session;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/WindowManagerService$Session;

    .line 8032
    monitor-exit v4
    :try_end_307
    .catchall {:try_start_2f2 .. :try_end_307} :catchall_33c

    .line 8034
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 8036
    if-eqz v21, :cond_322

    .line 8037
    :try_start_30f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move v5, v0

    const/4 v6, -0x1

    const-string v7, "window"

    const/4 v8, 0x2

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V

    .line 8041
    :cond_322
    if-eqz v18, :cond_8

    .line 8042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move v5, v0

    const/4 v6, -0x1

    const-string v7, "window"

    const/4 v8, 0x2

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_337
    .catch Landroid/os/RemoteException; {:try_start_30f .. :try_end_337} :catch_339

    goto/16 :goto_8

    .line 8046
    :catch_339
    move-exception v4

    goto/16 :goto_8

    .line 8032
    .end local v18           #newHold:Lcom/android/server/WindowManagerService$Session;
    .end local v21           #oldHold:Lcom/android/server/WindowManagerService$Session;
    :catchall_33c
    move-exception v5

    :try_start_33d
    monitor-exit v4
    :try_end_33e
    .catchall {:try_start_33d .. :try_end_33e} :catchall_33c

    throw v5

    .line 8053
    :pswitch_33f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8054
    :try_start_347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_369

    .line 8057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 8058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 8059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/WindowManagerService;->access$900(Lcom/android/server/WindowManagerService;)V

    .line 8061
    :cond_369
    monitor-exit v4

    goto/16 :goto_8

    :catchall_36c
    move-exception v5

    monitor-exit v4
    :try_end_36e
    .catchall {:try_start_347 .. :try_end_36e} :catchall_36c

    throw v5

    .line 8066
    :pswitch_36f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_8

    .line 8074
    :pswitch_39f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8075
    :try_start_3a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    if-eqz v5, :cond_3cf

    .line 8078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8080
    monitor-exit v4

    goto/16 :goto_8

    .line 8088
    :catchall_3cc
    move-exception v5

    monitor-exit v4
    :try_end_3ce
    .catchall {:try_start_3a7 .. :try_end_3ce} :catchall_3cc

    throw v5

    .line 8084
    :cond_3cf
    :try_start_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v5, :cond_3db

    .line 8085
    monitor-exit v4

    goto/16 :goto_8

    .line 8087
    :cond_3db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 8088
    monitor-exit v4
    :try_end_3e5
    .catchall {:try_start_3cf .. :try_end_3e5} :catchall_3cc

    .line 8089
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_8

    .line 8094
    :pswitch_3ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_8

    .line 8099
    :pswitch_3f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8100
    :try_start_400
    const-string v5, "WindowManager"

    const-string v6, "App freeze timeout expired."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 8102
    .restart local v14       #i:I
    :cond_412
    :goto_412
    if-lez v14, :cond_458

    .line 8103
    add-int/lit8 v14, v14, -0x1

    .line 8104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 8105
    .local v23, tok:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_412

    .line 8106
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force clearing freeze: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v23

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    goto :goto_412

    .line 8110
    .end local v14           #i:I
    .end local v23           #tok:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_455
    move-exception v5

    monitor-exit v4
    :try_end_457
    .catchall {:try_start_400 .. :try_end_457} :catchall_455

    throw v5

    .restart local v14       #i:I
    :cond_458
    :try_start_458
    monitor-exit v4
    :try_end_459
    .catchall {:try_start_458 .. :try_end_459} :catchall_455

    goto/16 :goto_8

    .line 8115
    .end local v14           #i:I
    :pswitch_45b
    const/16 v4, 0x12

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 8116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_8

    .line 8121
    :pswitch_46d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/server/WindowManagerService;->access$1000(Lcom/android/server/WindowManagerService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 8122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 8123
    :try_start_480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/WindowManagerService;->access$1002(Lcom/android/server/WindowManagerService;Z)Z

    .line 8124
    monitor-exit v4
    :try_end_48a
    .catchall {:try_start_480 .. :try_end_48a} :catchall_494

    .line 8125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/server/WindowManagerService;->access$1100(Lcom/android/server/WindowManagerService;)V

    goto/16 :goto_8

    .line 8124
    :catchall_494
    move-exception v5

    :try_start_495
    monitor-exit v4
    :try_end_496
    .catchall {:try_start_495 .. :try_end_496} :catchall_494

    throw v5

    .line 7856
    .end local p1
    .restart local v11       #N:I
    .restart local v14       #i:I
    .restart local v16       #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    :catch_497
    move-exception v4

    goto/16 :goto_bc

    .line 7826
    .end local v11           #N:I
    .end local v14           #i:I
    .end local v16           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    .restart local v15       #lastFocus:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v17       #newFocus:Lcom/android/server/WindowManagerService$WindowState;
    .restart local p1
    :catch_49a
    move-exception v4

    goto/16 :goto_63

    .line 7796
    nop

    :pswitch_data_49e
    .packed-switch 0x2
        :pswitch_9
        :pswitch_7d
        :pswitch_c2
        :pswitch_e0
        :pswitch_17f
        :pswitch_1da
        :pswitch_24b
        :pswitch_8
        :pswitch_8
        :pswitch_288
        :pswitch_2ea
        :pswitch_33f
        :pswitch_36f
        :pswitch_39f
        :pswitch_3ee
        :pswitch_3f8
        :pswitch_45b
        :pswitch_46d
    .end packed-switch
.end method
