.class public Lcom/android/settings/CustomizedSettings;
.super Ljava/lang/Object;
.source "CustomizedSettings.java"


# static fields
.field private static mUseCachedValues:Z

.field private static sDisabledSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGeneralSettings:Ljava/util/HashMap;
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

.field private static sRemovedSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/CustomizedSettings;->mUseCachedValues:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPreferencesFromResource(ILandroid/preference/PreferenceActivity;)V
    .locals 10
    .parameter "resource"
    .parameter "activity"

    .prologue
    const-string v9, "CustomizedSettings"

    .line 91
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 92
    invoke-static {p1}, Lcom/android/settings/CustomizedSettings;->getSettingsToBeDisabled(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 94
    .local v1, disabledSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 96
    .local v4, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, disabledSetting:Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 98
    .local v3, pref:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 99
    const-string v7, "CustomizedSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disabling preference "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 105
    .end local v0           #disabledSetting:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_1
    invoke-static {p1}, Lcom/android/settings/CustomizedSettings;->getSettingsToBeRemoved(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 107
    .local v6, removedSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 108
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 109
    .restart local v4       #prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 110
    .local v5, removeSetting:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 111
    .restart local v3       #pref:Landroid/preference/Preference;
    if-eqz v3, :cond_2

    .line 112
    const-string v7, "CustomizedSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing preference "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 117
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pref:Landroid/preference/Preference;
    .end local v4           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v5           #removeSetting:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static getCustomizedSettings(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const-string v7, "CustomizedSettings"

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 148
    .local v2, parseInput:Ljava/io/InputStream;
    :try_start_0
    const-string v4, "content://com.sonyericsson.provider.customization/settings/com.android.settings"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 150
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 157
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;

    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;

    .line 159
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;

    .line 160
    sget-object v4, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;

    invoke-static {v2, v4, v5, v6}, Lcom/android/settings/CustomizedSettings;->parseSettings(Ljava/io/InputStream;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :goto_0
    if-eqz v2, :cond_0

    .line 166
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 151
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 153
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 161
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 162
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CustomizedSettings"

    const-string v4, "Failed to apply customized settings"

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 168
    .local v1, e:Ljava/io/IOException;
    const-string v4, "CustomizedSettings"

    const-string v4, "Failed to close input stream"

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static declared-synchronized getGeneralCustomizedSettings(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const-class v0, Lcom/android/settings/CustomizedSettings;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/settings/CustomizedSettings;->mUseCachedValues:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 217
    sget-object v1, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    monitor-exit v0

    return-object v1

    .line 220
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getCustomizedSettings(Landroid/content/Context;)V

    .line 222
    sget-object v1, Lcom/android/settings/CustomizedSettings;->sGeneralSettings:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getGeneralSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ctx"
    .parameter "key"

    .prologue
    .line 128
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getGeneralCustomizedSettings(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 129
    .local v0, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 132
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getSettingsToBeDisabled(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const-class v0, Lcom/android/settings/CustomizedSettings;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/settings/CustomizedSettings;->mUseCachedValues:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 184
    sget-object v1, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :goto_0
    monitor-exit v0

    return-object v1

    .line 187
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getCustomizedSettings(Landroid/content/Context;)V

    .line 189
    sget-object v1, Lcom/android/settings/CustomizedSettings;->sDisabledSettings:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getSettingsToBeRemoved(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    const-class v0, Lcom/android/settings/CustomizedSettings;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/settings/CustomizedSettings;->mUseCachedValues:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :goto_0
    monitor-exit v0

    return-object v1

    .line 206
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/settings/CustomizedSettings;->getCustomizedSettings(Landroid/content/Context;)V

    .line 208
    sget-object v1, Lcom/android/settings/CustomizedSettings;->sRemovedSettings:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static parseSettings(Ljava/io/InputStream;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 7
    .parameter "input"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, disabledList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, generalSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 229
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 263
    :cond_0
    return-void

    .line 234
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 236
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v2, :cond_0

    .line 237
    invoke-interface {v2, p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, eventType:I
    const/4 v4, 0x0

    .line 241
    .local v4, tag:Ljava/lang/String;
    const/4 v3, 0x0

    .line 243
    .local v3, setting:Ljava/lang/String;
    :goto_0
    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    .line 244
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 245
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 246
    const-string v5, "setting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    const-string v5, "key"

    invoke-interface {v2, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, action:Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 250
    const-string v5, "remove"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 252
    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    const-string v5, "disable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 253
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_4
    invoke-virtual {p3, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
