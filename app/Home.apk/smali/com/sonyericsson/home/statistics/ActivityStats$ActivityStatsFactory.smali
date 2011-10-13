.class public Lcom/sonyericsson/home/statistics/ActivityStats$ActivityStatsFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "ActivityStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/statistics/ActivityStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityStatsFactory"
.end annotation


# static fields
.field private static final KEY_INSTALL_TIME:Ljava/lang/String; = "install_time"

.field private static final KEY_LAST_STARTED_TIME:Ljava/lang/String; = "last_started_time"

.field private static final KEY_START_COUNT_APPTRAY:Ljava/lang/String; = "start_count_apptray"

.field private static final KEY_START_COUNT_DESKTOP:Ljava/lang/String; = "start_count_desktop"

.field private static final KEY_START_COUNT_FIXED_ITEM:Ljava/lang/String; = "start_count_fixed_item"

.field private static final KEY_START_COUNT_FOLDER:Ljava/lang/String; = "start_count_folder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 7
    .parameter "node"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const-class v3, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 88
    const-class v2, Lcom/sonyericsson/home/data/ActivityInfo;

    const-class v2, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/storage/Node;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    .line 90
    .local v0, info:Lcom/sonyericsson/home/data/ActivityInfo;
    new-instance v1, Lcom/sonyericsson/home/statistics/ActivityStats;

    invoke-direct {v1, v0}, Lcom/sonyericsson/home/statistics/ActivityStats;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .line 92
    .local v1, stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    const-string v2, "install_time"

    invoke-virtual {p1, v2, v5, v6}, Lcom/sonyericsson/storage/Node;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$002(Lcom/sonyericsson/home/statistics/ActivityStats;J)J

    .line 93
    const-string v2, "last_started_time"

    invoke-virtual {p1, v2, v5, v6}, Lcom/sonyericsson/storage/Node;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$102(Lcom/sonyericsson/home/statistics/ActivityStats;J)J

    .line 94
    const-string v2, "start_count_apptray"

    invoke-virtual {p1, v2, v4}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$202(Lcom/sonyericsson/home/statistics/ActivityStats;I)I

    .line 95
    const-string v2, "start_count_desktop"

    invoke-virtual {p1, v2, v4}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$302(Lcom/sonyericsson/home/statistics/ActivityStats;I)I

    .line 96
    const-string v2, "start_count_fixed_item"

    invoke-virtual {p1, v2, v4}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$402(Lcom/sonyericsson/home/statistics/ActivityStats;I)I

    .line 97
    const-string v2, "start_count_folder"

    invoke-virtual {p1, v2, v4}, Lcom/sonyericsson/storage/Node;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$502(Lcom/sonyericsson/home/statistics/ActivityStats;I)I

    .line 99
    return-object v1
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 6
    .parameter "object"

    .prologue
    .line 104
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/statistics/ActivityStats;

    move-object v2, v0

    .line 106
    .local v2, stats:Lcom/sonyericsson/home/statistics/ActivityStats;
    new-instance v1, Lcom/sonyericsson/storage/Node;

    invoke-direct {v1}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 107
    .local v1, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "last_started_time"

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$100(Lcom/sonyericsson/home/statistics/ActivityStats;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;J)V

    .line 108
    const-string v3, "install_time"

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$000(Lcom/sonyericsson/home/statistics/ActivityStats;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;J)V

    .line 109
    const-string v3, "start_count_apptray"

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$200(Lcom/sonyericsson/home/statistics/ActivityStats;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 110
    const-string v3, "start_count_desktop"

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$300(Lcom/sonyericsson/home/statistics/ActivityStats;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 111
    const-string v3, "start_count_fixed_item"

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$400(Lcom/sonyericsson/home/statistics/ActivityStats;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 112
    const-string v3, "start_count_folder"

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$500(Lcom/sonyericsson/home/statistics/ActivityStats;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 113
    const-class v3, Lcom/sonyericsson/home/data/ActivityInfo;

    invoke-static {v2}, Lcom/sonyericsson/home/statistics/ActivityStats;->access$600(Lcom/sonyericsson/home/statistics/ActivityStats;)Lcom/sonyericsson/home/data/ActivityInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 115
    return-object v1
.end method
