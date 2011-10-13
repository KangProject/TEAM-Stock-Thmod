.class public Lcom/sonyericsson/home/layer/stage/StageAdapter;
.super Landroid/widget/BaseAdapter;
.source "StageAdapter.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneAdapter;


# instance fields
.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/stage/StageModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;)V
    .locals 0
    .parameter "stageModelManager"
    .parameter "adapterHelper"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->get(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 2
    .parameter "position"
    .parameter "outLocation"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 106
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v1, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x1

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 72
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    if-nez v0, :cond_0

    .line 73
    const/4 v3, 0x0

    .line 94
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :goto_0
    return-object v3

    .line 76
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    const/4 v1, 0x0

    .line 77
    .local v1, itemView:Landroid/view/View;
    instance-of v3, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_2

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 89
    :goto_1
    const v3, 0x7f0c0023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    .local v2, label:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 91
    const/high16 v3, 0x4130

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    move-object v3, v1

    .line 94
    goto :goto_0

    .line 79
    .end local v2           #label:Landroid/widget/TextView;
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    instance-of v3, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v3, :cond_3

    .line 80
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 81
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_3
    instance-of v3, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v3, :cond_4

    .line 82
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 83
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_4
    instance-of v3, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v3, :cond_5

    .line 84
    check-cast v0, Lcom/sonyericsson/home/layer/HintInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintInfo;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 86
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method
