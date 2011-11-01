.class public Lcom/sonyericsson/home/layer/stage/StageAdapter;
.super Landroid/widget/BaseAdapter;
.source "StageAdapter.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneAdapter;


# instance fields
.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mOrientationLandscape:Z

.field private mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/stage/StageModelManager;Lcom/sonyericsson/home/layer/AdapterHelper;Z)V
    .locals 0
    .parameter "stageModelManager"
    .parameter "adapterHelper"
    .parameter "orientationLandscape"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 59
    iput-boolean p3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mOrientationLandscape:Z

    .line 60
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "position"

    .prologue
    .line 67
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
    .line 71
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
    .line 112
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mStageModelManager:Lcom/sonyericsson/home/layer/stage/StageModelManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageModelManager;->getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 115
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v1, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x1

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x0

    iput v1, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/stage/StageAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 77
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    if-nez v0, :cond_0

    .line 78
    const/4 v3, 0x0

    .line 103
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :goto_0
    return-object v3

    .line 81
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    const/4 v1, 0x0

    .line 82
    .local v1, itemView:Landroid/view/View;
    instance-of v3, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_2

    .line 83
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 94
    :goto_1
    const v3, 0x7f0e002a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, label:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 96
    iget-boolean v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mOrientationLandscape:Z

    if-eqz v3, :cond_6

    .line 97
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_2
    move-object v3, v1

    .line 103
    goto :goto_0

    .line 84
    .end local v2           #label:Landroid/widget/TextView;
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    instance-of v3, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v3, :cond_3

    .line 85
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 86
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_3
    instance-of v3, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v3, :cond_4

    .line 87
    iget-object v3, p0, Lcom/sonyericsson/home/layer/stage/StageAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v3, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 88
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_4
    instance-of v3, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v3, :cond_5

    .line 89
    check-cast v0, Lcom/sonyericsson/home/layer/HintInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintInfo;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 91
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 99
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    .restart local v2       #label:Landroid/widget/TextView;
    :cond_6
    const/high16 v3, 0x4130

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public isInteractive(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method
