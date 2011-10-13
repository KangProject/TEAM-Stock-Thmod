.class Lcom/sonyericsson/home/layer/AdapterHelper$4;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

.field final synthetic val$iconView:Landroid/widget/ImageView;

.field final synthetic val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

.field final synthetic val$infoView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->val$infoView:Landroid/view/View;

    iput-object p4, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->val$iconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->val$infoView:Landroid/view/View;

    invoke-static {}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->val$iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$000(Lcom/sonyericsson/home/layer/AdapterHelper;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$4;->val$infoGroup:Lcom/sonyericsson/home/data/InfoGroup;

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/InfoGroup;->getIcon()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_0
    return-void
.end method
