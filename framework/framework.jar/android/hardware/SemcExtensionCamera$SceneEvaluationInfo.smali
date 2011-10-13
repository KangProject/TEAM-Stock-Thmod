.class public Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SceneEvaluationInfo"
.end annotation


# instance fields
.field public aelevel:I

.field public face_num:I

.field public histogram:Landroid/hardware/SemcExtensionCamera$HistogramInfo;

.field public scene:I

.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;

.field public whitebalance:Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;

.field public yuvcnt1:I

.field public yuvcnt2:I


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 1
    .parameter

    .prologue
    .line 1263
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    new-instance v0, Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;

    invoke-direct {v0, p1}, Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;-><init>(Landroid/hardware/SemcExtensionCamera;)V

    iput-object v0, p0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->whitebalance:Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;

    .line 1268
    new-instance v0, Landroid/hardware/SemcExtensionCamera$HistogramInfo;

    invoke-direct {v0, p1}, Landroid/hardware/SemcExtensionCamera$HistogramInfo;-><init>(Landroid/hardware/SemcExtensionCamera;)V

    iput-object v0, p0, Landroid/hardware/SemcExtensionCamera$SceneEvaluationInfo;->histogram:Landroid/hardware/SemcExtensionCamera$HistogramInfo;

    .line 1269
    return-void
.end method
