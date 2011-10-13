.class public Lcom/sonyericsson/android/hardware/FaceDetectPicture;
.super Lcom/sonyericsson/android/hardware/FaceDetect;
.source "FaceDetectPicture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringData;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyData;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringResults;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyResults;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringCallback;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyCallback;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataCallback;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegBinaryInfo;,
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$RgbBinaryInfo;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Z = false

.field private static final FACEDETECT_CLUSTERINGCB:I = 0x4

.field private static final FACEDETECT_MAKEMDATACB:I = 0x2

.field private static final FACEDETECT_VERIFYCB:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FaceDetectPicture"


# instance fields
.field private mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

.field private mNativeContext:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/android/hardware/FaceDetect;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->mNativeContext:I

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->createEventHandler()Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativePictureConstructor(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/hardware/FaceDetectPicture;Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->makeFacialConvErrorInfo(Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V

    return-void
.end method

.method private final makeFacialConvErrorInfo(Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V
    .locals 3
    .parameter "results"

    .prologue
    .line 327
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v1, p1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;->faceNum:I

    if-ge v0, v1, :cond_1

    .line 328
    iget-object v1, p1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;->faceData:[Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults$FaceData;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults$FaceData;->errorInformation:I

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;->faceData:[Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults$FaceData;

    aget-object v1, v1, v0

    const v2, -0x7ffffffd

    iput v2, v1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults$FaceData;->errorInformation:I

    .line 327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    return-void
.end method

.method private native nativeClusteringAsync(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private native nativeClusteringSync(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method private native nativeMakeFacialMetadataJpegBinaryAsync(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private native nativeMakeFacialMetadataJpegBinarySync(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method private native nativeMakeFacialMetadataJpegFileAsync(Ljava/lang/String;ILjava/lang/Object;)V
.end method

.method private native nativeMakeFacialMetadataJpegFileSync(Ljava/lang/String;ILjava/lang/Object;)I
.end method

.method private native nativeMakeFacialMetadataRgbBinaryAsync(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private native nativeMakeFacialMetadataRgbBinarySync(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method private native nativePictureConstructor(Ljava/lang/Object;)V
.end method

.method private native nativeVerifyAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private native nativeVerifySync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "ref"
    .parameter "what"
    .parameter "argx"
    .parameter "argy"
    .parameter "cb"
    .parameter "cbdata"

    .prologue
    const-string v4, "FaceDetectPicture"

    .line 244
    if-nez p0, :cond_1

    .line 245
    const-string v3, "FaceDetectPicture"

    const-string v3, "postEvebtFromNative() : ref is NULL"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local p0
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/hardware/FaceDetectPicture;

    .line 252
    .local v0, facedetect:Lcom/sonyericsson/android/hardware/FaceDetectPicture;
    if-nez v0, :cond_2

    .line 253
    const-string v3, "FaceDetectPicture"

    const-string v3, "postEventFromNaitve() : facedetect is null"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_2
    new-instance v2, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;

    invoke-direct {v2}, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;-><init>()V

    .line 257
    .local v2, objpack:Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    .line 258
    iput-object p4, v2, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    .line 259
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    .line 260
    iput-object p5, v2, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    .line 261
    iget-object v3, v0, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, v0, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 268
    .local v1, m:Landroid/os/Message;
    iget-object v3, v0, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeDestructor()V

    .line 103
    return-void
.end method

.method public final clustering(Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringData;Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringResults;)I
    .locals 1
    .parameter "data"
    .parameter "results"

    .prologue
    .line 681
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeClusteringSync(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 685
    .local v0, ret:I
    return v0
.end method

.method public final clustering(Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringData;Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringCallback;)V
    .locals 0
    .parameter "data"
    .parameter "cb"

    .prologue
    .line 715
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeClusteringAsync(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 716
    return-void
.end method

.method protected bridge synthetic createEventHandler()Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->createEventHandler()Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    move-result-object v0

    return-object v0
.end method

.method protected final createEventHandler()Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;
    .locals 4

    .prologue
    .line 191
    :try_start_0
    new-instance v1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;-><init>(Lcom/sonyericsson/android/hardware/FaceDetectPicture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v1, handler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;
    :goto_0
    return-object v1

    .line 192
    .end local v1           #handler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FaceDetectPicture"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    .restart local v1       #handler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;
    goto :goto_0
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeDestructor()V

    .line 114
    return-void
.end method

.method public final makeFacialMetadata(Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegBinaryInfo;Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)I
    .locals 1
    .parameter "jpegInfo"
    .parameter "results"

    .prologue
    .line 438
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeMakeFacialMetadataJpegBinarySync(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 440
    .local v0, ret:I
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->makeFacialConvErrorInfo(Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V

    .line 448
    return v0
.end method

.method public final makeFacialMetadata(Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)I
    .locals 3
    .parameter "jpegInfo"
    .parameter "results"

    .prologue
    .line 520
    iget-object v1, p1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;->pathName:Ljava/lang/String;

    iget v2, p1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;->rotationType:I

    invoke-direct {p0, v1, v2, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeMakeFacialMetadataJpegFileSync(Ljava/lang/String;ILjava/lang/Object;)I

    move-result v0

    .line 523
    .local v0, ret:I
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->makeFacialConvErrorInfo(Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V

    .line 531
    return v0
.end method

.method public final makeFacialMetadata(Lcom/sonyericsson/android/hardware/FaceDetectPicture$RgbBinaryInfo;Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)I
    .locals 1
    .parameter "rgbInfo"
    .parameter "results"

    .prologue
    .line 355
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeMakeFacialMetadataRgbBinarySync(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 357
    .local v0, ret:I
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->makeFacialConvErrorInfo(Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V

    .line 365
    return v0
.end method

.method public final makeFacialMetadata(Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegBinaryInfo;Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataCallback;)V
    .locals 0
    .parameter "jpegInfo"
    .parameter "cb"

    .prologue
    .line 484
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeMakeFacialMetadataJpegBinaryAsync(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method public final makeFacialMetadata(Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataCallback;)V
    .locals 2
    .parameter "jpegInfo"
    .parameter "cb"

    .prologue
    .line 568
    iget-object v0, p1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;->pathName:Ljava/lang/String;

    iget v1, p1, Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;->rotationType:I

    invoke-direct {p0, v0, v1, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeMakeFacialMetadataJpegFileAsync(Ljava/lang/String;ILjava/lang/Object;)V

    .line 570
    return-void
.end method

.method public final makeFacialMetadata(Lcom/sonyericsson/android/hardware/FaceDetectPicture$RgbBinaryInfo;Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataCallback;)V
    .locals 0
    .parameter "rgbInfo"
    .parameter "cb"

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeMakeFacialMetadataRgbBinaryAsync(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public final searchFace(Lcom/sonyericsson/android/hardware/FaceDetectPicture$RgbBinaryInfo;Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;)I
    .locals 1
    .parameter "rgbInfo"
    .parameter "results"

    .prologue
    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public final searchFace(Lcom/sonyericsson/android/hardware/FaceDetectPicture$RgbBinaryInfo;Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;)V
    .locals 0
    .parameter "rgbInfo"
    .parameter "cb"

    .prologue
    .line 765
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeStop()V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/hardware/FaceDetectPicture$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 214
    :cond_0
    return-void
.end method

.method public final verify(Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyData;Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyData;Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyResults;)I
    .locals 1
    .parameter "srcData"
    .parameter "cmpData"
    .parameter "results"

    .prologue
    .line 606
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeVerifySync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 610
    .local v0, ret:I
    return v0
.end method

.method public final verify(Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyData;Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyData;Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyCallback;)V
    .locals 0
    .parameter "srcData"
    .parameter "cmpData"
    .parameter "cb"

    .prologue
    .line 646
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/hardware/FaceDetectPicture;->nativeVerifyAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    return-void
.end method
