.class public Lcom/sonyericsson/storage/Root;
.super Lcom/sonyericsson/storage/Node;
.source "Root.java"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/storage/Root;->mName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/storage/Root;
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 93
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 94
    .local v1, eventType:I
    if-eq v1, v8, :cond_0

    .line 95
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 98
    :cond_0
    new-instance v4, Lcom/sonyericsson/storage/Root;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sonyericsson/storage/Root;-><init>(Ljava/lang/String;)V

    .line 101
    .local v4, root:Lcom/sonyericsson/storage/Root;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 102
    .local v0, attributeCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 103
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, key:Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, value:Ljava/lang/String;
    iget-object v6, v4, Lcom/sonyericsson/storage/Root;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 109
    :goto_1
    const/4 v6, 0x3

    if-eq v1, v6, :cond_3

    .line 111
    if-eq v1, v8, :cond_2

    .line 112
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 116
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {p0}, Lcom/sonyericsson/storage/Node;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/storage/Node;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/storage/Root;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 118
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 121
    :cond_3
    return-object v4
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/storage/Root;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 59
    iget-object v7, p0, Lcom/sonyericsson/storage/Root;->mName:Ljava/lang/String;

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v7, p0, Lcom/sonyericsson/storage/Root;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .local v0, attribute:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 65
    .end local v0           #attribute:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/storage/Root;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .local v2, childListEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 67
    .local v3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 69
    .local v1, childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/storage/Node;

    .line 70
    .local v6, node:Lcom/sonyericsson/storage/Node;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    invoke-virtual {v6, p1}, Lcom/sonyericsson/storage/Node;->toXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 72
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 76
    .end local v1           #childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;"
    .end local v2           #childListEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;>;"
    .end local v3           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #node:Lcom/sonyericsson/storage/Node;
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/storage/Root;->mName:Ljava/lang/String;

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    return-void
.end method
