.class public Lcom/sonyericsson/home/layer/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# static fields
.field private static final ICON_VIEW_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INFO_TAG:I = 0x0

.field public static final START_OF_USER_DEFINED_ITEM_TYPES:I = 0x1

.field public static final VIEW_TYPE_COUNT:I = 0x1


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private final mNonFolderIconPaddingTop:I

.field private final mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 2
    .parameter "context"
    .parameter "resourceLoader"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mNonFolderIconPaddingTop:I

    .line 88
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    return v0
.end method

.method public static getAdvWidgetInfoView(Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;
    .locals 2
    .parameter "advWidgetManager"
    .parameter "advWidgetInfo"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, advWidgetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 232
    sget v1, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 234
    :cond_0
    return-object v0
.end method

.method public static getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "view"

    .prologue
    .line 287
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/Info;

    return-object p0
.end method

.method public static getWidgetInfoView(Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/data/WidgetInfo;)Landroid/view/View;
    .locals 2
    .parameter "widgetManager"
    .parameter "widgetInfo"

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetView(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, widgetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 223
    sget v1, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 225
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;
    .locals 11
    .parameter "activityInfo"
    .parameter "convertView"

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 122
    if-nez p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030013

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    :cond_0
    move-object v2, p2

    .line 127
    .local v2, itemView:Landroid/view/View;
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mNonFolderIconPaddingTop:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v2, v0, v1, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    const v0, 0x7f0e003a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 133
    .local v3, iconView:Landroid/widget/ImageView;
    const v0, 0x7f0e003b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/home/badge/BadgeView;

    .line 134
    .local v5, badgeView:Lcom/sonyericsson/home/badge/BadgeView;
    const v0, 0x7f0e003c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 136
    .local v4, labelView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v6

    .line 138
    .local v6, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v6, :cond_2

    .line 139
    iget-object v0, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/home/badge/BadgeView;->setText(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    .line 169
    :goto_0
    return-object v2

    .line 145
    :cond_1
    invoke-virtual {v5, v9}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v5, v9}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->prioritizeResource(Lcom/sonyericsson/home/data/Info;)V

    .line 153
    iget-object v7, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v0, Lcom/sonyericsson/home/layer/AdapterHelper$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/AdapterHelper$1;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sonyericsson/home/badge/BadgeView;)V

    invoke-virtual {v7, p1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "infoGroup"
    .parameter "convertView"

    .prologue
    .line 245
    if-nez p2, :cond_0

    .line 246
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030013

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 249
    :cond_0
    move-object v3, p2

    .line 250
    .local v3, infoView:Landroid/view/View;
    sget v5, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v3, v5, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 252
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 255
    const v5, 0x7f0e003a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 256
    .local v2, iconView:Landroid/widget/ImageView;
    const v5, 0x7f0e003b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, badgeView:Landroid/view/View;
    const v5, 0x7f0e003c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 259
    .local v4, labelView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v1

    .line 263
    .local v1, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v1, :cond_1

    .line 264
    iget-object v5, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :goto_0
    return-object v3

    .line 266
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v6, Lcom/sonyericsson/home/layer/AdapterHelper$3;

    invoke-direct {v6, p0, v3, v2}, Lcom/sonyericsson/home/layer/AdapterHelper$3;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v5, p1, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public getInfoViewType(Lcom/sonyericsson/home/data/Info;)I
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 99
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 101
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v0, :cond_1

    move v0, v1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    instance-of v0, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v0, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    instance-of v0, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v0, :cond_3

    move v0, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    instance-of v0, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v0, :cond_4

    move v0, v2

    .line 108
    goto :goto_0

    .line 111
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "shortcutInfo"
    .parameter "convertView"

    .prologue
    .line 180
    if-nez p2, :cond_0

    .line 181
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030013

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 184
    :cond_0
    move-object v3, p2

    .line 185
    .local v3, itemView:Landroid/view/View;
    sget v5, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v3, v5, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 187
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mNonFolderIconPaddingTop:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    const v5, 0x7f0e003a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 191
    .local v2, iconView:Landroid/widget/ImageView;
    const v5, 0x7f0e003b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, badgeView:Landroid/view/View;
    const v5, 0x7f0e003c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 194
    .local v4, labelView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v1

    .line 196
    .local v1, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v1, :cond_1

    .line 197
    iget-object v5, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 216
    return-object p2

    .line 199
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->prioritizeResource(Lcom/sonyericsson/home/data/Info;)V

    .line 202
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v6, Lcom/sonyericsson/home/layer/AdapterHelper$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/sonyericsson/home/layer/AdapterHelper$2;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v5, p1, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public unbindDrawables()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 295
    return-void
.end method
