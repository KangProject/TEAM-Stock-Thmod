.class public Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoFocusInfo"
.end annotation


# instance fields
.field public af_failure_state:I

.field public af_state:I

.field public multi_focus_state:I

.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1205
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$AutoFocusInfo;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    return-void
.end method
