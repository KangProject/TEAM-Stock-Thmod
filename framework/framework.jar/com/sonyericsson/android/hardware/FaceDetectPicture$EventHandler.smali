.class public Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;
.super Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
.source "FaceDetectPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetectPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetectPicture;)V
    .locals 0
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;-><init>(Lcom/sonyericsson/android/hardware/FaceDetect;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 891
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;

    .line 892
    .local v1, objpack:Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 924
    invoke-super {p0, p1}, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->handleMessage(Landroid/os/Message;)V

    .line 925
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 894
    .restart local p0
    :pswitch_0
    iget-object v2, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 898
    iget-object v2, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;->this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

    iget-object p0, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;

    invoke-static {v2, p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->access$000(Lcom/sonyericsson/android/hardware/FaceDetectPicture;Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V

    .line 899
    iget-object v0, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataCallback;

    .line 901
    .local v0, callback:Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataCallback;
    iget-object p0, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    check-cast p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataCallback;->onFacialMetadata(Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V

    goto :goto_0

    .line 906
    .end local v0           #callback:Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataCallback;
    .restart local p0
    :pswitch_1
    iget-object v2, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 910
    iget-object v0, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyCallback;

    .line 911
    .local v0, callback:Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyCallback;
    iget-object p0, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyResults;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyCallback;->onVerifyResults(Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyResults;)V

    goto :goto_0

    .line 915
    .end local v0           #callback:Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyCallback;
    .restart local p0
    :pswitch_2
    iget-object v2, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 919
    iget-object p0, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringCallback;

    iget-object v2, v1, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    check-cast v2, Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringResults;

    invoke-interface {p0, v2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringCallback;->onClusteringResults(Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringResults;)V

    goto :goto_0

    .line 892
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
