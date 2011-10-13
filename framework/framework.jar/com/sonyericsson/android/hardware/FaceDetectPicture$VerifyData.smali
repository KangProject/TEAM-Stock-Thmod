.class public Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyData;
.super Ljava/lang/Object;
.source "FaceDetectPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetectPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyData"
.end annotation


# instance fields
.field public featureVector:[B

.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

.field public yaw:F


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetectPicture;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$VerifyData;->this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
