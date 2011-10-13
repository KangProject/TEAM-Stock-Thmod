.class public Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WhiteBalanceInfo"
.end annotation


# instance fields
.field public bgain_value:I

.field public rgain_value:I

.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1233
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$WhiteBalanceInfo;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    return-void
.end method
