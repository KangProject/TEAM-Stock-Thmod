.class final Lcom/android/server/WindowManagerService$StartingData;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StartingData"
.end annotation


# instance fields
.field final icon:I

.field final labelRes:I

.field final nonLocalizedLabel:Ljava/lang/CharSequence;

.field final pkg:Ljava/lang/String;

.field final theme:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;II)V
    .registers 6
    .parameter "_pkg"
    .parameter "_theme"
    .parameter "_nonLocalizedLabel"
    .parameter "_labelRes"
    .parameter "_icon"

    .prologue
    .line 7762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7763
    iput-object p1, p0, Lcom/android/server/WindowManagerService$StartingData;->pkg:Ljava/lang/String;

    .line 7764
    iput p2, p0, Lcom/android/server/WindowManagerService$StartingData;->theme:I

    .line 7765
    iput-object p3, p0, Lcom/android/server/WindowManagerService$StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 7766
    iput p4, p0, Lcom/android/server/WindowManagerService$StartingData;->labelRes:I

    .line 7767
    iput p5, p0, Lcom/android/server/WindowManagerService$StartingData;->icon:I

    .line 7768
    return-void
.end method
