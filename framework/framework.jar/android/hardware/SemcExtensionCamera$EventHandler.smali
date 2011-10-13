.class Landroid/hardware/SemcExtensionCamera$EventHandler;
.super Landroid/os/Handler;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mSemcExtensionCamera:Landroid/hardware/SemcExtensionCamera;

.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;Landroid/hardware/SemcExtensionCamera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "camera"
    .parameter "looper"

    .prologue
    .line 1295
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    .line 1296
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1300
    iput-object p2, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->mSemcExtensionCamera:Landroid/hardware/SemcExtensionCamera;

    .line 1301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const-string v3, "SemcExtensionCamera"

    .line 1311
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1388
    const-string v1, "SemcExtensionCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1317
    :sswitch_1
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$000(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1322
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$000(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;->onSceneModeChanged(I)V

    goto :goto_0

    .line 1331
    :sswitch_2
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$100(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1332
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$100(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3}, Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;->onAutoZoom(II)V

    goto :goto_0

    .line 1336
    :sswitch_3
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$200(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1340
    new-instance v0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;

    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {v0, v1}, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;-><init>(Landroid/hardware/SemcExtensionCamera;)V

    .line 1341
    .local v0, ret_afinfo:Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1342
    const-string v1, "SemcExtensionCamera"

    const-string v1, "AutoFocusInfo is null error."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iput v2, v0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;->af_state:I

    .line 1344
    iput v2, v0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;->af_failure_state:I

    .line 1345
    iput v2, v0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;->multi_focus_state:I

    .line 1349
    :goto_1
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$200(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;

    move-result-object v1

    iget v2, v0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;->af_state:I

    iget v3, v0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;->af_failure_state:I

    iget v4, v0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;->multi_focus_state:I

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;->onAutoFocus(III)V

    goto :goto_0

    .line 1347
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ret_afinfo:Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;
    check-cast v0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;

    .restart local v0       #ret_afinfo:Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;
    goto :goto_1

    .line 1362
    .end local v0           #ret_afinfo:Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;
    :sswitch_4
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$300(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1366
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$300(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1371
    :sswitch_5
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$400(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$RawCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1375
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$400(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$RawCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iget-object v3, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->mSemcExtensionCamera:Landroid/hardware/SemcExtensionCamera;

    invoke-interface {v2, v1, v3}, Landroid/hardware/SemcExtensionCamera$RawCallback;->onRawImage([ILandroid/hardware/SemcExtensionCamera;)V

    goto/16 :goto_0

    .line 1380
    :sswitch_6
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$500(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1384
    iget-object v1, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-static {v1}, Landroid/hardware/SemcExtensionCamera;->access$500(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v3, p0, Landroid/hardware/SemcExtensionCamera$EventHandler;->mSemcExtensionCamera:Landroid/hardware/SemcExtensionCamera;

    invoke-interface {v2, v1, v3}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1311
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_6
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method
