.class public Lcom/sonyericsson/home/widget/HomeAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "HomeAppWidgetHostView.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/widget/HomeAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/home/widget/HomeAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
