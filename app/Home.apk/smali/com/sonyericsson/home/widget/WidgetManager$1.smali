.class Lcom/sonyericsson/home/widget/WidgetManager$1;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/widget/WidgetManager;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/widget/WidgetManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/widget/WidgetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/home/widget/WidgetManager$1;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .parameter "id"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$1;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager$1;->this$0:Lcom/sonyericsson/home/widget/WidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
