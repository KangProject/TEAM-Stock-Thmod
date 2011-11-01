.class public Lcom/sonyericsson/home/layer/stage/StageCustomization;
.super Lcom/sonyericsson/home/customization/GenericCustomization;
.source "StageCustomization.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "stage"


# instance fields
.field private mCategories:[Ljava/lang/String;

.field private mFolderLocalizedNames:[Ljava/lang/String;

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/home/data/InfoGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "infoGroupManager"
    .parameter "packageLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Lcom/sonyericsson/home/layer/InfoGroupManager;",
            "Lcom/sonyericsson/home/resourceload/PackageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const-string v0, "stage"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mFolders:Ljava/util/HashMap;

    .line 54
    iput-object p3, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mCategories:[Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mFolderLocalizedNames:[Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mModel:Ljava/util/ArrayList;

    .line 60
    iput-object p4, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 61
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method private addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "position"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v4, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v4, p3, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v4, info:Lcom/sonyericsson/home/data/ActivityInfo;
    if-eqz p5, :cond_1

    .line 132
    invoke-direct {p0, p5}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findFolder(Ljava/lang/String;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v2

    .line 133
    .local v2, folderItem:Lcom/sonyericsson/home/data/Info;
    if-eqz v2, :cond_0

    .line 134
    move-object v0, v2

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v1, v0

    .line 135
    .local v1, folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v5, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v5, v1, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 145
    .end local v1           #folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v2           #folderItem:Lcom/sonyericsson/home/data/Info;
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findActivityIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 139
    .local v3, index:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 140
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_2
    invoke-virtual {p0, p1, p4, v4}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->addItem(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V

    goto :goto_0
.end method

.method private addFolder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "category"
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
            "I)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v1, Lcom/sonyericsson/home/data/InfoGroup;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mCategories:[Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p3, v2}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;I)V

    .line 252
    .local v1, info:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findFolderIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 256
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    invoke-virtual {p0, p1, p5, v1}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->addItem(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V

    .line 260
    return-void
.end method

.method private addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter "name"
    .parameter "uri"
    .parameter "iconPackageName"
    .parameter "iconResourceName"
    .parameter "iconFilename"
    .parameter "position"
    .parameter "folderId"
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
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    :try_start_0
    invoke-static/range {p2 .. p6}, Lcom/sonyericsson/home/customization/CustomizationUtils;->createShortcutInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/data/ShortcutInfo;

    move-result-object v8

    .line 199
    .local v8, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz p8, :cond_1

    .line 200
    move-object v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findFolder(Ljava/lang/String;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v6

    .line 201
    .local v6, folderItem:Lcom/sonyericsson/home/data/Info;
    if-eqz v6, :cond_0

    .line 202
    move-object v0, v6

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v5, v0

    .line 203
    .local v5, folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v9, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v9, v5, v8}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 216
    .end local v5           #folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v6           #folderItem:Lcom/sonyericsson/home/data/Info;
    .end local v8           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v8       #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findShortcutIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 207
    .local v7, index:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 208
    const/4 v9, 0x0

    invoke-virtual {p1, v7, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->addItem(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v7           #index:I
    .end local v8           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 214
    .local v4, e:Ljava/net/URISyntaxException;
    const-string v9, "stage"

    const-string v10, "Shortcut URI parsing failed"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private findActivityIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
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
            ")I"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 179
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 180
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/Info;

    .line 181
    .local v3, item:Lcom/sonyericsson/home/data/Info;
    instance-of v5, v3, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v5, :cond_0

    .line 182
    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v2, v0

    .line 183
    .local v2, info:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    .line 189
    .end local v2           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v3           #item:Lcom/sonyericsson/home/data/Info;
    :goto_1
    return v5

    .line 179
    .restart local v3       #item:Lcom/sonyericsson/home/data/Info;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v3           #item:Lcom/sonyericsson/home/data/Info;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private findFolder(Ljava/lang/String;)Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1
    .parameter "id"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/InfoGroup;

    return-object p0
.end method

.method private findFolderIndex(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/home/data/Info;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private findShortcutIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
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
            ")I"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p3, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 230
    .local v3, intent:Landroid/content/Intent;
    new-instance v5, Lcom/sonyericsson/home/data/ShortcutInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, p2, v3, v7, v8}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 231
    .local v5, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 232
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 233
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/Info;

    .line 234
    .local v4, item:Lcom/sonyericsson/home/data/Info;
    instance-of v7, v4, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v7, :cond_0

    .line 235
    move-object v0, v4

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move-object v2, v0

    .line 236
    .local v2, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/data/ShortcutInfo;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    move v7, v1

    .line 244
    .end local v1           #i:I
    .end local v2           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/sonyericsson/home/data/Info;
    .end local v5           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v6           #size:I
    :goto_1
    return v7

    .line 232
    .restart local v1       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #item:Lcom/sonyericsson/home/data/Info;
    .restart local v5       #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    .restart local v6       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/sonyericsson/home/data/Info;
    .end local v5           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v6           #size:I
    :catch_0
    move-exception v7

    .line 244
    :cond_1
    const/4 v7, -0x1

    goto :goto_1
.end method

.method private removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "name"
    .parameter "packageName"
    .parameter "folderId"
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
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz p4, :cond_2

    .line 150
    invoke-direct {p0, p4}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findFolder(Ljava/lang/String;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v3

    .line 151
    .local v3, folderItem:Lcom/sonyericsson/home/data/Info;
    if-eqz v3, :cond_0

    .line 152
    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v6, v0

    .line 153
    .local v6, info:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v8, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v2

    .line 154
    .local v2, cnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 155
    iget-object v8, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v6, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v7

    .line 156
    .local v7, tmp:Lcom/sonyericsson/home/data/Info;
    instance-of v8, v7, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v8, :cond_1

    .line 157
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 158
    .local v1, activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/ActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 160
    iget-object v8, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v6, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->remove(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    .line 175
    .end local v1           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v2           #cnt:I
    .end local v3           #folderItem:Lcom/sonyericsson/home/data/Info;
    .end local v4           #i:I
    .end local v6           #info:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v7           #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_0
    :goto_1
    return-void

    .line 154
    .restart local v2       #cnt:I
    .restart local v3       #folderItem:Lcom/sonyericsson/home/data/Info;
    .restart local v4       #i:I
    .restart local v6       #info:Lcom/sonyericsson/home/data/InfoGroup;
    .restart local v7       #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v2           #cnt:I
    .end local v3           #folderItem:Lcom/sonyericsson/home/data/Info;
    .end local v4           #i:I
    .end local v6           #info:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v7           #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findActivityIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 168
    .local v5, index:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 169
    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 171
    :cond_3
    const-string v8, "stage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring removal of missing Activity shortcut item : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeFolder(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/home/data/Info;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findFolderIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, index:I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 266
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v1, "stage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring removal of missing folder item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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
    .line 219
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->findShortcutIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 221
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v1, "stage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring removal of missing shortcut item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method addItem(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V
    .locals 4
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
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const/4 v2, -0x1

    .line 281
    if-eq p2, v2, :cond_0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 282
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 286
    .local v0, index:I
    if-eq v0, v2, :cond_1

    .line 287
    invoke-virtual {p1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_1
    const-string v1, "stage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stage full. Failed to add item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFolders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/home/data/InfoGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 24
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
    .line 69
    .local p3, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "activities"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 71
    .local v8, packageName:Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, name:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 73
    .local v10, folderId:Ljava/lang/String;
    const-string v5, "position"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 74
    .local v9, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v5, v0

    invoke-virtual {v5, v7, v8}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #position:I
    .end local v10           #folderId:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    .end local v7           #name:Ljava/lang/String;
    :goto_1
    return v5

    .line 76
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #position:I
    .restart local v10       #folderId:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mIsMissingPackageAllowed:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v5, v0

    invoke-virtual {v5, v8}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addPendingPackage(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #position:I
    .end local v10           #folderId:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v5, "remove-activities"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 83
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 84
    .restart local v8       #packageName:Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 86
    .restart local v10       #folderId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v10           #folderId:Ljava/lang/String;
    .restart local p1
    :cond_3
    const-string v5, "shortcuts"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 89
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 90
    .local v14, uri:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 91
    .restart local v10       #folderId:Ljava/lang/String;
    const-string v5, "icon-package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 92
    .local v15, iconPackageName:Ljava/lang/String;
    const-string v5, "icon-resource-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 93
    .local v16, iconResourceName:Ljava/lang/String;
    const-string v5, "icon-filename"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 94
    .local v17, iconFilename:Ljava/lang/String;
    const-string v5, "position"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 95
    .restart local v9       #position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v12, v0

    move-object/from16 v11, p0

    move-object v13, v7

    move/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #position:I
    .end local v10           #folderId:Ljava/lang/String;
    .end local v14           #uri:Ljava/lang/String;
    .end local v15           #iconPackageName:Ljava/lang/String;
    .end local v16           #iconResourceName:Ljava/lang/String;
    .end local v17           #iconFilename:Ljava/lang/String;
    .restart local p1
    :cond_4
    const-string v5, "remove-shortcuts"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 98
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 99
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 100
    .restart local v14       #uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->removeShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v7           #name:Ljava/lang/String;
    .end local v14           #uri:Ljava/lang/String;
    :cond_5
    const-string v5, "folders"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 102
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 103
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "category"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 104
    .local v22, category:Ljava/lang/String;
    const-string v5, "id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 105
    .local v20, id:Ljava/lang/String;
    if-nez v7, :cond_6

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mCategories:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mFolderLocalizedNames:[Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getFolderName([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    :cond_6
    if-nez v20, :cond_7

    .line 109
    move-object/from16 v20, v7

    .line 111
    :cond_7
    const-string v5, "position"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-static {v0, v1}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 112
    .restart local v9       #position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v18, p0

    move-object/from16 v21, v7

    move/from16 v23, v9

    invoke-direct/range {v18 .. v23}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->addFolder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 113
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #position:I
    .end local v20           #id:Ljava/lang/String;
    .end local v22           #category:Ljava/lang/String;
    .restart local p1
    :cond_8
    const-string v5, "remove-folders"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 114
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 115
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 116
    .restart local v20       #id:Ljava/lang/String;
    if-nez v20, :cond_9

    .line 117
    move-object/from16 v20, v7

    .line 119
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/layer/stage/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/layer/stage/StageCustomization;->removeFolder(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v7           #name:Ljava/lang/String;
    .end local v20           #id:Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1
.end method
