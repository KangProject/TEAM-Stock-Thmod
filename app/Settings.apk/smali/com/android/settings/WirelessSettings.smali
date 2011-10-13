.class public Lcom/android/settings/WirelessSettings;
.super Landroid/preference/PreferenceActivity;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 84
    :goto_0
    return v1

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 176
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 177
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 182
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const-string v13, "tether_settings"

    const-string v12, "bluetooth"

    const-string v11, "toggle_airplane"

    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v9, 0x7f04002b

    invoke-virtual {p0, v9}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 93
    const-string v9, "toggle_airplane"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 94
    .local v0, airplane:Landroid/preference/CheckBoxPreference;
    const-string v9, "toggle_wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 95
    .local v7, wifi:Landroid/preference/CheckBoxPreference;
    const-string v9, "toggle_bluetooth"

    invoke-virtual {p0, v9}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 96
    .local v1, bt:Landroid/preference/CheckBoxPreference;
    const-string v9, "toggle_nfc"

    invoke-virtual {p0, v9}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 98
    .local v3, nfc:Landroid/preference/CheckBoxPreference;
    new-instance v9, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v9, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 99
    const-string v9, "toggle_airplane"

    invoke-virtual {p0, v11}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 100
    new-instance v9, Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v9, p0, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 101
    new-instance v9, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v9, p0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v9, p0, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 102
    new-instance v9, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v9, p0, v3}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v9, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_toggleable_radios"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, toggleable:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v9, "wifi"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 109
    :cond_0
    const-string v9, "toggle_airplane"

    invoke-virtual {v7, v11}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 110
    const-string v9, "wifi_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const-string v10, "toggle_airplane"

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 111
    const-string v9, "vpn_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const-string v10, "toggle_airplane"

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 115
    :cond_1
    if-eqz v5, :cond_2

    const-string v9, "bluetooth"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 116
    :cond_2
    const-string v9, "toggle_airplane"

    invoke-virtual {v1, v11}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 117
    const-string v9, "bt_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const-string v10, "toggle_airplane"

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 121
    :cond_3
    const-string v9, "bluetooth"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    :cond_4
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v9

    if-nez v9, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_5
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 133
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v9

    if-nez v9, :cond_6

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "tether_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :goto_0
    return-void

    .line 136
    :cond_6
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, usbRegexs:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, wifiRegexs:[Ljava/lang/String;
    const-string v9, "tether_settings"

    invoke-virtual {p0, v13}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 139
    .local v4, p:Landroid/preference/Preference;
    array-length v9, v8

    if-nez v9, :cond_7

    .line 140
    const v9, 0x7f090296

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 141
    const v9, 0x7f090299

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 143
    :cond_7
    array-length v9, v6

    if-nez v9, :cond_8

    .line 144
    const v9, 0x7f090297

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 145
    const v9, 0x7f09029a

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 147
    :cond_8
    const v9, 0x7f090298

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 148
    const v9, 0x7f09029b

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 172
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mBtEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 162
    return-void
.end method
