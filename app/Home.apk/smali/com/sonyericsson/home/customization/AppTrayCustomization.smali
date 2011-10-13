.class public Lcom/sonyericsson/home/customization/AppTrayCustomization;
.super Lcom/sonyericsson/home/customization/GenericCustomization;
.source "AppTrayCustomization.java"


# static fields
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
    .line 39
    .local p2, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    const-string v0, "app-tray"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/home/customization/AppTrayCustomization;->mModel:Lcom/sonyericsson/util/PagedList;

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/home/customization/AppTrayCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 42
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
    .line 68
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-direct {p0, p1, p3, p2}, Lcom/sonyericsson/home/customization/AppTrayCustomization;->find(Lcom/sonyericsson/util/PagedList;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v0

    .line 69
    .local v0, info:Lcom/sonyericsson/home/data/ActivityInfo;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Lcom/sonyericsson/util/PagedList;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v0           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-direct {v0, p3, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .restart local v0       #info:Lcom/sonyericsson/home/data/ActivityInfo;
    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    .line 75
    invoke-virtual {p0, p1, p5, p4, v0}, Lcom/sonyericsson/home/customization/AppTrayCustomization;->insert(Lcom/sonyericsson/util/PagedList;IILcom/sonyericsson/home/data/ActivityInfo;)V

    .line 79
    :goto_0
    return-void

    .line 77
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
    .line 82
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

    .line 83
    .local v1, info:Lcom/sonyericsson/home/data/ActivityInfo;
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

    .line 87
    .end local v1           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 7
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
    const/4 v6, 0x0

    .line 47
    const-string v0, "activities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const-string v0, "name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, name:Ljava/lang/String;
    const-string v0, "package-name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    .local v3, packageName:Ljava/lang/String;
    const-string v0, "position"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 51
    .local v4, position:I
    const-string v0, "pane"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 52
    .local v5, pane:I
    iget-object v0, p0, Lcom/sonyericsson/home/customization/AppTrayCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/home/customization/AppTrayCustomization;->mModel:Lcom/sonyericsson/util/PagedList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/customization/AppTrayCustomization;->addItem(Lcom/sonyericsson/util/PagedList;Ljava/lang/String;Ljava/lang/String;II)V

    .line 63
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .end local v2           #name:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #position:I
    .end local v5           #pane:I
    :goto_1
    return v0

    .line 54
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #position:I
    .restart local v5       #pane:I
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/home/customization/AppTrayCustomization;->mIsMissingPackageAllowed:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/home/customization/PendingPackageList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/sonyericsson/home/customization/AppTrayCustomization;->mModel:Lcom/sonyericsson/util/PagedList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/customization/AppTrayCustomization;->addItem(Lcom/sonyericsson/util/PagedList;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .end local v2           #name:Ljava/lang/String;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #position:I
    .end local v5           #pane:I
    :cond_2
    move v0, v6

    .line 61
    goto :goto_1
.end method

.method public insert(Lcom/sonyericsson/util/PagedList;IILcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 1
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
    .line 91
    .local p1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/sonyericsson/util/PagedList;->addPageLast()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result v0

    if-le p3, v0, :cond_2

    .line 96
    invoke-virtual {p1, p2}, Lcom/sonyericsson/util/PagedList;->getPageSize(I)I

    move-result p3

    .line 101
    :cond_1
    :goto_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/sonyericsson/util/PagedList;->insert(IILjava/lang/Object;)V

    .line 102
    return-void

    .line 97
    :cond_2
    if-gez p3, :cond_1

    .line 98
    const/4 p3, 0x0

    goto :goto_1
.end method
