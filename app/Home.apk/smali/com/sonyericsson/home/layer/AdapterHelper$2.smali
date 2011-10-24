.class Lcom/sonyericsson/home/layer/AdapterHelper$2;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

.field final synthetic val$iconView:Landroid/widget/ImageView;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$itemView:Landroid/view/View;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$iconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .parameter "info"
    .parameter "icon"
    .parameter "label"
    .parameter "badgeMessage"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$itemView:Landroid/view/View;

    invoke-static {}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$2;->val$itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 209
    :cond_0
    return-void
.end method
