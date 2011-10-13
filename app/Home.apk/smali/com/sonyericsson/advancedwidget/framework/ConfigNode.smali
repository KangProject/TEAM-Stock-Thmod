.class public Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
.super Ljava/lang/Object;
.source "ConfigNode.java"


# instance fields
.field private mAttributes:Ljava/util/HashMap;
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

.field private mChildren:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonyericsson/advancedwidget/framework/ConfigNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mParent:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V
    .locals 1
    .parameter "name"
    .parameter "parent"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mChildren:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mAttributes:Ljava/util/HashMap;

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mParent:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mParent:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mParent:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->addChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 33
    :cond_0
    return-void
.end method

.method private static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    const/4 v5, 0x0

    .line 76
    .local v5, root:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, event:I
    move-object v1, v0

    .line 77
    .end local v0           #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .local v1, cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_4

    .line 78
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    .line 80
    new-instance v0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;-><init>(Ljava/lang/String;Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V

    .line 81
    .end local v1           #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .restart local v0       #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    if-nez v5, :cond_0

    .line 82
    move-object v5, v0

    .line 86
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 87
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, key:Ljava/lang/String;
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v0, v4, v6}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    .end local v0           #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .end local v3           #i:I
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .restart local v1       #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_1
    const/4 v7, 0x3

    if-ne v2, v7, :cond_5

    .line 92
    if-nez v1, :cond_2

    .line 93
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Incorrect config XML"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->getParent()Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    move-result-object v0

    .line 99
    .end local v1           #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .restart local v0       #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_3
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move-object v1, v0

    .end local v0           #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .restart local v1       #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    goto :goto_0

    .line 101
    :cond_4
    return-object v5

    :cond_5
    move-object v0, v1

    .end local v1           #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .restart local v0       #cur:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    goto :goto_2
.end method

.method public static readDocument(Ljava/io/File;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 6
    .parameter "f"

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v5

    .line 129
    :goto_0
    return-object v4

    .line 115
    :cond_0
    const/4 v3, 0x0

    .line 117
    .local v3, ret:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 119
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v1, fs:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 122
    invoke-static {v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 124
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .end local v1           #fs:Ljava/io/FileInputStream;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    move-object v4, v3

    .line 129
    goto :goto_0

    .line 124
    .restart local v1       #fs:Ljava/io/FileInputStream;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    .end local v1           #fs:Ljava/io/FileInputStream;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 127
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 140
    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mName:Ljava/lang/String;

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, value:Ljava/lang/String;
    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 145
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mChildren:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    .line 146
    .local v0, child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    invoke-direct {v0, p1}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 148
    .end local v0           #child:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mName:Ljava/lang/String;

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    return-void
.end method


# virtual methods
.method public addChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 62
    iput-object p0, p1, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mParent:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getChild(I)Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 1
    .parameter "idx"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/sonyericsson/advancedwidget/framework/ConfigNode;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mParent:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    return-object v0
.end method

.method public removeChild(Lcom/sonyericsson/advancedwidget/framework/ConfigNode;)V
    .locals 1
    .parameter "oldData"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mParent:Lcom/sonyericsson/advancedwidget/framework/ConfigNode;

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public writeDocumentTo(Ljava/io/File;)Z
    .locals 6
    .parameter "f"

    .prologue
    const/4 v5, 0x1

    const-string v3, "UTF-8"

    .line 158
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 159
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .local v1, fo:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 162
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 163
    invoke-direct {p0, v2}, Lcom/sonyericsson/advancedwidget/framework/ConfigNode;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 164
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    move v3, v5

    .line 172
    .end local v1           #fo:Ljava/io/FileOutputStream;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return v3

    .line 166
    .restart local v1       #fo:Ljava/io/FileOutputStream;
    .restart local v2       #out:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    .end local v1           #fo:Ljava/io/FileOutputStream;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const/4 v3, 0x0

    goto :goto_0
.end method
