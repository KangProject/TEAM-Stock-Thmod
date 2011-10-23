.class public Lcom/sonyericsson/home/customization/CustomizationUtils;
.super Ljava/lang/Object;
.source "CustomizationUtils.java"


# static fields
.field public static final IMAGE_PATH:Ljava/lang/String; = "/etc/customization/content/com/sonyericsson/home/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShortcutInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/home/data/ShortcutInfo;
    .locals 5
    .parameter "name"
    .parameter "uri"
    .parameter "iconPackageName"
    .parameter "iconResourceName"
    .parameter "iconBitmapFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, icon:Landroid/content/Intent$ShortcutIconResource;
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 43
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    .end local v0           #icon:Landroid/content/Intent$ShortcutIconResource;
    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 44
    .restart local v0       #icon:Landroid/content/Intent$ShortcutIconResource;
    iput-object p2, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 45
    iput-object p3, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 50
    :cond_0
    new-instance v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)V

    :goto_0
    return-object v1

    .line 46
    :cond_1
    if-eqz p4, :cond_0

    .line 47
    new-instance v1, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/etc/customization/content/com/sonyericsson/home/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "categories"
    .parameter "category"

    .prologue
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 30
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 35
    .end local v0           #i:I
    :goto_1
    return v1

    .line 29
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getFolderName([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "categories"
    .parameter "categoryNames"
    .parameter "category"

    .prologue
    .line 54
    invoke-static {p0, p2}, Lcom/sonyericsson/home/customization/CustomizationUtils;->getCategoryIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, index:I
    aget-object v1, p1, v0

    return-object v1
.end method

.method public static getQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 69
    :cond_0
    return-object p0
.end method
