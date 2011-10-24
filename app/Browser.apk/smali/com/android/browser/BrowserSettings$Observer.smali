.class Lcom/android/browser/BrowserSettings$Observer;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Observer"
.end annotation


# instance fields
.field private mSettings:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings;)V
    .locals 0
    .parameter "w"

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 206
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v5, 0x1

    .line 209
    move-object v0, p1

    check-cast v0, Lcom/android/browser/BrowserSettings;

    move-object v1, v0

    .line 210
    .local v1, b:Lcom/android/browser/BrowserSettings;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings$Observer;->mSettings:Landroid/webkit/WebSettings;

    .line 212
    .local v2, s:Landroid/webkit/WebSettings;
    iget-object v3, v1, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 213
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    if-nez v3, :cond_1

    .line 216
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$100(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 227
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 228
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$400(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 229
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$500(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 230
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$600(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 232
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 234
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$900()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 235
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1000()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 236
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1100()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 237
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 238
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1300()Landroid/webkit/WebSettings$TextSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 239
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1400()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 240
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1500(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 241
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1600(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 242
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1700(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 243
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$1800(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 244
    invoke-static {}, Lcom/android/browser/BrowserSettings;->access$1900()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPageCacheCapacity(I)V

    .line 247
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 249
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 252
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2000(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 253
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2100(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 254
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2200(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 255
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2300(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setWorkersEnabled(Z)V

    .line 256
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2400(Lcom/android/browser/BrowserSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 259
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2500(Lcom/android/browser/BrowserSettings;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 260
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 261
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 262
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2800(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 264
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$2900(Lcom/android/browser/BrowserSettings;)V

    .line 265
    return-void

    .line 217
    :cond_1
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 218
    const-string v3, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_2
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 220
    const-string v3, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_3
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 222
    const-string v3, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_4
    invoke-static {v1}, Lcom/android/browser/BrowserSettings;->access$000(Lcom/android/browser/BrowserSettings;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 224
    const-string v3, "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
