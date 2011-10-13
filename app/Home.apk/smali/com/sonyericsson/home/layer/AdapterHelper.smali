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
.field private mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private final mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/GlobalCustomizationManager;)V
    .locals 2
    .parameter "context"
    .parameter "resourceLoader"
    .parameter "globalCustomizationManager"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 84
    iput-object p3, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 87
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/AdapterHelper;)Lcom/sonyericsson/home/GlobalCustomizationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    return-object v0
.end method

.method public static getAdvWidgetInfoView(Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;
    .locals 2
    .parameter "advWidgetManager"
    .parameter "advWidgetInfo"

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, advWidgetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 225
    sget v1, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 227
    :cond_0
    return-object v0
.end method

.method public static getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "view"

    .prologue
    .line 276
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
    .line 214
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetView(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, widgetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 216
    sget v1, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 218
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "activityInfo"
    .parameter "convertView"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 121
    if-nez p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 125
    :cond_0
    move-object v2, p2

    .line 126
    .local v2, itemView:Landroid/view/View;
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 128
    const v0, 0x7f0e0028

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 129
    .local v3, iconView:Landroid/widget/ImageView;
    const v0, 0x7f0e0029

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/home/badge/BadgeView;

    .line 130
    .local v5, badgeView:Lcom/sonyericsson/home/badge/BadgeView;
    const v0, 0x7f0e002a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 132
    .local v4, labelView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v6

    .line 134
    .local v6, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v6, :cond_2

    .line 135
    iget-object v0, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, v6, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->badgeMessage:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/home/badge/BadgeView;->setText(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    .line 165
    :goto_0
    return-object v2

    .line 141
    :cond_1
    invoke-virtual {v5, v7}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v5, v7}, Lcom/sonyericsson/home/badge/BadgeView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->prioritizeResource(Lcom/sonyericsson/home/data/Info;)V

    .line 149
    iget-object v7, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v0, Lcom/sonyericsson/home/layer/AdapterHelper$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/AdapterHelper$1;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sonyericsson/home/badge/BadgeView;)V

    invoke-virtual {v7, p1, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "infoGroup"
    .parameter "convertView"

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 239
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 242
    :cond_0
    move-object v2, p2

    .line 243
    .local v2, infoView:Landroid/view/View;
    sget v4, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v2, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 245
    const v4, 0x7f0e0028

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 246
    .local v1, iconView:Landroid/widget/ImageView;
    const v4, 0x7f0e0029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, badgeView:Landroid/view/View;
    const v4, 0x7f0e002a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 249
    .local v3, labelView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-virtual {v4}, Lcom/sonyericsson/home/GlobalCustomizationManager;->isCustomizationAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getIcon()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/home/GlobalCustomizationManager;->getFolderIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :goto_0
    return-object v2

    .line 256
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    new-instance v5, Lcom/sonyericsson/home/layer/AdapterHelper$3;

    invoke-direct {v5, p0, p1, v2, v1}, Lcom/sonyericsson/home/layer/AdapterHelper$3;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/home/GlobalCustomizationManager;->addCustomizationCallback(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getInfoViewType(Lcom/sonyericsson/home/data/Info;)I
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 98
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 100
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v0, :cond_1

    move v0, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    instance-of v0, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v0, :cond_2

    move v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    instance-of v0, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v0, :cond_3

    move v0, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    instance-of v0, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v0, :cond_4

    move v0, v2

    .line 107
    goto :goto_0

    .line 110
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .parameter "shortcutInfo"
    .parameter "convertView"

    .prologue
    .line 176
    if-nez p2, :cond_0

    .line 177
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030011

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 180
    :cond_0
    move-object v3, p2

    .line 181
    .local v3, itemView:Landroid/view/View;
    sget v5, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v3, v5, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 183
    const v5, 0x7f0e0028

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 184
    .local v2, iconView:Landroid/widget/ImageView;
    const v5, 0x7f0e0029

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, badgeView:Landroid/view/View;
    const v5, 0x7f0e002a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 187
    .local v4, labelView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v1

    .line 189
    .local v1, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v1, :cond_1

    .line 190
    iget-object v5, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 209
    return-object p2

    .line 192
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->prioritizeResource(Lcom/sonyericsson/home/data/Info;)V

    .line 195
    iget-object v5, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v6, Lcom/sonyericsson/home/layer/AdapterHelper$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/sonyericsson/home/layer/AdapterHelper$2;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v5, p1, v6}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public unbindDrawables()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 284
    return-void
.end method
