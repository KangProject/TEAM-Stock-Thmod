.class Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/widget/WidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetCache"
.end annotation


# instance fields
.field info:Landroid/appwidget/AppWidgetProviderInfo;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/widget/WidgetManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;-><init>()V

    return-void
.end method
