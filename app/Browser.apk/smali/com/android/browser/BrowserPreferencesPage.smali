.class public Lcom/android/browser/BrowserPreferencesPage;
.super Landroid/preference/PreferenceActivity;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 45
    const-string v0, "BrowserPreferencesPage"

    iput-object v0, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 211
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 213
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 217
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 218
    const-string v3, ""

    move-object v3, v5

    .line 227
    :goto_0
    return-object v3

    .line 221
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 222
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    aget-object v3, v2, v1

    goto :goto_0

    .line 221
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method

.method private getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 191
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 193
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 197
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 198
    const-string v3, ""

    move-object v3, v5

    .line 207
    :goto_0
    return-object v3

    .line 201
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 202
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    aget-object v3, v2, v1

    goto :goto_0

    .line 201
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v6, "text_size"

    const-string v5, "homepage"

    const-string v4, "default_zoom"

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 55
    const-string v0, "homepage"

    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "homepage"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    check-cast v0, Lcom/android/browser/BrowserHomepagePreference;

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentPage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHomepagePreference;->setCurrentPage(Ljava/lang/String;)V

    .line 62
    const-string v0, "reset_default_preferences"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string v0, "text_size"

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "text_size"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    const-string v0, "default_zoom"

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "default_zoom"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    const-string v0, "default_text_encoding"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string v0, "privacy_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 87
    :cond_0
    const-string v0, "website_settings"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/browser/WebsiteSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 92
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getSearchEngineSettingDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "extras_parent"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 95
    if-eqz v0, :cond_1

    .line 96
    const-string v1, "search_engine"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 133
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 136
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reset_default_preferences"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    .line 141
    .local v2, value:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->finish()V

    .end local v2           #value:Ljava/lang/Boolean;
    .end local p2
    :cond_0
    move v3, v7

    .line 187
    .end local p1
    :goto_0
    return v3

    .line 144
    .restart local p1
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "homepage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 145
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 146
    .local v2, value:Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_4

    move v1, v6

    .line 147
    .local v1, needUpdate:Z
    :goto_1
    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "%20"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    const/4 v1, 0x1

    .line 155
    :cond_3
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    if-eqz v1, :cond_5

    .line 159
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move v3, v7

    .line 164
    goto :goto_0

    .end local v1           #needUpdate:Z
    .restart local p1
    :cond_4
    move v1, v7

    .line 146
    goto :goto_1

    .restart local v1       #needUpdate:Z
    :cond_5
    move v3, v6

    .line 166
    goto :goto_0

    .line 168
    .end local v1           #needUpdate:Z
    .end local v2           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text_size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 169
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualTextSizeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v6

    .line 170
    goto :goto_0

    .line 171
    .restart local p2
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default_zoom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 172
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v6

    .line 173
    goto/16 :goto_0

    .line 174
    .restart local p2
    :cond_8
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default_text_encoding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 176
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v6

    .line 177
    goto/16 :goto_0

    .line 178
    .restart local p2
    :cond_9
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "privacy_clear_history"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 182
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v8, v3}, Lcom/android/browser/BrowserPreferencesPage;->setResult(ILandroid/content/Intent;)V

    move v3, v6

    .line 184
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 109
    const-string v1, "website_settings"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 111
    .local v0, websiteSettings:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 112
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    new-instance v2, Lcom/android/browser/BrowserPreferencesPage$1;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/BrowserPreferencesPage$1;-><init>(Lcom/android/browser/BrowserPreferencesPage;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 119
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v1

    new-instance v2, Lcom/android/browser/BrowserPreferencesPage$2;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/BrowserPreferencesPage$2;-><init>(Lcom/android/browser/BrowserPreferencesPage;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 126
    return-void
.end method
