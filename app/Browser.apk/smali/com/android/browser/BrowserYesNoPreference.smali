.class Lcom/android/browser/BrowserYesNoPreference;
.super Lcom/android/internal/preference/YesNoPreference;
.source "BrowserYesNoPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/preference/YesNoPreference;->onDialogClosed(Z)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserYesNoPreference;->setEnabled(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    .local v0, context:Landroid/content/Context;
    const-string v2, "privacy_clear_cache"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->clearCache(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->clearDatabases(Landroid/content/Context;)V

    .line 73
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    const-string v2, "privacy_clear_cookies"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->clearCookies(Landroid/content/Context;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v2, "privacy_clear_history"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 54
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->clearHistory(Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :cond_3
    const-string v2, "privacy_clear_form_data"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->clearFormData(Landroid/content/Context;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v2, "privacy_clear_passwords"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->clearPasswords(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_5
    const-string v2, "reset_default_preferences"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->resetDefaultPreferences(Landroid/content/Context;)V

    .line 63
    new-instance v1, Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/browser/SemcBrowserCustomization;-><init>(Landroid/content/Context;Lcom/android/browser/BrowserSettings;Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;)V

    .line 65
    .local v1, cust:Lcom/android/browser/SemcBrowserCustomization;
    invoke-virtual {v1}, Lcom/android/browser/SemcBrowserCustomization;->doCustomization()V

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserYesNoPreference;->setEnabled(Z)V

    goto :goto_0

    .line 68
    .end local v1           #cust:Lcom/android/browser/SemcBrowserCustomization;
    :cond_6
    const-string v2, "privacy_clear_geolocation_access"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/BrowserSettings;->clearLocationAccess(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
