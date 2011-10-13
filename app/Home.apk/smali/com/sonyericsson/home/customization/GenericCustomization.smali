.class public abstract Lcom/sonyericsson/home/customization/GenericCustomization;
.super Ljava/lang/Object;
.source "GenericCustomization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/customization/GenericCustomization$1;,
        Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;,
        Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack",
            "<",
            "Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsMissingPackageAllowed:Z

.field protected mPendingPackageList:Lcom/sonyericsson/home/customization/PendingPackageList;

.field protected mType:Ljava/lang/String;

.field protected mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;-><init>(Lcom/sonyericsson/home/customization/GenericCustomization$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    .line 44
    new-instance v0, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;-><init>(Lcom/sonyericsson/home/customization/GenericCustomization$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    .line 47
    invoke-static {}, Lcom/sonyericsson/home/customization/PendingPackageList;->getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mPendingPackageList:Lcom/sonyericsson/home/customization/PendingPackageList;

    .line 101
    iput-object p1, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mIsMissingPackageAllowed:Z

    .line 104
    return-void
.end method


# virtual methods
.method public applyCustomization(IZ)V
    .locals 4
    .parameter "resId"
    .parameter "missingPackageAllowed"

    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 141
    .local v1, xml:Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/home/customization/GenericCustomization;->applyCustomization(Lorg/xmlpull/v1/XmlPullParser;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1           #xml:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 145
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v2, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v3, "Failed to find customization xml file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public applyCustomization(Landroid/net/Uri;Z)V
    .locals 4
    .parameter "customizationUri"
    .parameter "missingPackageAllowed"

    .prologue
    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 117
    .local v0, customization:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 118
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 119
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v2, p2}, Lcom/sonyericsson/home/customization/GenericCustomization;->applyCustomization(Lorg/xmlpull/v1/XmlPullParser;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 128
    .end local v0           #customization:Ljava/io/InputStream;
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    .line 122
    .restart local v0       #customization:Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    .end local v0           #customization:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 127
    :catch_1
    move-exception v3

    goto :goto_0

    .line 126
    :catch_2
    move-exception v3

    goto :goto_0

    .line 125
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public applyCustomization(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 12
    .parameter "xml"
    .parameter "missingPackageAllowed"

    .prologue
    .line 158
    iput-boolean p2, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mIsMissingPackageAllowed:Z

    .line 160
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-eqz v9, :cond_1

    .line 161
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v10, "Error: Wrong XML parser state"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 168
    .local v3, event:I
    if-nez v3, :cond_2

    .line 169
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 172
    :cond_2
    const/4 v9, 0x2

    if-ne v3, v9, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "settings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 173
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/sonyericsson/util/MathUtil;->parseInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mVersion:I

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    const/4 v1, 0x0

    .line 181
    .local v1, currentGroupType:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_0

    .line 182
    const/4 v9, 0x2

    if-ne v3, v9, :cond_9

    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, tagName:Ljava/lang/String;
    const-string v9, "setting"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 185
    const/4 v9, 0x0

    const-string v10, "key"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, key:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, value:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {v0, v6, v8}, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->putSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v8           #value:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x3

    const/4 v10, 0x0

    const-string v11, "setting"

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 221
    .end local v0           #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    .end local v1           #currentGroupType:Ljava/lang/String;
    .end local v3           #event:I
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 222
    .local v2, e:Ljava/io/IOException;
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v10, "Failed to read customization xml file"

    invoke-static {v9, v10, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 175
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #event:I
    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v10, "Error: Missing expected <settings> tag in customization xml file"

    invoke-static {v9, v10}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 223
    .end local v3           #event:I
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 224
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    const-string v10, "XML parsing failed"

    invoke-static {v9, v10, v2}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0       #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    .restart local v1       #currentGroupType:Ljava/lang/String;
    .restart local v3       #event:I
    .restart local v7       #tagName:Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v9, "group"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 196
    const/4 v9, 0x0

    const-string v10, "id"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, groupId:Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;

    .end local v0           #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .restart local v0       #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v9, v0}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 199
    .end local v5           #groupId:Ljava/lang/String;
    :cond_7
    const-string v9, "groups"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 200
    const/4 v9, 0x0

    const-string v10, "type"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v9, v1}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_1

    .line 203
    :cond_8
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mType:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring unknown tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 205
    .end local v7           #tagName:Ljava/lang/String;
    :cond_9
    const/4 v9, 0x3

    if-ne v3, v9, :cond_3

    .line 206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 208
    .restart local v7       #tagName:Ljava/lang/String;
    const-string v9, "group"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 209
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v9}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;

    .line 210
    .local v4, group:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    if-nez v4, :cond_a

    .line 211
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "Incorrect XML format"

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 213
    :cond_a
    iget-object v9, v4, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->type:Ljava/lang/String;

    iget-object v10, v4, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->id:Ljava/lang/String;

    invoke-static {v4}, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;->access$100(Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sonyericsson/home/customization/GenericCustomization;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 214
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroups:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v9}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->getTop()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    check-cast v0, Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;

    .line 215
    .restart local v0       #currentGroup:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    goto/16 :goto_1

    .end local v4           #group:Lcom/sonyericsson/home/customization/GenericCustomization$SettingsGroup;
    :cond_b
    const-string v9, "groups"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 216
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v9}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->pop()Ljava/lang/Object;

    .line 217
    iget-object v9, p0, Lcom/sonyericsson/home/customization/GenericCustomization;->mGroupTypes:Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;

    invoke-virtual {v9}, Lcom/sonyericsson/home/customization/GenericCustomization$ArrayStack;->getTop()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentGroupType:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v1       #currentGroupType:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected abstract handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
