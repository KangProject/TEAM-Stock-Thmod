.class public Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppTrayAdapter.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;
    }
.end annotation


# instance fields
.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

.field private mDoMirror:Z

.field private mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mGridRect:Lcom/sonyericsson/grid/GridRect;

.field private mLandscape:Z

.field private mLocationArray:[I

.field private mPaneOffset:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/grid/Grid;)V
    .locals 2
    .parameter "appTrayModelManager"
    .parameter "adapterHelper"
    .parameter "grid"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mLocationArray:[I

    .line 64
    new-instance v0, Lcom/sonyericsson/grid/GridRect;

    invoke-direct {v0}, Lcom/sonyericsson/grid/GridRect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 89
    iput-object p3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    new-instance v1, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$1;-><init>(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->registerObserver(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$AppTrayModelObserver;)V

    .line 96
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/home/data/ActivityInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getActivityInfo(I)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->getItem(I)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getActivityInfo(I)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/ActivityInfo;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 5
    .parameter "position"
    .parameter "outLocation"

    .prologue
    const/4 v4, 0x1

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mLocationArray:[I

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getItemPaneLocation(I[I)V

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mLocationArray:[I

    aget v0, v1, v4

    .line 150
    .local v0, paneLocation:I
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mDoMirror:Z

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    rem-int v2, v0, v2

    iput v2, v1, Lcom/sonyericsson/grid/GridRect;->col:I

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    div-int v2, v0, v2

    iput v2, v1, Lcom/sonyericsson/grid/GridRect;->row:I

    .line 157
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iput v4, v1, Lcom/sonyericsson/grid/GridRect;->colSpan:I

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iput v4, v1, Lcom/sonyericsson/grid/GridRect;->rowSpan:I

    .line 160
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v3, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mLocationArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mPaneOffset:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 162
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGridRect:Lcom/sonyericsson/grid/GridRect;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v2}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    invoke-virtual {v3}, Lcom/sonyericsson/grid/Grid;->getCols()I

    move-result v3

    rem-int v3, v0, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    iput v2, v1, Lcom/sonyericsson/grid/GridRect;->col:I

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAppTrayModelManager:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getNumberOfPanes()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->getItem(I)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v0

    .line 112
    .local v0, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    if-nez v0, :cond_0

    .line 113
    const/4 v3, 0x0

    .line 123
    :goto_0
    return-object v3

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-virtual {v3, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, label:Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mLandscape:Z

    if-nez v3, :cond_1

    .line 119
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 120
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    move-object v3, v2

    .line 123
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;->isEnabled(I)Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInteractive(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public offsetAllPanes(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 174
    iput p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mPaneOffset:I

    .line 175
    return-void
.end method

.method public setDoMirror(Z)V
    .locals 0
    .parameter "shouldMirror"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mDoMirror:Z

    .line 179
    return-void
.end method

.method public setEnabledChecker(Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;)V
    .locals 0
    .parameter "enabledChecker"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mEnabledChecker:Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter$AdaptorEnabledChecker;

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method

.method public setLandscapeMode(Z)V
    .locals 0
    .parameter "landscape"

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayAdapter;->mLandscape:Z

    .line 200
    return-void
.end method
