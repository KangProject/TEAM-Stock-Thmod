.class public Landroid/hardware/SemcExtensionCamera$AfMode;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AfMode"
.end annotation


# static fields
.field public static final AREA:Ljava/lang/String; = "area"

.field public static final MULTI:Ljava/lang/String; = "multi"

.field public static final SINGLE:Ljava/lang/String; = "single"


# instance fields
.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$AfMode;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
