.class public Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
.super Landroid/os/Handler;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetect;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 538
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetect;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    .line 541
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 542
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 544
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    iget-boolean v1, v1, Lcom/sonyericsson/android/hardware/FaceDetect;->mStopFlg:Z

    if-eqz v1, :cond_1

    .line 574
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 551
    .restart local p0
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;

    .line 553
    .local v0, objpack:Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 555
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    iget-object v1, v1, Lcom/sonyericsson/android/hardware/FaceDetect;->mErrorCallback:Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;

    if-eqz v1, :cond_0

    .line 556
    const-string v1, "FaceDetect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage() : call mErrorCallback.onError() msg.arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    iget-object v1, v1, Lcom/sonyericsson/android/hardware/FaceDetect;->mErrorCallback:Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, v0, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/sonyericsson/android/hardware/FaceDetect;

    invoke-interface {v1, v2, p0}, Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;->onError(ILcom/sonyericsson/android/hardware/FaceDetect;)V

    goto :goto_0

    .line 564
    .restart local p0
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    iget-object v1, v1, Lcom/sonyericsson/android/hardware/FaceDetect;->mSearchFaceCallback:Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    iget-object v1, v1, Lcom/sonyericsson/android/hardware/FaceDetect;->mSearchFaceCallback:Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;

    iget-object p0, v0, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;

    invoke-interface {v1, p0}, Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;->onSearchResults(Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;)V

    goto :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
