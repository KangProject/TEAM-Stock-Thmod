.class public Landroid/hardware/SemcExtensionCamera$PreviewMode;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewMode"
.end annotation


# static fields
.field public static final SNAPSHOT:Ljava/lang/String; = "snapshot"

.field public static final VIDEO:Ljava/lang/String; = "video"


# instance fields
.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$PreviewMode;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
