.class Lcom/android/settings/vpn/L2tpIpsecEditor$2;
.super Ljava/lang/Object;
.source "L2tpIpsecEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/L2tpIpsecEditor;->createCaCertificatePreference(Landroid/content/Context;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/L2tpIpsecEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$2;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$2;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    invoke-static {v1}, Lcom/android/settings/vpn/L2tpIpsecEditor;->access$000(Lcom/android/settings/vpn/L2tpIpsecEditor;)Landroid/net/vpn/L2tpIpsecProfile;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v2, v1}, Landroid/net/vpn/L2tpIpsecProfile;->setCaCertificate(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/vpn/L2tpIpsecEditor$2;->this$0:Lcom/android/settings/vpn/L2tpIpsecEditor;

    const v2, 0x7f09044c

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/settings/vpn/L2tpIpsecEditor;->setSummary(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 99
    const/4 v1, 0x1

    return v1
.end method
