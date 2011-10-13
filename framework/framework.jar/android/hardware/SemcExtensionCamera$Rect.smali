.class public Landroid/hardware/SemcExtensionCamera$Rect;
.super Ljava/lang/Object;
.source "SemcExtensionCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SemcExtensionCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rect"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Landroid/hardware/SemcExtensionCamera;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1107
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$Rect;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SemcExtensionCamera;IIII)V
    .locals 0
    .parameter
    .parameter "inputX"
    .parameter "inputY"
    .parameter "inputWidth"
    .parameter "inputHeight"

    .prologue
    .line 1122
    iput-object p1, p0, Landroid/hardware/SemcExtensionCamera$Rect;->this$0:Landroid/hardware/SemcExtensionCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput p2, p0, Landroid/hardware/SemcExtensionCamera$Rect;->x:I

    .line 1129
    iput p3, p0, Landroid/hardware/SemcExtensionCamera$Rect;->y:I

    .line 1130
    iput p4, p0, Landroid/hardware/SemcExtensionCamera$Rect;->width:I

    .line 1131
    iput p5, p0, Landroid/hardware/SemcExtensionCamera$Rect;->height:I

    .line 1132
    return-void
.end method


# virtual methods
.method public setData(IIII)V
    .locals 0
    .parameter "inputX"
    .parameter "inputY"
    .parameter "inputWidth"
    .parameter "inputHeight"

    .prologue
    .line 1153
    iput p1, p0, Landroid/hardware/SemcExtensionCamera$Rect;->x:I

    .line 1154
    iput p2, p0, Landroid/hardware/SemcExtensionCamera$Rect;->y:I

    .line 1155
    iput p3, p0, Landroid/hardware/SemcExtensionCamera$Rect;->width:I

    .line 1156
    iput p4, p0, Landroid/hardware/SemcExtensionCamera$Rect;->height:I

    .line 1157
    return-void
.end method
