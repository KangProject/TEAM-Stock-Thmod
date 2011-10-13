.class Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;
.super Ljava/lang/Object;
.source "AdvWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/widget/AdvWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingWidgetInfo"
.end annotation


# instance fields
.field callback:Lcom/sonyericsson/home/widget/OnWidgetConfigured;

.field info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

.field location:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/data/AdvWidgetInfo;Landroid/graphics/Point;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V
    .locals 0
    .parameter "info"
    .parameter "location"
    .parameter "callback"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 64
    iput-object p2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->location:Landroid/graphics/Point;

    .line 65
    iput-object p3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->callback:Lcom/sonyericsson/home/widget/OnWidgetConfigured;

    .line 66
    return-void
.end method
