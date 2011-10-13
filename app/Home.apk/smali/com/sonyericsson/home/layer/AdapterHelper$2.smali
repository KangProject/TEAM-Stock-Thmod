.class Lcom/sonyericsson/home/layer/AdapterHelper$2;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

.field final synthetic val$iconView:Landroid/widget/ImageView;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$labelView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$itemView:Landroid/view/View;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$iconView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$labelView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "info"
    .parameter "icon"
    .parameter "label"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$itemView:Landroid/view/View;

    invoke-static {}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$labelView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 179
    :cond_0
    return-void
.end method
