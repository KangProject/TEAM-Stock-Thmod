.class Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickApplicationAdapter"
.end annotation


# instance fields
.field mAppList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1972
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1973
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->mAppList:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1972
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1972
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->sortApps()V

    return-void
.end method

.method private sortApps()V
    .locals 2

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->mAppList:Ljava/util/LinkedList;

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;-><init>(Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2004
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->mAppList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->mAppList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2011
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 2015
    if-nez p2, :cond_0

    .line 2016
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030003

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2020
    :cond_0
    move-object v3, p2

    .line 2021
    .local v3, itemView:Landroid/view/View;
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->mAppList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 2022
    .local v2, info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-static {}, Lcom/sonyericsson/home/HomeActivity;->access$4700()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2024
    const v5, 0x7f0c000e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2025
    .local v1, iconView:Landroid/widget/ImageView;
    const v5, 0x7f0c000f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2027
    .local v4, labelView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v5}, Lcom/sonyericsson/home/HomeActivity;->access$4600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v0

    .line 2028
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v0, :cond_1

    .line 2029
    iget-object v5, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2030
    iget-object v5, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2046
    :goto_0
    return-object v3

    .line 2032
    :cond_1
    const v5, 0x7f02000b

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2033
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2034
    iget-object v5, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v5}, Lcom/sonyericsson/home/HomeActivity;->access$4600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$3;

    invoke-direct {v6, p0, v3, v1, v4}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$3;-><init>(Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v2, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->mAppList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1981
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$1;-><init>(Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 1988
    return-void
.end method
