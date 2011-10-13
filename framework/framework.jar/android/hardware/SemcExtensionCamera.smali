.class public Landroid/hardware/SemcExtensionCamera;
.super Landroid/hardware/Camera;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SemcExtensionCamera$EventHandler;,
        Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;,
        Landroid/hardware/SemcExtensionCamera$HistogramInfo;,
        Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;,
        Landroid/hardware/SemcExtensionCamera$NotifyCallbackImpl;,
        Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;,
        Landroid/hardware/SemcExtensionCamera$ShutterValue;,
        Landroid/hardware/SemcExtensionCamera$MaxZoom;,
        Landroid/hardware/SemcExtensionCamera$Rect;,
        Landroid/hardware/SemcExtensionCamera$TallyLight;,
        Landroid/hardware/SemcExtensionCamera$FlashStatus;,
        Landroid/hardware/SemcExtensionCamera$FaceDetection;,
        Landroid/hardware/SemcExtensionCamera$LongitudeRef;,
        Landroid/hardware/SemcExtensionCamera$LatitudeRef;,
        Landroid/hardware/SemcExtensionCamera$Configuration;,
        Landroid/hardware/SemcExtensionCamera$CafMode;,
        Landroid/hardware/SemcExtensionCamera$Orientation;,
        Landroid/hardware/SemcExtensionCamera$SmileMode;,
        Landroid/hardware/SemcExtensionCamera$FacedetectMode;,
        Landroid/hardware/SemcExtensionCamera$HjrMode;,
        Landroid/hardware/SemcExtensionCamera$AfMode;,
        Landroid/hardware/SemcExtensionCamera$PreviewMode;,
        Landroid/hardware/SemcExtensionCamera$ExposureCompensation;,
        Landroid/hardware/SemcExtensionCamera$SceneRecognition;,
        Landroid/hardware/SemcExtensionCamera$RawCallback;,
        Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;,
        Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;,
        Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;
    }
.end annotation


# static fields
.field private static final ABSTRACT_CALLBACK:I = 0x80000

.field public static final AF_FAILURE_NONE:I = 0x0

.field public static final AF_FAILURE_POINT_NOTFOUND:I = 0x1

.field public static final AF_FAILURE_TOO_CLOSE:I = 0x2

.field public static final AF_FAILURE_TOO_FAR:I = 0x3

.field public static final AF_MODE:Ljava/lang/String; = "af-mode"

.field public static final AF_RANGE:Ljava/lang/String; = "focus-mode"

.field private static final AUTOZOOM_CALLBACK:I = 0x20000

.field public static final CAF_MODE:Ljava/lang/String; = "caf-mode"

.field public static final CAMERA_AF_CANCEL:I = 0x2

.field public static final CAMERA_AF_FAILURE:I = 0x1

.field public static final CAMERA_AF_SUCCESS:I = 0x0

.field public static final CAMERA_FOCUS_MACRO:I = 0x1

.field public static final CAMERA_FOCUS_NORMAL:I = 0x0

.field public static final CAMERA_ZOOM_CONTINUATION:I = 0x0

.field public static final CAMERA_ZOOM_MAX:I = 0x1

.field public static final CAMERA_ZOOM_MIN:I = 0x2

.field public static final CAMERA_ZOOM_STOP:I = 0x3

.field public static final CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final DEBUG_LOG:Z = false

.field public static final EXPOSURE_COMPENSATION:Ljava/lang/String; = "exposure-compensation"

.field public static final EXPOSURE_METERIN:Ljava/lang/String; = "auto-exposure"

.field public static final FACEDETECT_MODE:Ljava/lang/String; = "facedetect-mode"

.field public static final FACE_DETECTION:Ljava/lang/String; = "face-detection"

.field public static final FLASH_STATUS:Ljava/lang/String; = "flash-status"

.field public static final FOCUS_MODE_FULL:Ljava/lang/String; = "full"

.field public static final GPS_ALTITUDE:Ljava/lang/String; = "gps-altitude"

.field public static final GPS_ALTITUDE_REF:Ljava/lang/String; = "gps-altitude-ref"

.field public static final GPS_LATITUDE:Ljava/lang/String; = "gps-latitude"

.field public static final GPS_LATITUDE_REF:Ljava/lang/String; = "gps-latitude-ref"

.field public static final GPS_LONGITUDE:Ljava/lang/String; = "gps-longitude"

.field public static final GPS_LONGITUDE_REF:Ljava/lang/String; = "gps-longitude-ref"

.field public static final GPS_STATUS:Ljava/lang/String; = "gps-status"

.field public static final HJR_MODE:Ljava/lang/String; = "hjr-mode"

.field private static final JPEG_PICTURE_EXTENSION_CALLBACK:I = 0x100

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PREVIEW_MODE:Ljava/lang/String; = "preview-mode"

.field private static final RAW_EXTENSION_CALLBACK:I = 0x80

.field public static final ROTATION:Ljava/lang/String; = "rotation"

.field public static final SCENE:Ljava/lang/String; = "scene-mode"

.field private static final SCENERECOGNITION_CALLBACK:I = 0x10000

.field public static final SCENE_MODE_BEACH_SNOW:Ljava/lang/String; = "beach_snow"

.field public static final SCENE_MODE_DOCUMENT:Ljava/lang/String; = "document"

.field public static final SCENE_RECOGNITION:Ljava/lang/String; = "scene-recognition"

.field private static final SHUTTER_EXTENSION_CALLBACK:I = 0x2

.field public static final SMILE_MODE:Ljava/lang/String; = "smile-mode"

.field private static final START_AUTOFOCUS_CALLBACK:I = 0x40000

.field private static final TAG:Ljava/lang/String; = "SemcExtensionCamera"

.field public static final TALLY_LIGHT:Ljava/lang/String; = "flash-mode"

.field public static final WHITE_BALANCE:Ljava/lang/String; = "whitebalance"


# instance fields
.field private mAutoFocusCallback:Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;

.field private mAutoZoomCallback:Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;

.field private mExJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mExRawCallback:Landroid/hardware/SemcExtensionCamera$RawCallback;

.field private mExShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field mFaceDetectCameraNative:I

.field private mSceneRecognitionCallback:Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;

.field private mSemcCameraEventHandler:Landroid/hardware/SemcExtensionCamera$EventHandler;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/Camera;-><init>(I)V

    .line 88
    iput-object v2, p0, Landroid/hardware/SemcExtensionCamera;->mSceneRecognitionCallback:Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;

    .line 89
    iput-object v2, p0, Landroid/hardware/SemcExtensionCamera;->mAutoZoomCallback:Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;

    .line 90
    iput-object v2, p0, Landroid/hardware/SemcExtensionCamera;->mAutoFocusCallback:Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;

    .line 93
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Landroid/hardware/SemcExtensionCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/SemcExtensionCamera$EventHandler;-><init>(Landroid/hardware/SemcExtensionCamera;Landroid/hardware/SemcExtensionCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/SemcExtensionCamera;->mSemcCameraEventHandler:Landroid/hardware/SemcExtensionCamera$EventHandler;

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v1, Landroid/hardware/SemcExtensionCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/SemcExtensionCamera$EventHandler;-><init>(Landroid/hardware/SemcExtensionCamera;Landroid/hardware/SemcExtensionCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/SemcExtensionCamera;->mSemcCameraEventHandler:Landroid/hardware/SemcExtensionCamera$EventHandler;

    goto :goto_0

    .line 98
    :cond_1
    iput-object v2, p0, Landroid/hardware/SemcExtensionCamera;->mSemcCameraEventHandler:Landroid/hardware/SemcExtensionCamera$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SemcExtensionCamera;->mSceneRecognitionCallback:Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SemcExtensionCamera;->mAutoZoomCallback:Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SemcExtensionCamera;->mAutoFocusCallback:Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SemcExtensionCamera;->mExShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/SemcExtensionCamera$RawCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SemcExtensionCamera;->mExRawCallback:Landroid/hardware/SemcExtensionCamera$RawCallback;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/SemcExtensionCamera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SemcExtensionCamera;->mExJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method private final native native_extension_takePicture()V
.end method

.method private final native native_getFocusPosition()I
.end method

.method private final native native_getMaxZoom(II)Landroid/hardware/SemcExtensionCamera$MaxZoom;
.end method

.method private final native native_getSceneEvaluationInfo()Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;
.end method

.method private final native native_semcCameraExtensionService()V
.end method

.method private final native native_setAeAfPosition(IIII)V
.end method

.method private final native native_setFaceDetectCamera(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private final native native_setParameters(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private final native native_setParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_setPictureSize(Ljava/lang/String;II)V
.end method

.method private final native native_setPreviewSize(Ljava/lang/String;II)V
.end method

.method private final native native_setShutterSound(Ljava/lang/Object;)V
.end method

.method private final native native_startAutoFocus(ZZZ)V
.end method

.method private final native native_startAutoZoom(II)V
.end method

.method private final native native_startSceneRecognition()V
.end method

.method public static open()Landroid/hardware/SemcExtensionCamera;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Landroid/hardware/SemcExtensionCamera;

    invoke-direct {v0}, Landroid/hardware/SemcExtensionCamera;-><init>()V

    return-object v0
.end method

.method private static postEventFromSemcExtensionCamera(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1405
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SemcExtensionCamera;

    .line 1406
    .local v0, c:Landroid/hardware/SemcExtensionCamera;
    if-nez v0, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v2, v0, Landroid/hardware/SemcExtensionCamera;->mSemcCameraEventHandler:Landroid/hardware/SemcExtensionCamera$EventHandler;

    if-eqz v2, :cond_0

    .line 1410
    iget-object v2, v0, Landroid/hardware/SemcExtensionCamera;->mSemcCameraEventHandler:Landroid/hardware/SemcExtensionCamera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/SemcExtensionCamera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1411
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/SemcExtensionCamera;->mSemcCameraEventHandler:Landroid/hardware/SemcExtensionCamera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/SemcExtensionCamera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setAbstractCallback()V
.end method

.method private final native setCollective()V
.end method


# virtual methods
.method public final native faceDetectCameraCmd(IIII)I
.end method

.method public final getFocusPosition()I
    .locals 2

    .prologue
    .line 470
    invoke-direct {p0}, Landroid/hardware/SemcExtensionCamera;->native_getFocusPosition()I

    move-result v0

    .line 471
    .local v0, ret_focus_position:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 472
    const/4 v0, 0x0

    .line 477
    :cond_0
    return v0
.end method

.method public getMaxZoom(Landroid/hardware/Camera$Size;)Landroid/hardware/SemcExtensionCamera$MaxZoom;
    .locals 5
    .parameter "picture_size"

    .prologue
    const/4 v4, 0x0

    .line 363
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v2, v3}, Landroid/hardware/SemcExtensionCamera;->native_getMaxZoom(II)Landroid/hardware/SemcExtensionCamera$MaxZoom;

    move-result-object v0

    .line 365
    .local v0, ret_zoom:Landroid/hardware/SemcExtensionCamera$MaxZoom;
    if-nez v0, :cond_0

    .line 366
    new-instance v1, Landroid/hardware/SemcExtensionCamera$MaxZoom;

    invoke-direct {v1, p0}, Landroid/hardware/SemcExtensionCamera$MaxZoom;-><init>(Landroid/hardware/SemcExtensionCamera;)V

    .line 367
    .local v1, ret_zoom_bak:Landroid/hardware/SemcExtensionCamera$MaxZoom;
    iput v4, v1, Landroid/hardware/SemcExtensionCamera$MaxZoom;->zoom_value:I

    .line 368
    iput v4, v1, Landroid/hardware/SemcExtensionCamera$MaxZoom;->smart_value:I

    move-object v2, v1

    .line 375
    .end local v1           #ret_zoom_bak:Landroid/hardware/SemcExtensionCamera$MaxZoom;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public getSceneEvaluationInfo()Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-direct {p0}, Landroid/hardware/SemcExtensionCamera;->native_getSceneEvaluationInfo()Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;

    move-result-object v0

    .line 397
    .local v0, ret_Sceneinfo:Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;
    if-nez v0, :cond_0

    .line 398
    new-instance v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;

    .end local v0           #ret_Sceneinfo:Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;
    invoke-direct {v0, p0}, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;-><init>(Landroid/hardware/SemcExtensionCamera;)V

    .line 399
    .restart local v0       #ret_Sceneinfo:Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;
    iput v2, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->scene:I

    .line 400
    iput v2, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->face_num:I

    .line 401
    iget-object v1, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->whitebalance:Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;

    iput v2, v1, Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;->rgain_value:I

    .line 402
    iget-object v1, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->whitebalance:Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;

    iput v2, v1, Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;->bgain_value:I

    .line 403
    iget-object v1, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->histogram:Landroid/hardware/SemcExtensionCamera$HistogramInfo;

    iput v2, v1, Landroid/hardware/SemcExtensionCamera$HistogramInfo;->high_value:I

    .line 404
    iget-object v1, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->histogram:Landroid/hardware/SemcExtensionCamera$HistogramInfo;

    iput v2, v1, Landroid/hardware/SemcExtensionCamera$HistogramInfo;->middle_value:I

    .line 405
    iget-object v1, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->histogram:Landroid/hardware/SemcExtensionCamera$HistogramInfo;

    iput v2, v1, Landroid/hardware/SemcExtensionCamera$HistogramInfo;->low_value:I

    .line 406
    iput v2, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->aelevel:I

    .line 407
    iput v2, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->yuvcnt1:I

    .line 408
    iput v2, v0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->yuvcnt2:I

    .line 410
    :cond_0
    return-object v0
.end method

.method public final semcCameraExtensionService()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Landroid/hardware/SemcExtensionCamera;->native_semcCameraExtensionService()V

    .line 532
    invoke-direct {p0}, Landroid/hardware/SemcExtensionCamera;->setAbstractCallback()V

    .line 533
    return-void
.end method

.method public final semcCameraTakePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/SemcExtensionCamera$RawCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 609
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera;->mExShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 610
    iput-object p2, p0, Landroid/hardware/SemcExtensionCamera;->mExRawCallback:Landroid/hardware/SemcExtensionCamera$RawCallback;

    .line 611
    iput-object p3, p0, Landroid/hardware/SemcExtensionCamera;->mExJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 612
    invoke-direct {p0}, Landroid/hardware/SemcExtensionCamera;->native_extension_takePicture()V

    .line 613
    return-void
.end method

.method public setAeAfPosition(Landroid/hardware/SemcExtensionCamera$Rect;)V
    .locals 4
    .parameter "position"

    .prologue
    .line 253
    iget v0, p1, Landroid/hardware/SemcExtensionCamera$Rect;->x:I

    iget v1, p1, Landroid/hardware/SemcExtensionCamera$Rect;->y:I

    iget v2, p1, Landroid/hardware/SemcExtensionCamera$Rect;->width:I

    iget v3, p1, Landroid/hardware/SemcExtensionCamera$Rect;->height:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/SemcExtensionCamera;->native_setAeAfPosition(IIII)V

    .line 258
    return-void
.end method

.method public setFaceDetectCamera(Lcom/sonyericsson/android/hardware/FaceDetectCamera;)V
    .locals 2
    .parameter "faceDetectCamera"

    .prologue
    .line 571
    iget v1, p0, Landroid/hardware/SemcExtensionCamera;->mFaceDetectCameraNative:I

    if-nez v1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 579
    .local v0, weak_facedetect:Ljava/lang/ref/WeakReference;
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/hardware/FaceDetectCamera;->setExtensionCamera(Landroid/hardware/SemcExtensionCamera;)V

    .line 580
    invoke-direct {p0, p1, v0}, Landroid/hardware/SemcExtensionCamera;->native_setFaceDetectCamera(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 582
    .end local v0           #weak_facedetect:Ljava/lang/ref/WeakReference;
    :cond_0
    return-void
.end method

.method public final setParameters(Landroid/hardware/Camera$Parameters;Ljava/lang/String;I)V
    .locals 1
    .parameter "params"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/hardware/SemcExtensionCamera;->native_setParameters(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p0}, Landroid/hardware/SemcExtensionCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 138
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "params"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/hardware/SemcExtensionCamera;->native_setParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Landroid/hardware/SemcExtensionCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 167
    return-void
.end method

.method public setPictureSize(Landroid/hardware/Camera$Parameters;II)V
    .locals 1
    .parameter "params"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/hardware/SemcExtensionCamera;->native_setPictureSize(Ljava/lang/String;II)V

    .line 223
    invoke-virtual {p0}, Landroid/hardware/SemcExtensionCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 224
    return-void
.end method

.method public final setPreviewSize(Landroid/hardware/Camera$Parameters;II)V
    .locals 1
    .parameter "params"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/hardware/SemcExtensionCamera;->native_setPreviewSize(Ljava/lang/String;II)V

    .line 195
    invoke-virtual {p0}, Landroid/hardware/SemcExtensionCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 196
    return-void
.end method

.method public setShutterSound(Landroid/hardware/SemcExtensionCamera$ShutterValue;)V
    .locals 0
    .parameter "shutter_val"

    .prologue
    .line 500
    invoke-direct {p0, p1}, Landroid/hardware/SemcExtensionCamera;->native_setShutterSound(Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public final native setZoom(I)V
.end method

.method public final startAutoFocus(Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;ZZZ)V
    .locals 0
    .parameter "cb"
    .parameter "ae_lock"
    .parameter "awb_lock"
    .parameter "focus_lock"

    .prologue
    .line 440
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera;->mAutoFocusCallback:Landroid/hardware/SemcExtensionCamera$AutoFocusCallback;

    .line 441
    invoke-direct {p0, p2, p3, p4}, Landroid/hardware/SemcExtensionCamera;->native_startAutoFocus(ZZZ)V

    .line 442
    return-void
.end method

.method public final startAutoZoom(Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;II)V
    .locals 0
    .parameter "cb"
    .parameter "step_value"
    .parameter "skip_parm"

    .prologue
    .line 319
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera;->mAutoZoomCallback:Landroid/hardware/SemcExtensionCamera$AutoZoomCallback;

    .line 320
    invoke-direct {p0, p2, p3}, Landroid/hardware/SemcExtensionCamera;->native_startAutoZoom(II)V

    .line 321
    return-void
.end method

.method public final startSceneRecognition(Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 281
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera;->mSceneRecognitionCallback:Landroid/hardware/SemcExtensionCamera$SceneRecognitionCallback;

    .line 282
    invoke-direct {p0}, Landroid/hardware/SemcExtensionCamera;->native_startSceneRecognition()V

    .line 283
    return-void
.end method

.method public final native stopAutoFocus()V
.end method

.method public final native stopAutoZoom()V
.end method

.method public final native stopSceneRecognition()V
.end method
