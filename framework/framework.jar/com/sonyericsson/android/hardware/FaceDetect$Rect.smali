.class public Lcom/sonyericsson/android/hardware/FaceDetect$Rect;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/hardware/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rect"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/hardware/FaceDetect;IIII)V
    .locals 0
    .parameter
    .parameter "inputX"
    .parameter "inputY"
    .parameter "inputWidth"
    .parameter "inputHeight"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->this$0:Lcom/sonyericsson/android/hardware/FaceDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p2, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->x:I

    .line 466
    iput p3, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->y:I

    .line 467
    iput p4, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->width:I

    .line 468
    iput p5, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->height:I

    .line 469
    return-void
.end method


# virtual methods
.method public final setData(IIII)V
    .locals 0
    .parameter "inputX"
    .parameter "inputY"
    .parameter "inputWidth"
    .parameter "inputHeight"

    .prologue
    .line 491
    iput p1, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->x:I

    .line 492
    iput p2, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->y:I

    .line 493
    iput p3, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->width:I

    .line 494
    iput p4, p0, Lcom/sonyericsson/android/hardware/FaceDetect$Rect;->height:I

    .line 495
    return-void
.end method
