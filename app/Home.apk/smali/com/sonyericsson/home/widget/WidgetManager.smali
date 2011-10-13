.class public Lcom/sonyericsson/home/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/widget/WidgetManager$1;,
        Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    }
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mCellHeight:I

.field private final mCellWidth:I

.field private final mContext:Landroid/content/Context;

.field private final mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/appwidget/AppWidgetHost;)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetHost"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 57
    iput-object p3, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    .line 60
    new-instance v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-direct {v0, p1, p0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/widget/WidgetManager;)V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    .line 61
    return-void
.end method

.method private getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    .locals 5
    .parameter "appWidgetId"

    .prologue
    const/4 v4, 0x0

    .line 182
    if-nez p1, :cond_0

    move-object v2, v4

    .line 198
    :goto_0
    return-object v2

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    .line 188
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-nez v0, :cond_1

    .line 189
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 191
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_1

    .line 192
    new-instance v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    .end local v0           #cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    invoke-direct {v0, v4}, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;-><init>(Lcom/sonyericsson/home/widget/WidgetManager$1;)V

    .line 193
    .restart local v0       #cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    iput-object v1, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 194
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    move-object v2, v0

    .line 198
    goto :goto_0
.end method

.method public static getWidgetId(Landroid/content/Intent;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 86
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteAppWidgetId(I)V
    .locals 2
    .parameter "appWidgetId"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->deleteWidgetId(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .parameter "appWidgetId"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 169
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPickWidgetIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, customInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 76
    .local v0, appWidgetId:I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v2, "customInfo"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 80
    const-string v2, "customExtras"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 82
    return-object v1
.end method

.method public getWidgetConfigureIntent(I)Landroid/content/Intent;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 137
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v2, v1

    .line 143
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWidgetHeight(I)I
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 158
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 160
    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    iget v3, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 161
    .local v1, smallerSize:I
    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    iget-object v3, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    add-int/2addr v3, v1

    div-int/2addr v3, v1

    mul-int/2addr v2, v3

    .line 163
    .end local v1           #smallerSize:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 2
    .parameter "appWidgetId"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 128
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-nez v0, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 132
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    goto :goto_0
.end method

.method public getWidgetView(I)Landroid/view/View;
    .locals 6
    .parameter "appWidgetId"

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 101
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-nez v0, :cond_0

    move-object v2, v5

    .line 122
    :goto_0
    return-object v2

    .line 105
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->view:Landroid/view/View;

    if-nez v2, :cond_1

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, v3, p1, v4}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->view:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    iget-object v3, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, p1, v3}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->sendAppWidgetReadyBroadcast(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 122
    :cond_1
    iget-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->view:Landroid/view/View;

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 112
    .local v1, throwable:Ljava/lang/Throwable;
    const-string v2, "AppWidgetHost"

    const-string v3, "createView"

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    iget-object v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000e

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->view:Landroid/view/View;

    goto :goto_1
.end method

.method public getWidgetWidth(I)I
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/widget/WidgetManager;->getCachedWidget(I)Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;

    move-result-object v0

    .line 148
    .local v0, cachedWidget:Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;
    if-eqz v0, :cond_0

    .line 150
    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    iget v3, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 151
    .local v1, smallerSize:I
    iget v2, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mCellWidth:I

    iget-object v3, v0, Lcom/sonyericsson/home/widget/WidgetManager$WidgetCache;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    add-int/2addr v3, v1

    div-int/2addr v3, v1

    mul-int/2addr v2, v3

    .line 153
    .end local v1           #smallerSize:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/home/widget/WidgetManager;->stopListening()V

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->onDestroy()V

    .line 179
    return-void
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->startListening()V

    .line 66
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/home/widget/WidgetManager;->mScrollableAppWidgetManager:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->stoplistening()V

    .line 71
    return-void
.end method
