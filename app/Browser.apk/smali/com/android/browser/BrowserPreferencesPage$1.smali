.class Lcom/android/browser/BrowserPreferencesPage$1;
.super Ljava/lang/Object;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserPreferencesPage;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserPreferencesPage;

.field final synthetic val$websiteSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserPreferencesPage;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/browser/BrowserPreferencesPage$1;->this$0:Lcom/android/browser/BrowserPreferencesPage;

    iput-object p2, p0, Lcom/android/browser/BrowserPreferencesPage$1;->val$websiteSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserPreferencesPage$1;->onReceiveValue(Ljava/util/Map;)V

    return-void
.end method

.method public onReceiveValue(Ljava/util/Map;)V
    .locals 2
    .parameter "webStorageOrigins"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/browser/BrowserPreferencesPage$1;->val$websiteSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 117
    :cond_0
    return-void
.end method
