.class public Lcom/sonyericsson/home/layer/desktop/DesktopItem$DesktopItemFactory;
.super Lcom/sonyericsson/storage/NodeFactory;
.source "DesktopItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesktopItemFactory"
.end annotation


# static fields
.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final SUPPORTED_ITEM_CLASS_TYPES:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/home/data/ActivityInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/home/data/ShortcutInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/home/data/InfoGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/home/data/WidgetInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem$DesktopItemFactory;->SUPPORTED_ITEM_CLASS_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/storage/NodeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public fromNode(Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;
    .locals 7
    .parameter "node"

    .prologue
    const-class v6, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 46
    const/4 v3, 0x0

    .line 48
    .local v3, info:Lcom/sonyericsson/home/data/Info;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/sonyericsson/home/layer/desktop/DesktopItem$DesktopItemFactory;->SUPPORTED_ITEM_CLASS_TYPES:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    if-nez v3, :cond_1

    .line 49
    sget-object v5, Lcom/sonyericsson/home/layer/desktop/DesktopItem$DesktopItemFactory;->SUPPORTED_ITEM_CLASS_TYPES:[Ljava/lang/Class;

    aget-object v5, v5, v2

    invoke-virtual {p1, v5}, Lcom/sonyericsson/storage/Node;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    .line 50
    .local v4, itemChild:Lcom/sonyericsson/storage/Node;
    if-eqz v4, :cond_0

    .line 51
    sget-object v5, Lcom/sonyericsson/home/layer/desktop/DesktopItem$DesktopItemFactory;->SUPPORTED_ITEM_CLASS_TYPES:[Ljava/lang/Class;

    aget-object v5, v5, v2

    invoke-static {v5, v4}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #info:Lcom/sonyericsson/home/data/Info;
    check-cast v3, Lcom/sonyericsson/home/data/Info;

    .line 48
    .restart local v3       #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v4           #itemChild:Lcom/sonyericsson/storage/Node;
    :cond_1
    const-class v5, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-virtual {p1, v6}, Lcom/sonyericsson/storage/Node;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v1

    .line 56
    .local v1, desktopRectChild:Lcom/sonyericsson/storage/Node;
    const-class v5, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-static {v6, v1}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    .line 59
    .local v0, desktopRect:Lcom/sonyericsson/home/layer/desktop/DesktopRect;
    new-instance v5, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    invoke-direct {v5, v3, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;-><init>(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/layer/desktop/DesktopRect;)V

    return-object v5
.end method

.method public toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;
    .locals 5
    .parameter "object"

    .prologue
    .line 65
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    move-object v1, v0

    .line 67
    .local v1, layerItem:Lcom/sonyericsson/home/layer/desktop/DesktopItem;
    new-instance v2, Lcom/sonyericsson/storage/Node;

    invoke-direct {v2}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 69
    .local v2, node:Lcom/sonyericsson/storage/Node;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;I)V

    .line 70
    const-class v3, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 71
    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/data/Info;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopItem;->access$100(Lcom/sonyericsson/home/layer/desktop/DesktopItem;)Lcom/sonyericsson/home/data/Info;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/storage/NodeManager;->toNode(Ljava/lang/Object;)Lcom/sonyericsson/storage/Node;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 73
    return-object v2
.end method
