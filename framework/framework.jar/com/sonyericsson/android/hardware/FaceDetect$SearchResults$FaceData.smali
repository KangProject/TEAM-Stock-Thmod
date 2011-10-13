.class public Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults$FaceData;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceData"
.end annotation


# instance fields
.field public position:Lcom/sonyericsson/android/hardware/FaceDetect$Rect;

.field public smileScore:I

.field final synthetic this$1:Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults$FaceData;->this$1:Lcom/sonyericsson/android/hardware/FaceDetect$SearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
