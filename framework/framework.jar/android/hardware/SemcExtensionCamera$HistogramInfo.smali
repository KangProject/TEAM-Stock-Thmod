.class public Landroid/hardware/SemcExtensionCamera$HistogramInfo;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistogramInfo"
.end annotation


# instance fields
.field public high_value:I

.field public low_value:I

.field public middle_value:I

.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1247
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$HistogramInfo;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    return-void
.end method
