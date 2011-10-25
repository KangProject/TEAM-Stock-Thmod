.class Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;
.super Ljava/lang/Object;
.source "SemcBrowserCustomizationParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SemcBrowserCustomizationParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SemcBrowserCustomizationParser;


# direct methods
.method private constructor <init>(Lcom/android/browser/SemcBrowserCustomizationParser;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/SemcBrowserCustomizationParser;Lcom/android/browser/SemcBrowserCustomizationParser$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;-><init>(Lcom/android/browser/SemcBrowserCustomizationParser;)V

    return-void
.end method

.method private convertStringToBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x1

    .line 336
    .local v0, returnValue:Z
    if-eqz p1, :cond_2

    .line 337
    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    .line 339
    :cond_0
    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "convertStringToBoolean: not true or false"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "convertStringToBoolean: in is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getVersionAttribute(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    const v0, 0x7fffffff

    .line 234
    .local v0, version:I
    const/4 v2, 0x0

    const-string v3, "version"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, version_str:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 237
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2

    .line 239
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 242
    return v0
.end method

.method private handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "group"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, url:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v4}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;->onNewBookmark(Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;)V

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$502(Lcom/android/browser/SemcBrowserCustomizationParser;Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    .line 226
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    return-void

    .line 221
    .restart local v1       #title:Ljava/lang/String;
    .restart local v2       #url:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
.end method

.method private handleResult(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;->onResult(I)V

    .line 167
    :cond_0
    return-void
.end method

.method private handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 6
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "Bad xml, no version in settings tag"

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, done:Z
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, tag:Ljava/lang/String;
    const-string v3, "settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->getVersionAttribute(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    .line 177
    .local v1, mVersion:I
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$402(Lcom/android/browser/SemcBrowserCustomizationParser;Z)Z

    .line 178
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;->onVersion(I)Z

    move-result v0

    .line 204
    .end local v1           #mVersion:I
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$400(Lcom/android/browser/SemcBrowserCustomizationParser;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    invoke-direct {p0, p1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->handleTagSetting(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 186
    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Bad xml, no version in settings tag"

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "groups"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 190
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$400(Lcom/android/browser/SemcBrowserCustomizationParser;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    invoke-direct {p0, p1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->handleTagGroups(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 193
    :cond_4
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 196
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "group"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v3}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$400(Lcom/android/browser/SemcBrowserCustomizationParser;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 198
    invoke-direct {p0, p1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->handleTagGroup(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 200
    :cond_6
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Bad xml, no version in settings tag"

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleTagGroup(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    new-instance v1, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    invoke-direct {v1}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;-><init>()V

    invoke-static {v0, v1}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$502(Lcom/android/browser/SemcBrowserCustomizationParser;Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    .line 315
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method private handleTagGroups(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v1, 0x0

    const-string v2, "type"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 321
    const-string v1, "bookmark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->parserRun(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 331
    return-void

    .line 325
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    .line 329
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
.end method

.method private handleTagSetting(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v9, "true"

    .line 250
    const-string v7, "key"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, str:Ljava/lang/String;
    const-string v7, "runtime"

    invoke-interface {p1, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, runtime:Ljava/lang/String;
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    .line 253
    invoke-direct {p0, v3}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->convertStringToBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 254
    .local v0, bRuntime:Z
    const-string v7, "editable"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, editable:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 257
    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->setEditable(Z)V

    .line 305
    .end local v1           #editable:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v7, "homepage"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, url:Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 262
    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 263
    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v7

    invoke-interface {v7, v6, v0}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;->onNewHomepage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 267
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7

    .line 269
    .end local v6           #url:Ljava/lang/String;
    :cond_3
    const-string v7, "title"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 270
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, title:Ljava/lang/String;
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 272
    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->setTitle(Ljava/lang/String;)V

    .line 273
    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->setRuntime(Z)V

    goto :goto_0

    .line 276
    :cond_4
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7

    .line 278
    .end local v5           #title:Ljava/lang/String;
    :cond_5
    const-string v7, "url"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 279
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 280
    .restart local v6       #url:Ljava/lang/String;
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 281
    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->setUrl(Ljava/lang/String;)V

    .line 282
    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$500(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->setRuntime(Z)V

    goto/16 :goto_0

    .line 285
    :cond_6
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7

    .line 287
    .end local v6           #url:Ljava/lang/String;
    :cond_7
    const-string v7, "search-engine-disabled"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 288
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, enabled:Ljava/lang/String;
    if-eqz v2, :cond_8

    const-string v7, "true"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 291
    iget-object v7, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v7}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$300(Lcom/android/browser/SemcBrowserCustomizationParser;)Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserListener;->onNewSearchEngineSettingDisabled()V

    goto/16 :goto_0

    .line 294
    :cond_8
    const-string v7, "SemcBrowserCustomizationParser"

    const-string v8, "Wrong value or missing setting when trying to parse search-engine-disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 299
    .end local v2           #enabled:Ljava/lang/String;
    :cond_9
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Unknown Setting in Browser customization."

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 303
    .end local v0           #bRuntime:Z
    :cond_a
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Runtime settings missing"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private parserRun(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, done:Z
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$202(Lcom/android/browser/SemcBrowserCustomizationParser;I)I

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$200(Lcom/android/browser/SemcBrowserCustomizationParser;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    iget-object v2, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v2}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$100(Lcom/android/browser/SemcBrowserCustomizationParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$202(Lcom/android/browser/SemcBrowserCustomizationParser;I)I

    .line 147
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$200(Lcom/android/browser/SemcBrowserCustomizationParser;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$100(Lcom/android/browser/SemcBrowserCustomizationParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    .line 150
    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$100(Lcom/android/browser/SemcBrowserCustomizationParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->handleEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 161
    :cond_0
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->this$0:Lcom/android/browser/SemcBrowserCustomizationParser;

    invoke-static {v1}, Lcom/android/browser/SemcBrowserCustomizationParser;->access$100(Lcom/android/browser/SemcBrowserCustomizationParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->parserRun(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->handleResult(I)V

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/browser/SemcBrowserCustomizationParser$ParserThread;->handleResult(I)V

    goto :goto_0
.end method
