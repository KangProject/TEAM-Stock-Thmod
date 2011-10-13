.class public Lcom/sonyericsson/home/widget/HomeAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "HomeAppWidgetHost.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "hostId"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 33
    new-instance v0, Lcom/sonyericsson/home/widget/HomeAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/sonyericsson/home/widget/HomeAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
