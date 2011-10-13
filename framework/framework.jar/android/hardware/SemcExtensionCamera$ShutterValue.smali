.class public Landroid/hardware/SemcExtensionCamera$ShutterValue;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShutterValue"
.end annotation


# instance fields
.field public kind:I

.field public sound_file:Ljava/lang/String;

.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1193
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$ShutterValue;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    return-void
.end method
