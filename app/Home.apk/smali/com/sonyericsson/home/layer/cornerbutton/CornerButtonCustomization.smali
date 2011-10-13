.class public Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;
.super Lcom/sonyericsson/home/customization/GenericCustomization;
.source "CornerButtonCustomization.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cornerbuttons"


# instance fields
.field private mModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "packageLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Lcom/sonyericsson/home/resourceload/PackageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const-string v0, "cornerbuttons"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mModel:Ljava/util/ArrayList;

    .line 31
    iput-object p3, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 32
    return-void
.end method

.method private addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v0, p3, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v0, info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-direct {p0, p1, p4, v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->addInfo(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V

    .line 76
    return-void
.end method

.method private addInfo(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter
    .parameter "position"
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;I",
            "Lcom/sonyericsson/home/data/Info;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz p3, :cond_0

    .line 105
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 106
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "uri"
    .parameter "iconPackageName"
    .parameter "iconResourceName"
    .parameter "iconFilename"
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    :try_start_0
    invoke-static {p2, p3, p4, p5, p6}, Lcom/sonyericsson/home/customization/CustomizationUtils;->createShortcutInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v1

    .line 88
    .local v1, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-direct {p0, p1, p7, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->addInfo(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 90
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v2, "cornerbuttons"

    const-string v3, "Shortcut URI parsing failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v0, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v0, p3, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v0, info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->removeInfo(Ljava/util/ArrayList;Lcom/sonyericsson/home/data/Info;)V

    .line 81
    return-void
.end method

.method private removeInfo(Ljava/util/ArrayList;Lcom/sonyericsson/home/data/Info;)V
    .locals 3
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Lcom/sonyericsson/home/data/Info;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const-string v0, "cornerbuttons"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring removal of missing item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.method private removeShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "name"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    :try_start_0
    new-instance v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 97
    .local v1, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->removeInfo(Ljava/util/ArrayList;Lcom/sonyericsson/home/data/Info;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 99
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v2, "cornerbuttons"

    const-string v3, "Shortcut URI parsing failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 9
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
    .line 37
    .local p3, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "activities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    const-string v0, "package-name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 39
    .local v8, packageName:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, name:Ljava/lang/String;
    const-string v0, "position"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 41
    .local v7, position:I
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v0, v2, v8}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mModel:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v8, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    .end local v7           #position:I
    .end local v8           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .end local v2           #name:Ljava/lang/String;
    :goto_1
    return v0

    .line 43
    .restart local v2       #name:Ljava/lang/String;
    .restart local v7       #position:I
    .restart local v8       #packageName:Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mIsMissingPackageAllowed:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v0, v8}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addPendingPackage(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mModel:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v8, v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 49
    .end local v2           #name:Ljava/lang/String;
    .end local v7           #position:I
    .end local v8           #packageName:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v0, "remove-activities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    const-string v0, "package-name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 51
    .restart local v8       #packageName:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .restart local v2       #name:Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mModel:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v8}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v2           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .restart local p1
    :cond_3
    const-string v0, "shortcuts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    const-string v0, "name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .restart local v2       #name:Ljava/lang/String;
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, uri:Ljava/lang/String;
    const-string v0, "icon-package-name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    .local v4, iconPackageName:Ljava/lang/String;
    const-string v0, "icon-resource-name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    .local v5, iconResourceName:Ljava/lang/String;
    const-string v0, "icon-filename"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 59
    .local v6, iconFilename:Ljava/lang/String;
    const-string v0, "position"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 60
    .restart local v7       #position:I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mModel:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    .end local v4           #iconPackageName:Ljava/lang/String;
    .end local v5           #iconResourceName:Ljava/lang/String;
    .end local v6           #iconFilename:Ljava/lang/String;
    .end local v7           #position:I
    .restart local p1
    :cond_4
    const-string v0, "remove-shortcuts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    const-string v0, "name"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .restart local v2       #name:Ljava/lang/String;
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    .restart local v3       #uri:Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->mModel:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonCustomization;->removeShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
