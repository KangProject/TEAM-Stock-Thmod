.class public abstract Lcom/sonyericsson/android/hardware/FaceDetect;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;,
        Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;,
        Lcom/sonyericsson/android/hardware/FaceDetect$Rect;,
        Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;,
        Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;,
        Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG:Z = false

.field public static final DEFAULT_FACE_POSITION_HEIGHT:I = 0x0

.field public static final DEFAULT_FACE_POSITION_WIDTH:I = 0x0

.field public static final DEFAULT_FACE_POSITION_X:I = 0x0

.field public static final DEFAULT_FACE_POSITION_Y:I = 0x0

.field public static final FACEDETECT_0DEGRREES:I = 0x0

.field public static final FACEDETECT_180DEGRREES:I = 0x2

.field public static final FACEDETECT_270DEGRREES:I = 0x3

.field public static final FACEDETECT_90DEGRREES:I = 0x1

.field private static final FACEDETECT_ERRORCB:I = 0x0

.field public static final FACEDETECT_FAILED_ERROR:I = -0x7ffffffd

.field public static final FACEDETECT_MEM_ERROR:I = -0x7fffffff

.field public static final FACEDETECT_NO_ERROR:I = 0x0

.field public static final FACEDETECT_PARAM_ERROR:I = 0x2

.field private static final FACEDETECT_SEARCHFACECB:I = 0x1

.field public static final FEATURE_VECTOR_SIZE:I = 0x424

.field private static final TAG:Ljava/lang/String; = "FaceDetect"


# instance fields
.field protected mErrorCallback:Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;

.field protected mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

.field protected mSearchFaceCallback:Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;

.field protected mStopFlg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "facedetect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/hardware/FaceDetect;->mStopFlg:Z

    .line 153
    iput-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetect;->mSearchFaceCallback:Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;

    .line 154
    iput-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetect;->mErrorCallback:Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;

    .line 155
    iput-object v1, p0, Lcom/sonyericsson/android/hardware/FaceDetect;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/android/hardware/FaceDetect;->createEventHandler()Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/hardware/FaceDetect;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    .line 161
    return-void
.end method

.method private native nativeSetErrorCallback()V
.end method

.method private native nativeSetSearchFaceCallback()V
.end method

.method private native nativeSetSmileMode(Z)V
.end method

.method private native nativeStart()I
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
    const-string v4, "FaceDetect"

    .line 318
    if-nez p0, :cond_1

    .line 319
    const-string v3, "FaceDetect"

    const-string v3, "postEvebtFromNative() : ref is NULL"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 323
    .restart local p0
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/hardware/FaceDetect;

    .line 325
    .local v0, facedetect:Lcom/sonyericsson/android/hardware/FaceDetect;
    if-nez v0, :cond_2

    .line 326
    const-string v3, "FaceDetect"

    const-string v3, "postEventFromNative() : facedetect = null"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_2
    new-instance v2, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;

    invoke-direct {v2}, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;-><init>()V

    .line 331
    .local v2, objpack:Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;
    iput-object p4, v2, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->cb:Ljava/lang/Object;

    .line 332
    iput-object p5, v2, Lcom/sonyericsson/android/hardware/FaceDetect$AsyncObjPack;->data:Ljava/lang/Object;

    .line 334
    iget-object v3, v0, Lcom/sonyericsson/android/hardware/FaceDetect;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, v0, Lcom/sonyericsson/android/hardware/FaceDetect;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 344
    .local v1, m:Landroid/os/Message;
    iget-object v3, v0, Lcom/sonyericsson/android/hardware/FaceDetect;->mEventHandler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method abstract close()V
.end method

.method protected createEventHandler()Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    .locals 5

    .prologue
    .line 277
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .local v2, looper:Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 278
    new-instance v1, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;-><init>(Lcom/sonyericsson/android/hardware/FaceDetect;Landroid/os/Looper;)V

    .line 288
    .end local v2           #looper:Landroid/os/Looper;
    .local v1, handler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    :goto_0
    return-object v1

    .line 279
    .end local v1           #handler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    .restart local v2       #looper:Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 280
    new-instance v1, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;-><init>(Lcom/sonyericsson/android/hardware/FaceDetect;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #handler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    goto :goto_0

    .line 282
    .end local v1           #handler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #handler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    goto :goto_0

    .line 284
    .end local v1           #handler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    .end local v2           #looper:Landroid/os/Looper;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 285
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FaceDetect"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v1, 0x0

    .restart local v1       #handler:Lcom/sonyericsson/android/hardware/FaceDetect$EventHandler;
    goto :goto_0
.end method

.method protected final native nativeDestructor()V
.end method

.method protected native nativeStop()V
.end method

.method public setErrorCallback(Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetect;->mErrorCallback:Lcom/sonyericsson/android/hardware/FaceDetect$ErrorCallback;

    .line 215
    return-void
.end method

.method public setSearchFaceCallback(Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetect;->mSearchFaceCallback:Lcom/sonyericsson/android/hardware/FaceDetect$SearchFaceCallback;

    .line 236
    invoke-direct {p0}, Lcom/sonyericsson/android/hardware/FaceDetect;->nativeSetSearchFaceCallback()V

    .line 237
    return-void
.end method

.method public setSmileMode(Z)V
    .locals 0
    .parameter "smileMode"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/hardware/FaceDetect;->nativeSetSmileMode(Z)V

    .line 258
    return-void
.end method

.method public start()I
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/sonyericsson/android/hardware/FaceDetect;->nativeStart()I

    move-result v0

    .line 181
    .local v0, ret:I
    return v0
.end method

.method public abstract stop()V
.end method
