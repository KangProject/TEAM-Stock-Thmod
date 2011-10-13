.class public Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;
.super Landroid/widget/BaseAdapter;
.source "DesktopAdapter.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneAdapter;


# static fields
.field private static final DESKTOP_HINT_ITEM_VIEW_TYPE:I = 0x1

.field private static final VIEW_TYPE_COUNT:I = 0x2


# instance fields
.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

.field private mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

.field private mGrid:Lcom/sonyericsson/grid/Grid;

.field private mLatestAddedPosition:I

.field private mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/grid/Grid;)V
    .locals 0
    .parameter "context"
    .parameter "desktopModelManager"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "widgetManager"
    .parameter "advancedWidgetManager"
    .parameter "grid"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    .line 59
    iput-object p5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    .line 60
    iput-object p6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    .line 61
    iput-object p4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 62
    iput-object p7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    .line 63
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->get(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 109
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v1, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v1, :cond_0

    .line 110
    const/4 v1, 0x1

    .line 112
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoViewType(Lcom/sonyericsson/home/data/Info;)I

    move-result v1

    goto :goto_0
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 4
    .parameter "position"
    .parameter "outLocation"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getLocation()Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v1

    .line 128
    .local v1, location:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mGrid:Lcom/sonyericsson/grid/Grid;

    iget-object v3, p2, Lcom/sonyericsson/paneview/PaneLocation;->drawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/grid/Grid;->calculateRect(Lcom/sonyericsson/grid/GridRect;Landroid/graphics/Rect;)V

    .line 129
    iget v2, v1, Lcom/sonyericsson/home/layer/desktop/DesktopRect;->pane:I

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->pane:I

    .line 130
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 131
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    instance-of v2, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x2

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    iget v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mLatestAddedPosition:I

    if-ne p1, v2, :cond_1

    .line 136
    const/4 v2, 0x1

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    goto :goto_0

    .line 139
    :cond_1
    const/4 v2, 0x0

    iput v2, p2, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    goto :goto_0
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mDesktopModelManager:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getNbrOfPanes()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 84
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    if-nez v0, :cond_0

    .line 85
    const/4 v2, 0x0

    .line 103
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :goto_0
    return-object v2

    .line 88
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    const/4 v1, 0x0

    .line 89
    .local v1, itemView:Landroid/view/View;
    instance-of v2, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    .line 103
    goto :goto_0

    .line 91
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    instance-of v2, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v2, :cond_3

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 93
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_3
    instance-of v2, v0, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v2, :cond_4

    .line 94
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoGroupView(Lcom/sonyericsson/home/data/InfoGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 95
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_4
    instance-of v2, v0, Lcom/sonyericsson/home/data/WidgetInfo;

    if-eqz v2, :cond_5

    .line 96
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mWidgetManager:Lcom/sonyericsson/home/widget/WidgetManager;

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-static {v2, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getWidgetInfoView(Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/data/WidgetInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 97
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_5
    instance-of v2, v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v2, :cond_6

    .line 98
    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mAdvWidgetManager:Lcom/sonyericsson/home/widget/AdvWidgetManager;

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-static {v2, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getAdvWidgetInfoView(Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/home/data/AdvWidgetInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 99
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_6
    instance-of v2, v0, Lcom/sonyericsson/home/layer/HintInfo;

    if-eqz v2, :cond_1

    .line 100
    check-cast v0, Lcom/sonyericsson/home/layer/HintInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/HintInfo;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->getItem(I)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->getInfo()Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setLatestAddedPosition(I)V
    .locals 0
    .parameter "latestAddedPosition"

    .prologue
    .line 66
    iput p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->mLatestAddedPosition:I

    .line 67
    return-void
.end method
