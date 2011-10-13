.class public Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults$FaceData;
.super Ljava/lang/Object;
.source "FaceDetectPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceData"
.end annotation


# instance fields
.field public errorInformation:I

.field public featureVectore:[B

.field public position:Lcom/sonyericsson/android/hardware/FaceDetect$Rect;

.field public smileScore:I

.field final synthetic this$1:Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;

.field public yaw:F


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;)V
    .locals 0
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults$FaceData;->this$1:Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
