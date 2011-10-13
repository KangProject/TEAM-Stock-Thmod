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

.field location:Lcom/sonyericsson/grid/GridLocation;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/data/AdvWidgetInfo;Lcom/sonyericsson/grid/GridLocation;Lcom/sonyericsson/home/widget/OnWidgetConfigured;)V
    .locals 0
    .parameter "info"
    .parameter "location"
    .parameter "callback"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->info:Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .line 67
    iput-object p2, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->location:Lcom/sonyericsson/grid/GridLocation;

    .line 68
    iput-object p3, p0, Lcom/sonyericsson/home/widget/AdvWidgetManager$PendingWidgetInfo;->callback:Lcom/sonyericsson/home/widget/OnWidgetConfigured;

    .line 69
    return-void
.end method
