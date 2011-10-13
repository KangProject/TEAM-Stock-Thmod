.class public Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults$FaceData;
    }
.end annotation


# instance fields
.field public faceData:[Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults$FaceData;

.field public faceNum:I

.field public indexOfSelectFace:I

.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetect;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    return-void
.end method
