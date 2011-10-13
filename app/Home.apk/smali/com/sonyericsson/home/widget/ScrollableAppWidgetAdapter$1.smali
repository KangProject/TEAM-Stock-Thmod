.class Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;
.super Landroid/database/ContentObserver;
.source "ScrollableAppWidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;-><init>(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;->this$0:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$1;->this$0:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;

    invoke-static {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->access$200(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;)V

    .line 204
    return-void
.end method
