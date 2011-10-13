.class public Landroid/hardware/SemcExtensionCamera$TallyLight;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TallyLight"
.end annotation


# static fields
.field public static final FEEBLE:Ljava/lang/String; = "feeble"

.field public static final OFF:Ljava/lang/String; = "off"

.field public static final STRONG:Ljava/lang/String; = "torch"


# instance fields
.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$TallyLight;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
