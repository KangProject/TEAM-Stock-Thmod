.class public Landroid/hardware/SemcExtensionCamera$LatitudeRef;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LatitudeRef"
.end annotation


# static fields
.field public static final NORTH:Ljava/lang/String; = "N"

.field public static final RESERVE:Ljava/lang/String; = "R"

.field public static final SOUTH:Ljava/lang/String; = "S"


# instance fields
.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$LatitudeRef;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
