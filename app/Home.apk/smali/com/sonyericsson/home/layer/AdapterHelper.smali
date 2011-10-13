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
.field private final mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mFolderDrawableCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderDrawables:[Landroid/graphics/drawable/Drawable;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/sonyericsson/util/ViewTag;->createNextTag()I

    move-result v0

    sput v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 3
    .parameter "context"
    .parameter "resourceLoader"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mFolderDrawableCallbacks:Ljava/util/LinkedList;

    .line 87
    iput-object p2, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 90
    new-instance v0, Lcom/sonyericsson/home/layer/AdapterHelper$1;

    const-string v1, "Folder drawables"

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/home/layer/AdapterHelper$1;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Ljava/lang/String;Landroid/content/Context;)V

    .line 118
    .local v0, folderDrawableDecodeTask:Lcom/sonyericsson/util/Worker$Task;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/AdapterHelper;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mFolderDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/AdapterHelper;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mFolderDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/AdapterHelper;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mFolderDrawableCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/home/layer/AdapterHelper;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mFolderDrawableCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    return v0
.end method

.method public static getAdvWidgetInfoView(Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;
    .locals 2
    .parameter "advWidgetManager"
    .parameter "advWidgetInfo"

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetView(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, advWidgetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 239
    sget v1, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 241
    :cond_0
    return-object v0
.end method

.method public static getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "view"

    .prologue
    .line 286
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
    .line 228
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/WidgetInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/widget/WidgetManager;->getWidgetView(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, widgetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 230
    sget v1, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 232
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "activityInfo"
    .parameter "convertView"

    .prologue
    const/4 v6, 0x0

    .line 153
    if-nez p2, :cond_0

    .line 154
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030007

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 157
    :cond_0
    move-object v2, p2

    .line 158
    .local v2, itemView:Landroid/view/View;
    sget v4, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v2, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 160
    const v4, 0x7f0c0022

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 161
    .local v1, iconView:Landroid/widget/ImageView;
    const v4, 0x7f0c0023

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .local v3, labelView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v0

    .line 165
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v0, :cond_1

    .line 166
    iget-object v4, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v4, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_0
    return-object v2

    .line 169
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v5, Lcom/sonyericsson/home/layer/AdapterHelper$2;

    invoke-direct {v5, p0, v2, v1, v3}, Lcom/sonyericsson/home/layer/AdapterHelper$2;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v4, p1, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method

.method public getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "infoGroup"
    .parameter "convertView"

    .prologue
    .line 252
    if-nez p2, :cond_0

    .line 253
    iget-object v3, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 256
    :cond_0
    move-object v1, p2

    .line 257
    .local v1, infoView:Landroid/view/View;
    sget v3, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v1, v3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 259
    const v3, 0x7f0c0022

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 260
    .local v0, iconView:Landroid/widget/ImageView;
    const v3, 0x7f0c0023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 262
    .local v2, labelView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v3, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mFolderDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mFolderDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getIcon()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :goto_0
    return-object v1

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mFolderDrawableCallbacks:Ljava/util/LinkedList;

    new-instance v4, Lcom/sonyericsson/home/layer/AdapterHelper$4;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/sonyericsson/home/layer/AdapterHelper$4;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getInfoViewType(Lcom/sonyericsson/home/data/Info;)I
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 130
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v0, :cond_0

    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 132
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v0, :cond_1

    move v0, v1

    .line 133
    goto :goto_0

    .line 134
    :cond_1
    instance-of v0, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v0, :cond_2

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    instance-of v0, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v0, :cond_3

    move v0, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_3
    instance-of v0, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v0, :cond_4

    move v0, v2

    .line 139
    goto :goto_0

    .line 142
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "shortcutInfo"
    .parameter "convertView"

    .prologue
    .line 194
    if-nez p2, :cond_0

    .line 195
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 198
    :cond_0
    move-object v2, p2

    .line 199
    .local v2, itemView:Landroid/view/View;
    sget v4, Lcom/sonyericsson/home/layer/AdapterHelper;->INFO_TAG:I

    invoke-virtual {v2, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 201
    const v4, 0x7f0c0022

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 202
    .local v1, iconView:Landroid/widget/ImageView;
    const v4, 0x7f0c0023

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 204
    .local v3, labelView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v0

    .line 206
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v0, :cond_1

    .line 207
    iget-object v4, v0, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-object p2

    .line 209
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper;->mResourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    new-instance v5, Lcom/sonyericsson/home/layer/AdapterHelper$3;

    invoke-direct {v5, p0, v2, v1}, Lcom/sonyericsson/home/layer/AdapterHelper$3;-><init>(Lcom/sonyericsson/home/layer/AdapterHelper;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v4, p1, v5}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->registerCacheCallback(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;)V

    goto :goto_0
.end method
