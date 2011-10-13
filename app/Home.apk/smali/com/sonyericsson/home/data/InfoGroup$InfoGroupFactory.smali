.class public Lcom/sonyericsson/home/data/InfoGroup$InfoGroupFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "InfoGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/data/InfoGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoGroupFactory"
.end annotation


# static fields
.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_UUID:Ljava/lang/String; = "uuid"

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
    .locals 6
    .parameter "node"

    .prologue
    .line 45
    const-string v4, "uuid"

    invoke-virtual {p1, v4}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 46
    .local v3, uuid:Ljava/util/UUID;
    const-string v4, "label"

    invoke-virtual {p1, v4}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/storage/StringUtil;->decodeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, label:Ljava/lang/String;
    const-string v4, "icon"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    .local v0, icon:I
    new-instance v1, Lcom/sonyericsson/home/data/InfoGroup;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/sonyericsson/home/data/InfoGroup;-><init>(Ljava/util/UUID;Ljava/lang/String;ILcom/sonyericsson/home/data/InfoGroup$1;)V

    .line 50
    .local v1, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    return-object v1
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 55
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/InfoGroup;

    move-object v1, v0

    .line 57
    .local v1, infoGroup:Lcom/sonyericsson/home/data/InfoGroup;
    new-instance v2, Lcom/sonyericsson/storage/Node;

    invoke-direct {v2}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 59
    .local v2, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 60
    const-string v3, "uuid"

    invoke-static {v1}, Lcom/sonyericsson/home/data/InfoGroup;->access$100(Lcom/sonyericsson/home/data/InfoGroup;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "label"

    invoke-static {v1}, Lcom/sonyericsson/home/data/InfoGroup;->access$200(Lcom/sonyericsson/home/data/InfoGroup;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/storage/StringUtil;->encodeSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "icon"

    invoke-static {v1}, Lcom/sonyericsson/home/data/InfoGroup;->access$300(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 64
    return-object v2
.end method
