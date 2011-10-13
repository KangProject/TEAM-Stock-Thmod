.class public Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringResults;
.super Ljava/lang/Object;
.source "FaceDetectPicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetectPicture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClusteringResults"
.end annotation


# instance fields
.field public clusteringResults:[I

.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetectPicture;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetectPicture$ClusteringResults;->this$0:Lcom/sonyericsson/android/hardware/FaceDetectPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
