.class public Lcom/sonyericsson/home/data/ShortcutInfo$ShortcutInfoFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "ShortcutInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/data/ShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutInfoFactory"
.end annotation


# static fields
.field private static final KEY_ICON_BITMAP_PATH:Ljava/lang/String; = "bitmap_path"

.field private static final KEY_ICON_RESOURCE_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final KEY_ICON_RESOURCE_RESOURCE_NAME:Ljava/lang/String; = "resource_name"

.field private static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 10
    .parameter "node"

    .prologue
    .line 49
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/storage/StringUtil;->decodeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, label:Ljava/lang/String;
    :try_start_0
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 58
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, packageName:Ljava/lang/String;
    const-string v0, "resource_name"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, resourceName:Ljava/lang/String;
    const-string v0, "bitmap_path"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, bitmapPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 65
    .local v3, iconResource:Landroid/content/Intent$ShortcutIconResource;
    const/4 v4, 0x0

    .line 66
    .local v4, bitmapResourceName:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 67
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    .end local v3           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 68
    .restart local v3       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    iput-object v7, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 69
    iput-object v8, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 74
    :cond_0
    :goto_1
    new-instance v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 54
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v4           #bitmapResourceName:Ljava/lang/String;
    .end local v5           #bitmapPath:Ljava/lang/String;
    .end local v7           #packageName:Ljava/lang/String;
    .end local v8           #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 55
    .local v6, e:Ljava/net/URISyntaxException;
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 70
    .end local v6           #e:Ljava/net/URISyntaxException;
    .restart local v3       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v4       #bitmapResourceName:Ljava/lang/String;
    .restart local v5       #bitmapPath:Ljava/lang/String;
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v8       #resourceName:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_0

    .line 71
    move-object v4, v8

    goto :goto_1
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 10
    .parameter "object"

    .prologue
    const-string v9, "resource_name"

    .line 79
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move-object v5, v0

    .line 81
    .local v5, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    new-instance v4, Lcom/sonyericsson/storage/Node;

    invoke-direct {v4}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 83
    .local v4, node:Lcom/sonyericsson/storage/Node;
    const-string v6, "version"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 84
    const-string v6, "label"

    invoke-virtual {v5}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/storage/StringUtil;->encodeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v6, "intent"

    invoke-virtual {v5}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    .line 89
    .local v3, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v3, :cond_1

    .line 90
    const-string v6, "package_name"

    iget-object v7, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v6, "resource_name"

    iget-object v6, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-object v4

    .line 93
    :cond_1
    invoke-virtual {v5}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, bitmapResourceName:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, bitmapPath:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 97
    const-string v6, "resource_name"

    invoke-virtual {v4, v9, v2}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    if-eqz v1, :cond_0

    .line 99
    const-string v6, "bitmap_path"

    invoke-virtual {v4, v6, v1}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
