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
    .locals 9
    .parameter "node"

    .prologue
    .line 47
    const-string v7, "label"

    invoke-virtual {p1, v7}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/storage/StringUtil;->decodeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, label:Ljava/lang/String;
    const/4 v3, 0x0

    .line 51
    .local v3, intent:Landroid/content/Intent;
    :try_start_0
    const-string v7, "intent"

    invoke-virtual {p1, v7}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 56
    :goto_0
    const-string v7, "package_name"

    invoke-virtual {p1, v7}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, packageName:Ljava/lang/String;
    const-string v7, "resource_name"

    invoke-virtual {p1, v7}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, resourceName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    const/4 v0, 0x0

    .line 63
    .local v0, bitmapResourceName:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 64
    new-instance v2, Landroid/content/Intent$ShortcutIconResource;

    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    invoke-direct {v2}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 65
    .restart local v2       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    iput-object v5, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 66
    iput-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 71
    :goto_1
    new-instance v7, Lcom/sonyericsson/home/data/ShortcutInfo;

    invoke-direct {v7, v4, v3, v2, v0}, Lcom/sonyericsson/home/data/ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    return-object v7

    .line 52
    .end local v0           #bitmapResourceName:Ljava/lang/String;
    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 53
    .local v1, e:Ljava/net/URISyntaxException;
    const/4 v3, 0x0

    goto :goto_0

    .line 68
    .end local v1           #e:Ljava/net/URISyntaxException;
    .restart local v0       #bitmapResourceName:Ljava/lang/String;
    .restart local v2       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #resourceName:Ljava/lang/String;
    :cond_0
    move-object v0, v6

    goto :goto_1
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 9
    .parameter "object"

    .prologue
    const-string v8, "resource_name"

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/ShortcutInfo;

    move-object v4, v0

    .line 78
    .local v4, shortcutInfo:Lcom/sonyericsson/home/data/ShortcutInfo;
    new-instance v3, Lcom/sonyericsson/storage/Node;

    invoke-direct {v3}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 80
    .local v3, node:Lcom/sonyericsson/storage/Node;
    const-string v5, "version"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 81
    const-string v5, "label"

    invoke-virtual {v4}, Lcom/sonyericsson/home/data/ShortcutInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/storage/StringUtil;->encodeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v5, "intent"

    invoke-virtual {v4}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4}, Lcom/sonyericsson/home/data/ShortcutInfo;->getIconResource()Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 86
    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v2, :cond_1

    .line 87
    const-string v5, "package_name"

    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v5, "resource_name"

    iget-object v5, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v3, v8, v5}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-object v3

    .line 90
    :cond_1
    invoke-virtual {v4}, Lcom/sonyericsson/home/data/ShortcutInfo;->getBitmapResourceName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, bitmapResourceName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 92
    const-string v5, "resource_name"

    invoke-virtual {v3, v8, v1}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
