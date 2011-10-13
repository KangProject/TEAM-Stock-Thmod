.class public Lcom/sonyericsson/android/hardware/FaceDetectPicture$RgbBinaryInfo;
.super Ljava/lang/Object;
.source "FaceDetectPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetectPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RgbBinaryInfo"
.end annotation


# instance fields
.field public data:[B

.field public height:S

.field public rotationType:I

.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

.field public width:S


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetectPicture;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$RgbBinaryInfo;->this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$RgbBinaryInfo;->rotationType:I

    return-void
.end method
