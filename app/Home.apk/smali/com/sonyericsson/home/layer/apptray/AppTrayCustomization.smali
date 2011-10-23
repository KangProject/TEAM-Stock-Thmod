.class public Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;
.super Lcom/sonyericsson/home/customization/GenericCustomization;
.source "AppTrayCustomization.java"


# static fields
.field private static final APPTRAY_SORT_ALPHABETICAL:Ljava/lang/String; = "alpha"

.field private static final APPTRAY_SORT_FREE:Ljava/lang/String; = "free"

.field private static final APPTRAY_SORT_MOSTUSED:Ljava/lang/String; = "most-used"

.field private static final APPTRAY_SORT_RECENTLYINSTALLED:Ljava/lang/String; = "recent-inst"

.field private static final TAG:Ljava/lang/String; = "app-tray"


# instance fields
.field private mModel:Lcom/sonyericsson/util/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mSorting:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/util/PagedList;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "packageLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Lcom/sonyericsson/home/resourceload/PackageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    const-string v0, "app-tray"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mModel:Lcom/sonyericsson/util/PagedList;

    .line 58
    iput-object p3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 59
    return-void
.end method

.method private addItem(Lcom/sonyericsson/util/PagedList;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "position"
    .parameter "pane"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-direct {p0, p1, p3, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->find(Lcom/sonyericsson/util/PagedList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v0

    .line 91
    .local v0, info:Lcom/sonyericsson/home/data/ActivityInfo;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Lcom/sonyericsson/util/PagedList;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-direct {v0, p3, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .restart local v0       #info:Lcom/sonyericsson/home/data/ActivityInfo;
    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    .line 97
    invoke-direct {p0, p1, p5, p4, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->insert(Lcom/sonyericsson/util/PagedList;IILcom/sonyericsson/home/data/ActivityInfo;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1, v0}, Lcom/sonyericsson/util/PagedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private find(Lcom/sonyericsson/util/PagedList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/data/ActivityInfo;
    .locals 3
    .parameter
    .parameter "packageName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/home/data/ActivityInfo;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 105
    .local v1, info:Lcom/sonyericsson/home/data/ActivityInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 110
    .end local v1           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private insert(Lcom/sonyericsson/util/PagedList;IILcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 4
    .parameter
    .parameter "pageIndex"
    .parameter "pageLocation"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/util/PagedList",
            "<",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ">;II",
            "Lcom/sonyericsson/home/data/ActivityInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    const/4 v3, 0x1

    .line 130
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v2

    if-lt p3, v2, :cond_2

    .line 135
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->getMaxPageSize()I

    move-result v2

    sub-int p3, v2, v3

    .line 140
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v1

    .line 141
    .local v1, oldPageSize:I
    if-le p3, v1, :cond_4

    .line 143
    move v0, v1

    .local v0, ix:I
    :goto_2
    sub-int v2, p3, v3

    if-gt v0, v2, :cond_3

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 136
    .end local v0           #ix:I
    .end local v1           #oldPageSize:I
    :cond_2
    if-gez p3, :cond_1

    .line 137
    const/4 p3, 0x0

    goto :goto_1

    .line 146
    .restart local v0       #ix:I
    .restart local v1       #oldPageSize:I
    :cond_3
    invoke-virtual {p1, p2, p4}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    .line 150
    .end local v0           #ix:I
    :goto_3
    return-void

    .line 148
    :cond_4
    invoke-virtual {p1, p2, p3, p4}, Lcom/sonyericsson/util/PagedList;->insert(IILjava/lang/Object;)V

    goto :goto_3
.end method

.method private sortingToMode(Ljava/lang/String;)I
    .locals 2
    .parameter "sorting"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, mode:I
    if-eqz p1, :cond_0

    .line 116
    const-string v1, "free"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    const-string v1, "alpha"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    const-string v1, "most-used"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const/4 v0, 0x2

    goto :goto_0

    .line 122
    :cond_3
    const-string v1, "recent-inst"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getSortingMode()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mSorting:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->sortingToMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 8
    .parameter "groupType"
    .parameter "groupId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 64
    const-string v0, "activities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "package-name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    .local v3, packageName:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, name:Ljava/lang/String;
    const-string v0, "position"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 68
    .local v4, position:I
    const-string v0, "pane"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 69
    .local v5, pane:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mModel:Lcom/sonyericsson/util/PagedList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->addItem(Lcom/sonyericsson/util/PagedList;Ljava/lang/String;Ljava/lang/String;II)V

    .line 85
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #position:I
    .end local v5           #pane:I
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 71
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #position:I
    .restart local v5       #pane:I
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mIsMissingPackageAllowed:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addPendingPackage(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mModel:Lcom/sonyericsson/util/PagedList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->addItem(Lcom/sonyericsson/util/PagedList;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 77
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #position:I
    .end local v5           #pane:I
    :cond_2
    const-string v0, "app-tray"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const-string v0, "sorting-order"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 79
    .local v6, sorting:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 80
    iput-object v6, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayCustomization;->mSorting:Ljava/lang/String;

    goto :goto_0

    .end local v6           #sorting:Ljava/lang/String;
    :cond_3
    move v0, v7

    .line 83
    goto :goto_1
.end method
