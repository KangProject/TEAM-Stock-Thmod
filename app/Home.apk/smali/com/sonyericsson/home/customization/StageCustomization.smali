.class public Lcom/sonyericsson/home/customization/StageCustomization;
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
    .line 50
    .local p2, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const-string v0, "stage"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/home/customization/GenericCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mFolders:Ljava/util/HashMap;

    .line 51
    iput-object p3, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mCategories:[Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mFolderLocalizedNames:[Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mModel:Ljava/util/ArrayList;

    .line 55
    iput-object p4, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 56
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
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
    .line 116
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v4, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-direct {v4, p3, p2}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v4, info:Lcom/sonyericsson/home/data/ActivityInfo;
    if-eqz p5, :cond_1

    .line 119
    invoke-direct {p0, p5}, Lcom/sonyericsson/home/customization/StageCustomization;->findFolder(Ljava/lang/String;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v2

    .line 121
    .local v2, folderItem:Lcom/sonyericsson/home/data/Info;
    if-eqz v2, :cond_0

    .line 122
    move-object v0, v2

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v1, v0

    .line 123
    .local v1, folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v5, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v5, v1, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 133
    .end local v1           #folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v2           #folderItem:Lcom/sonyericsson/home/data/Info;
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/customization/StageCustomization;->findActivityIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 127
    .local v3, index:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 128
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_2
    invoke-virtual {p0, p1, p4, v4}, Lcom/sonyericsson/home/customization/StageCustomization;->addItem(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V

    goto :goto_0
.end method

.method private addFolder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "category"
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
    .line 242
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    new-instance v1, Lcom/sonyericsson/home/data/InfoGroup;

    iget-object v2, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mCategories:[Ljava/lang/String;

    invoke-static {v2, p3}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getFolderIcon([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/lang/String;I)V

    .line 245
    .local v1, info:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v2, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v2, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-direct {p0, p1, p5}, Lcom/sonyericsson/home/customization/StageCustomization;->findFolderIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 250
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    invoke-virtual {p0, p1, p4, v1}, Lcom/sonyericsson/home/customization/StageCustomization;->addItem(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V

    .line 254
    return-void
.end method

.method private addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter "name"
    .parameter "uri"
    .parameter "iconPackageName"
    .parameter "iconResourceName"
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
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const/4 v7, 0x0

    .line 183
    .local v7, icon:Landroid/content/Intent$ShortcutIconResource;
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 184
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    .end local v7           #icon:Landroid/content/Intent$ShortcutIconResource;
    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 185
    .restart local v7       #icon:Landroid/content/Intent$ShortcutIconResource;
    move-object/from16 v0, p4

    move-object v1, v7

    iput-object v0, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p5

    move-object v1, v7

    iput-object v0, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 190
    :cond_0
    :try_start_0
    new-instance v9, Lcom/sonyericsson/home/data/ShortcutInfo;

    const/4 v10, 0x0

    invoke-static {p3, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, p2, v10, v7, v11}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 192
    .local v9, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    if-eqz p7, :cond_2

    .line 193
    move-object v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/customization/StageCustomization;->findFolder(Ljava/lang/String;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v6

    .line 195
    .local v6, folderItem:Lcom/sonyericsson/home/data/Info;
    if-eqz v6, :cond_1

    .line 196
    move-object v0, v6

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v5, v0

    .line 197
    .local v5, folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v10, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v10, v5, v9}, Lcom/sonyericsson/home/layer/InfoGroupManager;->addLast(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)V

    .line 210
    .end local v5           #folderInfo:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v6           #folderItem:Lcom/sonyericsson/home/data/Info;
    .end local v9           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_1
    :goto_0
    return-void

    .line 200
    .restart local v9       #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/customization/StageCustomization;->findShortcutIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 201
    .local v8, index:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 202
    const/4 v10, 0x0

    invoke-virtual {p1, v8, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/home/customization/StageCustomization;->addItem(Ljava/util/ArrayList;ILcom/sonyericsson/home/data/Info;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v8           #index:I
    .end local v9           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 208
    .local v4, e:Ljava/net/URISyntaxException;
    const-string v10, "stage"

    const-string v11, "Shortcut URI parsing failed"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    .line 166
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 167
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 168
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/home/data/Info;

    .line 169
    .local v3, item:Lcom/sonyericsson/home/data/Info;
    instance-of v5, v3, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v5, :cond_0

    .line 170
    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v2, v0

    .line 171
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

    .line 177
    .end local v2           #info:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v3           #item:Lcom/sonyericsson/home/data/Info;
    :goto_1
    return v5

    .line 167
    .restart local v3       #item:Lcom/sonyericsson/home/data/Info;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v3           #item:Lcom/sonyericsson/home/data/Info;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private findFolder(Ljava/lang/String;)Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1
    .parameter "folderId"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mFolders:Ljava/util/HashMap;

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
    .line 273
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mFolders:Ljava/util/HashMap;

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
    .line 223
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p3, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 224
    .local v3, intent:Landroid/content/Intent;
    new-instance v5, Lcom/sonyericsson/home/data/ShortcutInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, p2, v3, v7, v8}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    .line 225
    .local v5, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 226
    .local v6, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 227
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/data/Info;

    .line 228
    .local v4, item:Lcom/sonyericsson/home/data/Info;
    instance-of v7, v4, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v7, :cond_0

    .line 229
    move-object v0, v4

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move-object v2, v0

    .line 230
    .local v2, info:Lcom/sonyericsson/home/data/ShortcutInfo;
    invoke-virtual {v2, v5}, Lcom/sonyericsson/home/data/ShortcutInfo;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    move v7, v1

    .line 237
    .end local v1           #i:I
    .end local v2           #info:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/sonyericsson/home/data/Info;
    .end local v5           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v6           #size:I
    :goto_1
    return v7

    .line 226
    .restart local v1       #i:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #item:Lcom/sonyericsson/home/data/Info;
    .restart local v5       #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    .restart local v6       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/sonyericsson/home/data/Info;
    .end local v5           #shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    .end local v6           #size:I
    :catch_0
    move-exception v7

    .line 237
    :cond_1
    const/4 v7, -0x1

    goto :goto_1
.end method

.method private getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "category"

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 297
    .local v1, retval:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 298
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mCategories:[Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getFolderIcon([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, index:I
    iget-object v2, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mFolderLocalizedNames:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 303
    return-object v1
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
    .line 136
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    if-eqz p4, :cond_2

    .line 137
    invoke-direct {p0, p4}, Lcom/sonyericsson/home/customization/StageCustomization;->findFolder(Ljava/lang/String;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v3

    .line 139
    .local v3, folderItem:Lcom/sonyericsson/home/data/Info;
    if-eqz v3, :cond_0

    .line 140
    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v6, v0

    .line 141
    .local v6, info:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v8, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v6}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v2

    .line 142
    .local v2, cnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 143
    iget-object v8, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v6, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->getInfo(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v7

    .line 144
    .local v7, tmp:Lcom/sonyericsson/home/data/Info;
    instance-of v8, v7, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v8, :cond_1

    .line 145
    move-object v0, v7

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    .line 146
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

    .line 148
    iget-object v8, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {v8, v6, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;->remove(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    .line 163
    .end local v1           #activityInfo:Lcom/sonyericsson/home/data/ActivityInfo;
    .end local v2           #cnt:I
    .end local v3           #folderItem:Lcom/sonyericsson/home/data/Info;
    .end local v4           #i:I
    .end local v6           #info:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v7           #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_0
    :goto_1
    return-void

    .line 142
    .restart local v2       #cnt:I
    .restart local v3       #folderItem:Lcom/sonyericsson/home/data/Info;
    .restart local v4       #i:I
    .restart local v6       #info:Lcom/sonyericsson/home/data/InfoGroup;
    .restart local v7       #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v2           #cnt:I
    .end local v3           #folderItem:Lcom/sonyericsson/home/data/Info;
    .end local v4           #i:I
    .end local v6           #info:Lcom/sonyericsson/home/data/InfoGroup;
    .end local v7           #tmp:Lcom/sonyericsson/home/data/Info;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/customization/StageCustomization;->findActivityIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 156
    .local v5, index:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 157
    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 159
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
    .parameter "folderId"
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
    .line 258
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/home/customization/StageCustomization;->findFolderIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, index:I
    iget-object v1, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 261
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    :goto_0
    return-void

    .line 263
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
    .line 213
    .local p1, model:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/home/data/Info;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/home/customization/StageCustomization;->findShortcutIndex(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_0
    return-void

    .line 217
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

    .line 277
    if-eq p2, v2, :cond_0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 278
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 288
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 282
    .local v0, index:I
    if-eq v0, v2, :cond_1

    .line 283
    invoke-virtual {p1, v0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 285
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
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/home/customization/StageCustomization;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method protected handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 23
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
    .line 63
    .local p3, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "activities"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 64
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 65
    .local v7, name:Ljava/lang/String;
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 66
    .local v8, packageName:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 67
    .local v10, folder:Ljava/lang/String;
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

    .line 68
    .local v9, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-object v5, v0

    invoke-virtual {v5, v7, v8}, Lcom/sonyericsson/home/resourceload/PackageLoader;->isActivityInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/home/customization/StageCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #position:I
    .end local v10           #folder:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x1

    .end local v7           #name:Ljava/lang/String;
    :goto_1
    return v5

    .line 70
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #position:I
    .restart local v10       #folder:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mIsMissingPackageAllowed:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 72
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lcom/sonyericsson/home/customization/PendingPackageList;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/home/customization/StageCustomization;->addActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #position:I
    .end local v10           #folder:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v5, "remove-activities"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 77
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 78
    .restart local v8       #packageName:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 79
    .restart local v10       #folder:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/home/customization/StageCustomization;->removeActivityItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v10           #folder:Ljava/lang/String;
    :cond_3
    const-string v5, "shortcuts"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 82
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 83
    .local v14, uri:Ljava/lang/String;
    const-string v5, "folder"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 84
    .restart local v10       #folder:Ljava/lang/String;
    const-string v5, "icon-package-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 85
    .local v15, iconPackageName:Ljava/lang/String;
    const-string v5, "icon-resource-name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 86
    .local v16, iconResourceName:Ljava/lang/String;
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

    .line 87
    .restart local v9       #position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v12, v0

    move-object/from16 v11, p0

    move-object v13, v7

    move/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/sonyericsson/home/customization/StageCustomization;->addShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 88
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #position:I
    .end local v10           #folder:Ljava/lang/String;
    .end local v14           #uri:Ljava/lang/String;
    .end local v15           #iconPackageName:Ljava/lang/String;
    .end local v16           #iconResourceName:Ljava/lang/String;
    .restart local p1
    :cond_4
    const-string v5, "remove-shortcuts"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 90
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 91
    .restart local v14       #uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/customization/StageCustomization;->removeShortcut(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    .end local v7           #name:Ljava/lang/String;
    .end local v14           #uri:Ljava/lang/String;
    :cond_5
    const-string v5, "folders"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 93
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 94
    .restart local v7       #name:Ljava/lang/String;
    const-string v5, "category"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 95
    .local v20, category:Ljava/lang/String;
    const-string v5, "id"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 96
    .local v22, id:Ljava/lang/String;
    if-nez v7, :cond_6

    .line 97
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/customization/StageCustomization;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    :cond_6
    if-nez v22, :cond_7

    .line 100
    move-object/from16 v22, v7

    .line 102
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

    .line 103
    .restart local v9       #position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v17, p0

    move-object/from16 v19, v7

    move/from16 v21, v9

    invoke-direct/range {v17 .. v22}, Lcom/sonyericsson/home/customization/StageCustomization;->addFolder(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #position:I
    .end local v20           #category:Ljava/lang/String;
    .end local v22           #id:Ljava/lang/String;
    .restart local p1
    :cond_8
    const-string v5, "remove-folders"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 105
    const-string v5, "name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 106
    .restart local v7       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/customization/StageCustomization;->mModel:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/home/customization/StageCustomization;->removeFolder(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    .end local v7           #name:Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1
.end method
