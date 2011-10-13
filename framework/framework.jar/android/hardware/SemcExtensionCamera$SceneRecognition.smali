.class public Landroid/hardware/SemcExtensionCamera$SceneRecognition;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SceneRecognition"
.end annotation


# static fields
.field public static final AGAINST:I = 0x5

.field public static final AGAINSTPORTRAIT:I = 0x6

.field public static final AUTO:I = 0x0

.field public static final LANDSCAPE:I = 0x2

.field public static final NIGHTPORTRAIT:I = 0x4

.field public static final NIGHTSCENE:I = 0x3

.field public static final PORTRAIT:I = 0x1

.field public static final WHITEBOARD:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$SceneRecognition;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
