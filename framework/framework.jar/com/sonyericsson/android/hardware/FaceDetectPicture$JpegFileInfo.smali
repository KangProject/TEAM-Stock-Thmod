.class public Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;
.super Ljava/lang/Object;
.source "FaceDetectPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetectPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JpegFileInfo"
.end annotation


# instance fields
.field public pathName:Ljava/lang/String;

.field public rotationType:I

.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetectPicture;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;->this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$JpegFileInfo;->rotationType:I

    return-void
.end method
