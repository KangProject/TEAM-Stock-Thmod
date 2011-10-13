.class public Lcom/sonyericsson/storage/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/storage/Node$Child;
    }
.end annotation


# instance fields
.field protected final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/storage/Node$Child;",
            ">;"
        }
    .end annotation
.end field

.field protected final mChildMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/storage/Node;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/storage/Node;->mAttributes:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/storage/Node;->mChildMap:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/storage/Node;->mChildList:Ljava/util/LinkedList;

    return-void
.end method

.method protected static fromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/storage/Node;
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

    .line 229
    new-instance v4, Lcom/sonyericsson/storage/Node;

    invoke-direct {v4}, Lcom/sonyericsson/storage/Node;-><init>()V

    .line 232
    .local v4, node:Lcom/sonyericsson/storage/Node;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 233
    .local v1, eventType:I
    if-eq v1, v8, :cond_0

    .line 234
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 238
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 239
    .local v0, attributeCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 240
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, key:Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, value:Ljava/lang/String;
    iget-object v6, v4, Lcom/sonyericsson/storage/Node;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 246
    :goto_1
    const/4 v6, 0x3

    if-eq v1, v6, :cond_3

    .line 248
    if-eq v1, v8, :cond_2

    .line 249
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 253
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {p0}, Lcom/sonyericsson/storage/Node;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/storage/Node;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/storage/Node;->addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    .line 255
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 258
    :cond_3
    return-object v4
.end method


# virtual methods
.method public addChild(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V
    .locals 3
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonyericsson/storage/Node;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, key:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/sonyericsson/storage/Node;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 106
    .local v0, childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;"
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .restart local v0       #childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;"
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/storage/Node;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/storage/Node;->mChildList:Ljava/util/LinkedList;

    new-instance v2, Lcom/sonyericsson/storage/Node$Child;

    invoke-direct {v2, p1, p2}, Lcom/sonyericsson/storage/Node$Child;-><init>(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/storage/Node$Child;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/storage/Node;->mChildList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getChildren(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/storage/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, key:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sonyericsson/storage/Node;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/sonyericsson/storage/Node;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, key:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/sonyericsson/storage/Node;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 130
    .local v0, childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;"
    if-nez v0, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 134
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/storage/Node;

    move-object v1, p0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/sonyericsson/storage/Node;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    move-wide v1, p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/storage/Node;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 94
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/storage/Node;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/storage/Node;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method protected toXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 200
    iget-object v7, p0, Lcom/sonyericsson/storage/Node;->mAttributes:Ljava/util/HashMap;

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

    .line 201
    .local v0, attribute:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 204
    .end local v0           #attribute:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/storage/Node;->mChildMap:Ljava/util/HashMap;

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

    .line 205
    .local v2, childListEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 206
    .local v3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 208
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

    .line 209
    .local v6, node:Lcom/sonyericsson/storage/Node;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-virtual {v6, p1}, Lcom/sonyericsson/storage/Node;->toXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 211
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 214
    .end local v1           #childList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;"
    .end local v2           #childListEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/LinkedList<Lcom/sonyericsson/storage/Node;>;>;"
    .end local v3           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #node:Lcom/sonyericsson/storage/Node;
    :cond_2
    return-void
.end method
