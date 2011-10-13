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
    .line 25
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 3
    .parameter "node"

    .prologue
    .line 37
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 38
    .local v0, id:Ljava/util/UUID;
    const-string v2, "package_name"

    invoke-virtual {p1, v2}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, packageName:Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    invoke-direct {v2, v1, v0}, Lcom/sonyericsson/home/data/AdvWidgetInfo;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    return-object v2
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 45
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    move-object v2, v0

    .line 47
    .local v2, widgetInfo:Lcom/sonyericsson/home/data/AdvWidgetInfo;
    new-instance v1, Lcom/sonyericsson/storage/Node;

    invoke-direct {v1}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 49
    .local v1, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 50
    const-string v3, "id"

    invoke-static {v2}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->access$000(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "package_name"

    invoke-static {v2}, Lcom/sonyericsson/home/data/AdvWidgetInfo;->access$100(Lcom/sonyericsson/home/data/AdvWidgetInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v1
.end method
