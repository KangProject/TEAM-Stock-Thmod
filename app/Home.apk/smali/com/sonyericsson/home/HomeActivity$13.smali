.class Lcom/sonyericsson/home/HomeActivity$13;
.super Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;-><init>()V

    return-void
.end method


# virtual methods
.method public addFullScreenEffect(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1753
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeActivity$13;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->onConfigured(Ljava/util/UUID;I)V

    .line 1763
    return-void
.end method

.method public removeFullScreenEffect(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$13;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4100(Lcom/sonyericsson/home/HomeActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1758
    return-void
.end method
