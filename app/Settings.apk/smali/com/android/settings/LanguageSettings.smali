.class public Lcom/android/settings/LanguageSettings;
.super Landroid/preference/PreferenceActivity;
.source "LanguageSettings.java"


# instance fields
.field private mCheckboxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/AlertDialog;

.field private mHaveHardKeyboard:Z

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePref:Landroid/preference/Preference;

.field private mLastInputMethodId:Ljava/lang/String;

.field private mLastTickedInputMethodId:Ljava/lang/String;

.field final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/LanguageSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    return-object p1
.end method

.method public static getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "key"

    .prologue
    .line 72
    return-object p0
.end method

.method private isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCreateIMM()V
    .locals 19

    .prologue
    .line 105
    const-string v15, "input_method"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 107
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "default_input_method"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 112
    const-string v15, "keyboard_settings_category"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 115
    .local v7, keyboardSettingsCategory:Landroid/preference/PreferenceGroup;
    if-eqz v7, :cond_6

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    if-nez v15, :cond_4

    const/4 v15, 0x0

    move v3, v15

    .line 118
    .local v3, N:I
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 120
    .local v11, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, prefKey:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 123
    .local v8, label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v14

    .line 126
    .local v14, systemIME:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    move v15, v0

    if-nez v15, :cond_0

    const/4 v15, 0x1

    if-le v3, v15, :cond_1

    if-nez v14, :cond_1

    .line 127
    :cond_0
    new-instance v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 128
    .local v4, chkbxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v4           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 136
    new-instance v10, Landroid/preference/PreferenceScreen;

    const/4 v15, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    .local v10, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v12

    .line 138
    .local v12, settingsActivity:Ljava/lang/String;
    const-string v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_2

    .line 139
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 141
    :cond_2
    invoke-virtual {v10, v12}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v15, 0x1

    if-ne v3, v15, :cond_5

    .line 144
    const v15, 0x7f090382

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    :goto_2
    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    .end local v10           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v12           #settingsActivity:Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 116
    .end local v3           #N:I
    .end local v5           #i:I
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #prefKey:Ljava/lang/String;
    .end local v11           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v14           #systemIME:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move v3, v15

    goto/16 :goto_0

    .line 146
    .restart local v3       #N:I
    .restart local v5       #i:I
    .restart local v8       #label:Ljava/lang/CharSequence;
    .restart local v9       #prefKey:Ljava/lang/String;
    .restart local v10       #prefScreen:Landroid/preference/PreferenceScreen;
    .restart local v11       #property:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v12       #settingsActivity:Ljava/lang/String;
    .restart local v14       #systemIME:Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090381

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, settingsLabel:Ljava/lang/CharSequence;
    invoke-virtual {v10, v13}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 154
    .end local v3           #N:I
    .end local v5           #i:I
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #prefKey:Ljava/lang/String;
    .end local v10           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v11           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v12           #settingsActivity:Ljava/lang/String;
    .end local v13           #settingsLabel:Ljava/lang/CharSequence;
    .end local v14           #systemIME:Z
    :cond_6
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const-string v4, "phone_language"

    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f040011

    invoke-static {v1, p0}, Lcom/android/settings/CustomizedSettings;->addPreferencesFromResource(ILandroid/preference/PreferenceActivity;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "phone_language"

    invoke-virtual {p0, v4}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 89
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "hardkeyboard_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->onCreateIMM()V

    .line 97
    return-void

    .line 85
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    const-string v1, "phone_language"

    invoke-virtual {p0, v4}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto :goto_0

    .line 93
    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    .line 333
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 14

    .prologue
    const/16 v10, 0x100

    const-string v13, ""

    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v1, builder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    .local v2, disabledSysImes:Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    .line 201
    .local v3, firstEnabled:I
    iget-object v10, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_8

    .line 203
    iget-object v10, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 204
    .local v8, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, id:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 206
    .local v7, pref:Landroid/preference/CheckBoxPreference;
    iget-object v10, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 207
    .local v4, hasIt:Z
    invoke-direct {p0, v8}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v9

    .line 208
    .local v9, systemIme:Z
    const/4 v10, 0x1

    if-eq v0, v10, :cond_0

    if-eqz v9, :cond_1

    :cond_0
    iget-boolean v10, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v10, :cond_2

    :cond_1
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 210
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    const/16 v10, 0x3a

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    if-gez v3, :cond_4

    .line 213
    move v3, v5

    .line 220
    :cond_4
    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v9, :cond_6

    iget-boolean v10, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v10, :cond_6

    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_5

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_7
    if-eqz v4, :cond_4

    .line 216
    iget-object v10, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_1

    .line 227
    .end local v4           #hasIt:Z
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/CheckBoxPreference;
    .end local v8           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v9           #systemIme:Z
    :cond_8
    iget-object v10, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v10, :cond_9

    const-string v10, ""

    iget-object v10, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 228
    :cond_9
    if-ltz v3, :cond_b

    .line 229
    iget-object v10, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 235
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_input_methods"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "disabled_system_input_methods"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "default_input_method"

    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    :goto_3
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    return-void

    .line 231
    :cond_b
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_2

    .line 239
    :cond_c
    const-string v12, ""

    move-object v12, v13

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 20
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 248
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 249
    const/4 v14, 0x0

    .line 323
    :goto_0
    return v14

    .line 252
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    move v14, v0

    if-eqz v14, :cond_8

    .line 253
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v6, v0

    .line 254
    .local v6, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/LanguageSettings;->getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 255
    .local v8, id:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 256
    const/4 v12, 0x0

    .line 257
    .local v12, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    .line 258
    .local v4, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v4, :cond_2

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 260
    .local v9, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 261
    move-object v12, v9

    .line 262
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 264
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 265
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v14

    goto :goto_0

    .line 258
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 269
    .end local v9           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 270
    if-nez v12, :cond_3

    .line 271
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v14

    goto :goto_0

    .line 273
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    move-object v14, v0

    if-nez v14, :cond_6

    .line 274
    new-instance v14, Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0a001b

    move-object v0, v14

    move-object/from16 v1, p0

    move v2, v15

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v15, 0x1040014

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x1080027

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x104000a

    new-instance v16, Lcom/android/settings/LanguageSettings$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/LanguageSettings$2;-><init>(Lcom/android/settings/LanguageSettings;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/high16 v15, 0x104

    new-instance v16, Lcom/android/settings/LanguageSettings$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings$1;-><init>(Lcom/android/settings/LanguageSettings;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    .line 298
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    move-object v14, v0

    const v15, 0x7f090366

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LanguageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 323
    .end local v4           #N:I
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #i:I
    .end local v8           #id:Ljava/lang/String;
    .end local v12           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    :goto_3
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v14

    goto/16 :goto_0

    .line 294
    .restart local v4       #N:I
    .restart local v6       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v7       #i:I
    .restart local v8       #id:Ljava/lang/String;
    .restart local v12       #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mDialog:Landroid/app/AlertDialog;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_2

    .line 302
    .end local v4           #N:I
    .end local v7           #i:I
    .end local v12           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 303
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    goto :goto_3

    .line 305
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v8           #id:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    move v14, v0

    if-eqz v14, :cond_5

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v14

    if-nez v14, :cond_5

    .line 307
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v11, v0

    .line 308
    .local v11, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, activityName:Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "."

    invoke-virtual {v5, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, packageName:Ljava/lang/String;
    const-string v14, "/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 312
    .local v13, slash:I
    if-lez v13, :cond_9

    .line 313
    const/4 v14, 0x0

    invoke-virtual {v5, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 314
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 316
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_5

    .line 317
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v7, i:Landroid/content/Intent;
    invoke-virtual {v7, v10, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 158
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 160
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v2, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_input_methods"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, enabledStr:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 164
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 165
    .local v8, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v8, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 166
    :goto_0
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .end local v8           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 173
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 174
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, id:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 177
    .local v7, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_1

    .line 178
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    .end local v5           #id:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 183
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v9, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 185
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v10, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, locale:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_3

    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v6           #locale:Ljava/lang/String;
    :cond_3
    return-void
.end method
