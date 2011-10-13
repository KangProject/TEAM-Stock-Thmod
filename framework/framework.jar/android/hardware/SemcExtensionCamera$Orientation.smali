.class public Landroid/hardware/SemcExtensionCamera$Orientation;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Orientation"
.end annotation


# static fields
.field public static final LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final PORTRAIT:Ljava/lang/String; = "portrait"


# instance fields
.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$Orientation;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
