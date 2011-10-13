.class public Lcom/sonyericsson/home/data/AdvWidgetInfo$AdvancedWidgetInfoFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "AdvWidgetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/data/AdvWidgetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedWidgetInfoFactory"
.end annotation


# static fields
.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 6
    .parameter "node"

    .prologue
    const-class v5, Ljava/util/HashMap;

    .line 40
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 41
    .local v2, id:Ljava/util/UUID;
    const-string v4, "package_name"

    invoke-virtual {p1, v4}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 44
    .local v0, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v4, Ljava/util/HashMap;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/storage/Node;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v1

    .line 45
    .local v1, hashMapNode:Lcom/sonyericsson/storage/Node;
    if-eqz v1, :cond_0

    .line 46
    const-class v4, Ljava/util/HashMap;

    invoke-static {v5, v1}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 49
    .restart local v0       #hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-direct {v4, v3, v2, v0}, Lcom/sonyericsson/home/data/AdvWidgetInfo;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V

    return-object v4
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 54
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v2, v0

    .line 56
    .local v2, widgetInfo:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    new-instance v1, Lcom/sonyericsson/storage/Node;

    invoke-direct {v1}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 58
    .local v1, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 59
    const-string v3, "id"

    invoke-static {v2}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->access$000(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "package_name"

    invoke-static {v2}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->access$100(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v2}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->access$200(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    const-class v3, Ljava/util/HashMap;

    invoke-static {v2}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->access$200(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 66
    :cond_0
    return-object v1
.end method
