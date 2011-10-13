.class public Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;
.super Ljava/lang/Object;
.source "SmartSliderSettingsWrapper.java"


# static fields
.field private static final CUSTOMIZATION_URI:Landroid/net/Uri; = null

.field private static final FIRST_TIME_KEY:Ljava/lang/String; = "first-time-started-static"

.field private static final KEY_SETTINGS_NAME_SELECTION:Ljava/lang/String; = "name=\'smartslider-enabled\'"

.field private static final KEY_SETTINGS_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_SETTINGS_VALUE_PROJECTION:[Ljava/lang/String; = null

.field private static final PREFERENCE_KEY:Ljava/lang/String; = "enabled-static"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "settings-static"

.field private static final SMARTSLIDER_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.smartslidersettings"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->KEY_SETTINGS_VALUE_PROJECTION:[Ljava/lang/String;

    .line 42
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.smartslider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->CUSTOMIZATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSettingsStore(Landroid/content/Context;)Z
    .locals 4
    .parameter "packageContext"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    const-string v1, "settings-static"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->isFirstTimeStarted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 93
    :goto_0
    return v1

    .line 88
    :cond_0
    if-eqz v0, :cond_1

    .line 89
    const-string v1, "enabled-static"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 90
    goto :goto_0

    :cond_1
    move v1, v2

    .line 93
    goto :goto_0
.end method

.method private static getCustomizedDefaultValue(Landroid/content/Context;)Z
    .locals 9
    .parameter "c"

    .prologue
    .line 123
    const/4 v7, 0x0

    .line 124
    .local v7, settingsCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 125
    .local v6, isEnabled:Ljava/lang/String;
    const/4 v8, 0x1

    .line 127
    .local v8, value:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->CUSTOMIZATION_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->KEY_SETTINGS_VALUE_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=\'smartslider-enabled\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 130
    if-eqz v7, :cond_0

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 138
    :cond_0
    if-eqz v7, :cond_1

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 144
    const-string v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const/4 v8, 0x1

    .line 150
    :cond_2
    :goto_1
    return v8

    .line 135
    :catch_0
    move-exception v0

    .line 138
    if-eqz v7, :cond_1

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v0

    .line 138
    if-eqz v7, :cond_1

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 146
    :cond_4
    const-string v0, "false"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, packageContext:Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 112
    :try_start_0
    const-string v1, "com.sonyericsson.smartslidersettings"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSmartSliderEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, isSmartSliderEnabled:Z
    if-eqz p0, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 56
    .local v0, config:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v7, :cond_0

    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-nez v6, :cond_1

    .line 58
    :cond_0
    const/4 v6, 0x0

    .line 76
    .end local v0           #config:Landroid/content/res/Configuration;
    :goto_0
    return v6

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 63
    .local v3, packageContext:Landroid/content/Context;
    if-eqz v3, :cond_3

    .line 64
    invoke-static {v3}, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->checkSettingsStore(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 65
    const-string v6, "settings-static"

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 67
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "enabled-static"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .local v4, returnValue:Z
    move v6, v4

    .line 68
    goto :goto_0

    .line 72
    .end local v4           #returnValue:Z
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_2
    invoke-static {v3}, Lcom/sonyericsson/home/smartslider/SmartSliderSettingsWrapper;->getCustomizedDefaultValue(Landroid/content/Context;)Z

    move-result v1

    .local v1, defaultVal:Z
    move v6, v1

    .line 73
    goto :goto_0

    .end local v1           #defaultVal:Z
    :cond_3
    move v6, v2

    .line 76
    goto :goto_0
.end method

.method private static isFirstTimeStarted(Landroid/content/Context;)Z
    .locals 3
    .parameter "packageContext"

    .prologue
    const/4 v2, 0x1

    .line 97
    const-string v1, "settings-static"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, sp:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v1, "first-time-started-static"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 104
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
