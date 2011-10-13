.class public Lcom/sonyericsson/android/hardware/FaceDetectCamera;
.super Lcom/sonyericsson/android/hardware/FaceDetect;
.source "FaceDetectCamera.java"


# static fields
.field private static final DEBUG_LOG:Z = false

.field public static final FACEDETECTCAMERA_CMD_SETERRORCB:I = 0x4

.field public static final FACEDETECTCAMERA_CMD_SETSEARCHFACECB:I = 0x5

.field public static final FACEDETECTCAMERA_CMD_SETSELECTFACEPOS:I = 0x3

.field public static final FACEDETECTCAMERA_CMD_SETSMILEMODE:I = 0x2

.field public static final FACEDETECTCAMERA_CMD_START:I = 0x0

.field public static final FACEDETECTCAMERA_CMD_STOP:I = 0x1

.field private static final FACEDETECT_ERROR:I = -0x7fffffff

.field private static final TAG:Ljava/lang/String; = "FaceDetectCamera"


# instance fields
.field private mCamera:Landroid/hardware/SemcExtensionCamera;

.field private mNativeContext:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/android/hardware/FaceDetect;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mNativeContext:I

    .line 88
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mNativeContext:I

    .line 274
    return-void
.end method

.method public final setErrorCallback(Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    const/4 v3, 0x0

    .line 215
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mErrorCallback:Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    if-eqz v1, :cond_1

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, argx:I
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mErrorCallback:Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;

    if-eqz v1, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/hardware/SemcExtensionCamera;->faceDetectCameraCmd(IIII)I

    .line 227
    .end local v0           #argx:I
    :cond_1
    return-void
.end method

.method public final setExtensionCamera(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    .line 101
    return-void
.end method

.method public final setSearchFaceCallback(Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    const/4 v3, 0x0

    .line 241
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mSearchFaceCallback:Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    if-eqz v1, :cond_1

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, argx:I
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mSearchFaceCallback:Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;

    if-eqz v1, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/hardware/SemcExtensionCamera;->faceDetectCameraCmd(IIII)I

    .line 253
    .end local v0           #argx:I
    :cond_1
    return-void
.end method

.method public final setSelectFacePos(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/hardware/SemcExtensionCamera;->faceDetectCameraCmd(IIII)I

    .line 201
    :cond_0
    return-void
.end method

.method public final setSmileMode(Z)V
    .locals 4
    .parameter "smileMode"

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    if-eqz v1, :cond_1

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, argx:I
    if-eqz p1, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/hardware/SemcExtensionCamera;->faceDetectCameraCmd(IIII)I

    .line 179
    .end local v0           #argx:I
    :cond_1
    return-void
.end method

.method public final start()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    const v0, -0x7fffffff

    .line 119
    .local v0, ret:I
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/hardware/SemcExtensionCamera;->faceDetectCameraCmd(IIII)I

    move-result v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    iput-boolean v3, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mStopFlg:Z

    .line 129
    return v0
.end method

.method public final stop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    iput-boolean v2, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mStopFlg:Z

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mCamera:Landroid/hardware/SemcExtensionCamera;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/hardware/SemcExtensionCamera;->faceDetectCameraCmd(IIII)I

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    return-void
.end method
