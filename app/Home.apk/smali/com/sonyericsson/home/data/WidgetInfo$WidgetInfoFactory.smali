.class public Lcom/sonyericsson/home/data/WidgetInfo$WidgetInfoFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "WidgetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/data/WidgetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetInfoFactory"
.end annotation


# static fields
.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 5
    .parameter "node"

    .prologue
    .line 37
    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, id:I
    const-string v3, "package_name"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, packageName:Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, name:Ljava/lang/String;
    new-instance v3, Lcom/sonyericsson/home/data/WidgetInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/sonyericsson/home/data/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 46
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/WidgetInfo;

    move-object v2, v0

    .line 48
    .local v2, widgetInfo:Lcom/sonyericsson/home/data/WidgetInfo;
    new-instance v1, Lcom/sonyericsson/storage/Node;

    invoke-direct {v1}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 50
    .local v1, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 51
    const-string v3, "id"

    invoke-static {v2}, Lcom/sonyericsson/home/data/WidgetInfo;->access$000(Lcom/sonyericsson/home/data/WidgetInfo;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 52
    const-string v3, "package_name"

    invoke-static {v2}, Lcom/sonyericsson/home/data/WidgetInfo;->access$100(Lcom/sonyericsson/home/data/WidgetInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Lcom/sonyericsson/home/data/WidgetInfo;->access$200(Lcom/sonyericsson/home/data/WidgetInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "name"

    invoke-static {v2}, Lcom/sonyericsson/home/data/WidgetInfo;->access$200(Lcom/sonyericsson/home/data/WidgetInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-object v1
.end method
