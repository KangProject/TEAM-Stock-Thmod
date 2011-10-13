.class public Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;
.super Ljava/lang/Object;
.source "FaceDetectPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetectPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacialMetadataResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults$FaceData;
    }
.end annotation


# instance fields
.field public faceData:[Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults$FaceData;

.field public faceNum:I

.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetectPicture;)V
    .locals 0
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$FacialMetadataResults;->this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    return-void
.end method
