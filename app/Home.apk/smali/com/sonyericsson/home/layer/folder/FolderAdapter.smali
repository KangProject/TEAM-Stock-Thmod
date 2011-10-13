.class public Lcom/sonyericsson/home/layer/folder/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneAdapter;


# instance fields
.field private mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

.field private mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/layer/folder/FolderModelManager;)V
    .locals 0
    .parameter "context"
    .parameter "resourceLoader"
    .parameter "adapterHelper"
    .parameter "modelManager"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p3, p0, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    .line 39
    iput-object p4, p0, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->get(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->getUniqueId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 76
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoViewType(Lcom/sonyericsson/home/data/Info;)I

    move-result v1

    return v1
.end method

.method public getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V
    .locals 1
    .parameter "position"
    .parameter "outPlacement"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getLocation(ILcom/sonyericsson/paneview/PaneLocation;)V

    .line 97
    return-void
.end method

.method public getNumberOfPanes()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 57
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    if-nez v0, :cond_0

    .line 58
    const/4 v2, 0x0

    .line 70
    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    :goto_0
    return-object v2

    .line 61
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    const/4 v1, 0x0

    .line 62
    .local v1, infoView:Landroid/view/View;
    instance-of v2, v0, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getActivityInfoView(Lcom/sonyericsson/home/data/ActivityInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 70
    goto :goto_0

    .line 64
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_1
    instance-of v2, v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v2, :cond_2

    .line 65
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->mAdapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/Info;
    invoke-virtual {v2, v0, p2}, Lcom/sonyericsson/home/layer/AdapterHelper;->getShortcutInfoView(Lcom/sonyericsson/home/data/ShortcutInfo;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 67
    .restart local v0       #info:Lcom/sonyericsson/home/data/Info;
    :cond_2
    const-string v2, "FolderAdapter"

    const-string v3, "Info not allowed in folder"

    invoke-static {v2, v3}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/Info;->isEnabled()Z

    move-result v0

    return v0
.end method
