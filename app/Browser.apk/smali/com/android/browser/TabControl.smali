.class Lcom/android/browser/TabControl;
.super Ljava/lang/Object;
.source "TabControl.java"


# instance fields
.field private final mActivity:Lcom/android/browser/BrowserActivity;

.field private mCurrentTab:I

.field private mTabQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/16 v1, 0x8

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 64
    iput-object p1, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 65
    return-void
.end method

.method private createNewWebView()Landroid/webkit/WebView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 534
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 535
    .local v1, w:Landroid/webkit/WebView;
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 536
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 537
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 539
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 542
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 543
    .local v0, s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserSettings;->addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/browser/BrowserSettings$Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 556
    return-object v1
.end method

.method private getHalfLeastUsedTabs(Lcom/android/browser/Tab;)Ljava/util/Vector;
    .locals 6
    .parameter "current"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tab;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 369
    .local v3, tabsToGo:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-object v3

    .line 373
    :cond_1
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, openTabCount:I
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/Tab;

    .line 382
    .local v2, t:Lcom/android/browser/Tab;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 383
    add-int/lit8 v1, v1, 0x1

    .line 384
    if-eq v2, p1, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v4

    if-eq v2, v4, :cond_2

    .line 385
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v2           #t:Lcom/android/browser/Tab;
    :cond_3
    div-int/lit8 v1, v1, 0x2

    .line 391
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 392
    invoke-virtual {v3, v1}, Ljava/util/Vector;->setSize(I)V

    goto :goto_0
.end method

.method private setCurrentTab(Lcom/android/browser/Tab;Z)Z
    .locals 8
    .parameter "newTab"
    .parameter "force"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 586
    iget v4, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 587
    .local v0, current:Lcom/android/browser/Tab;
    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    move v4, v5

    .line 621
    :goto_0
    return v4

    .line 590
    :cond_0
    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {v0}, Lcom/android/browser/Tab;->putInBackground()V

    .line 592
    iput v6, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 594
    :cond_1
    if-nez p1, :cond_2

    move v4, v7

    .line 595
    goto :goto_0

    .line 599
    :cond_2
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 600
    .local v1, index:I
    if-eq v1, v6, :cond_3

    .line 601
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 603
    :cond_3
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 607
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 608
    .local v2, mainView:Landroid/webkit/WebView;
    if-nez v2, :cond_6

    move v3, v5

    .line 609
    .local v3, needRestore:Z
    :goto_1
    if-eqz v3, :cond_4

    .line 611
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 612
    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 614
    :cond_4
    invoke-virtual {p1}, Lcom/android/browser/Tab;->putInForeground()V

    .line 615
    if-eqz v3, :cond_5

    .line 617
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSavedState()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/browser/Tab;->restoreState(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 618
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_5
    move v4, v5

    .line 621
    goto :goto_0

    .end local v3           #needRestore:Z
    :cond_6
    move v3, v7

    .line 608
    goto :goto_1
.end method

.method private tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .locals 3
    .parameter "t"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 452
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 462
    :goto_0
    return v1

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 456
    .local v0, webview:Landroid/webkit/WebView;
    if-nez v0, :cond_1

    move v1, v2

    .line 457
    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 462
    goto :goto_0
.end method


# virtual methods
.method canCreateNewTab()Z
    .locals 2

    .prologue
    .line 150
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createNewTab()Lcom/android/browser/Tab;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 7
    .parameter "closeOnExit"
    .parameter "appId"
    .parameter "url"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 161
    .local v6, size:I
    const/16 v1, 0x8

    if-ne v1, v6, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 171
    :goto_0
    return-object v1

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 167
    .local v2, w:Landroid/webkit/WebView;
    new-instance v0, Lcom/android/browser/Tab;

    iget-object v1, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v0, t:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v0}, Lcom/android/browser/Tab;->putInBackground()V

    move-object v1, v0

    .line 171
    goto :goto_0
.end method

.method destroy()V
    .locals 3

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 243
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->destroy()V

    goto :goto_0

    .line 245
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 247
    return-void
.end method

.method findUnusedTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 471
    if-nez p1, :cond_0

    move-object v3, v4

    .line 487
    :goto_0
    return-object v3

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 476
    .local v2, t:Lcom/android/browser/Tab;
    if-eqz v2, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/android/browser/TabControl;->tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 477
    goto :goto_0

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 481
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 483
    invoke-direct {p0, v2, p1}, Lcom/android/browser/TabControl;->tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 484
    goto :goto_0

    .line 481
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 487
    goto :goto_0
.end method

.method freeMemory()V
    .locals 7

    .prologue
    const-string v6, "TabControl"

    .line 341
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/TabControl;->getHalfLeastUsedTabs(Lcom/android/browser/Tab;)Ljava/util/Vector;

    move-result-object v2

    .line 345
    .local v2, tabs:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 346
    const-string v4, "TabControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Free "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tabs in the browser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 349
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->saveState()Z

    .line 351
    invoke-virtual {v1}, Lcom/android/browser/Tab;->destroy()V

    goto :goto_1

    .line 357
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_2
    const-string v4, "TabControl"

    const-string v4, "Free WebView\'s unused memory and cache"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 359
    .local v3, view:Landroid/webkit/WebView;
    if-eqz v3, :cond_0

    .line 360
    invoke-virtual {v3}, Landroid/webkit/WebView;->freeMemory()V

    goto :goto_0
.end method

.method getBrowserActivity()Lcom/android/browser/BrowserActivity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    return v0
.end method

.method getCurrentSubWindow()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 102
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 103
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 106
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_0
.end method

.method getCurrentTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method getCurrentTopWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 90
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 91
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_0
.end method

.method getCurrentWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 77
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 78
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 81
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_0
.end method

.method getTab(I)Lcom/android/browser/Tab;
    .locals 1
    .parameter "index"

    .prologue
    .line 115
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/Tab;

    move-object v0, p0

    .line 118
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTabCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getTabFromId(Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 418
    if-nez p1, :cond_0

    move-object v3, v4

    .line 428
    :goto_0
    return-object v3

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 422
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 424
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 425
    goto :goto_0

    .line 422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #t:Lcom/android/browser/Tab;
    :cond_2
    move-object v3, v4

    .line 428
    goto :goto_0
.end method

.method getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/Tab;
    .locals 4
    .parameter "view"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 404
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 406
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-eq v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-ne v3, p1, :cond_1

    :cond_0
    move-object v3, v2

    .line 410
    .end local v2           #t:Lcom/android/browser/Tab;
    :goto_1
    return-object v3

    .line 404
    .restart local v2       #t:Lcom/android/browser/Tab;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .end local v2           #t:Lcom/android/browser/Tab;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getTabIndex(Lcom/android/browser/Tab;)I
    .locals 1
    .parameter "tab"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, -0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method pauseCurrentTab()V
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 570
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/android/browser/Tab;->pause()V

    .line 573
    :cond_0
    return-void
.end method

.method recreateWebView(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)Z
    .locals 5
    .parameter "t"
    .parameter "urlData"

    .prologue
    const/4 v4, 0x1

    .line 496
    iget-object v1, p2, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    .line 497
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 498
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_1

    .line 499
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/browser/BrowserActivity$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 506
    invoke-virtual {v2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 507
    .local v0, list:Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 509
    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 510
    const/4 v3, 0x0

    .line 526
    .end local v0           #list:Landroid/webkit/WebBackForwardList;
    :goto_0
    return v3

    .line 513
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->destroy()V

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 518
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 519
    invoke-direct {p0, p1, v4}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;Z)Z

    .line 522
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/browser/Tab;->setSavedState(Landroid/os/Bundle;)V

    .line 523
    invoke-virtual {p1}, Lcom/android/browser/Tab;->clearPickerData()V

    .line 525
    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->setOriginalUrl(Ljava/lang/String;)V

    move v3, v4

    .line 526
    goto :goto_0
.end method

.method removeParentChildRelationShips()V
    .locals 3

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 187
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->removeFromTree()V

    goto :goto_0

    .line 189
    .end local v1           #tab:Lcom/android/browser/Tab;
    :cond_0
    return-void
.end method

.method removeTab(Lcom/android/browser/Tab;)Z
    .locals 7
    .parameter "t"

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const/4 v6, 0x0

    .line 235
    :goto_0
    return v6

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 205
    .local v2, current:Lcom/android/browser/Tab;
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    if-ne v2, p1, :cond_2

    .line 209
    invoke-virtual {p1}, Lcom/android/browser/Tab;->putInBackground()V

    .line 210
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 218
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->destroy()V

    .line 220
    invoke-virtual {p1}, Lcom/android/browser/Tab;->removeFromTree()V

    .line 224
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/Tab;

    .line 225
    .local v5, tab:Lcom/android/browser/Tab;
    invoke-virtual {v5}, Lcom/android/browser/Tab;->getChildTabs()Ljava/util/Vector;

    move-result-object v1

    .line 226
    .local v1, children:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab;

    .line 228
    .local v0, child:Lcom/android/browser/Tab;
    invoke-virtual {v0, v5}, Lcom/android/browser/Tab;->setParentTab(Lcom/android/browser/Tab;)V

    goto :goto_2

    .line 214
    .end local v0           #child:Lcom/android/browser/Tab;
    .end local v1           #children:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #tab:Lcom/android/browser/Tab;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v6

    iput v6, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    goto :goto_1

    .line 234
    :cond_3
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    const/4 v6, 0x1

    goto :goto_0
.end method

.method restoreState(Landroid/os/Bundle;)Z
    .locals 13
    .parameter "inState"

    .prologue
    .line 282
    if-nez p1, :cond_0

    const/4 v1, -0x1

    move v9, v1

    .line 284
    .local v9, numTabs:I
    :goto_0
    const/4 v1, -0x1

    if-ne v9, v1, :cond_1

    .line 285
    const/4 v1, 0x0

    .line 333
    :goto_1
    return v1

    .line 282
    .end local v9           #numTabs:I
    :cond_0
    const-string v1, "numTabs"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v9, v1

    goto :goto_0

    .line 287
    .restart local v9       #numTabs:I
    :cond_1
    const-string v1, "currentTab"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 288
    .local v7, currentTab:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_5

    .line 289
    if-ne v8, v7, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 293
    .local v0, t:Lcom/android/browser/Tab;
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Tab;->restoreState(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 295
    const-string v1, "TabControl"

    const-string v2, "Fail in restoreState, load home page."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 288
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 302
    .end local v0           #t:Lcom/android/browser/Tab;
    :cond_3
    new-instance v0, Lcom/android/browser/Tab;

    iget-object v1, p0, Lcom/android/browser/TabControl;->mActivity:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 303
    .restart local v0       #t:Lcom/android/browser/Tab;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 304
    .local v12, state:Landroid/os/Bundle;
    if-eqz v12, :cond_4

    .line 305
    invoke-virtual {v0, v12}, Lcom/android/browser/Tab;->setSavedState(Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {v0}, Lcom/android/browser/Tab;->populatePickerDataFromSavedState()V

    .line 309
    const-string v1, "appid"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 310
    const-string v1, "originalUrl"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Tab;->setOriginalUrl(Ljava/lang/String;)V

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 319
    .end local v0           #t:Lcom/android/browser/Tab;
    .end local v12           #state:Landroid/os/Bundle;
    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v9, :cond_7

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 321
    .local v6, b:Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 322
    .restart local v0       #t:Lcom/android/browser/Tab;
    if-eqz v6, :cond_6

    if-eqz v0, :cond_6

    .line 323
    const-string v1, "parentTab"

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 324
    .local v11, parentIndex:I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_6

    .line 325
    invoke-virtual {p0, v11}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v10

    .line 326
    .local v10, parent:Lcom/android/browser/Tab;
    if-eqz v10, :cond_6

    .line 327
    invoke-virtual {v10, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 319
    .end local v10           #parent:Lcom/android/browser/Tab;
    .end local v11           #parentIndex:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 333
    .end local v0           #t:Lcom/android/browser/Tab;
    .end local v6           #b:Landroid/os/Bundle;
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method resumeCurrentTab()V
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 577
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/android/browser/Tab;->resume()V

    .line 580
    :cond_0
    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    .line 264
    .local v2, numTabs:I
    const-string v4, "numTabs"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 266
    .local v1, index:I
    const-string v4, "currentTab"

    if-ltz v1, :cond_1

    if-ge v1, v2, :cond_1

    move v5, v1

    :goto_0
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    .line 269
    .local v3, t:Lcom/android/browser/Tab;
    invoke-virtual {v3}, Lcom/android/browser/Tab;->saveState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/browser/Tab;->getSavedState()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v0           #i:I
    .end local v3           #t:Lcom/android/browser/Tab;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 273
    .restart local v0       #i:I
    :cond_2
    return-void
.end method

.method setCurrentTab(Lcom/android/browser/Tab;)Z
    .locals 1
    .parameter "newTab"

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;Z)Z

    move-result v0

    return v0
.end method

.method stopAllLoading()V
    .locals 5

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    .line 436
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    .line 438
    .local v3, t:Lcom/android/browser/Tab;
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 439
    .local v4, webview:Landroid/webkit/WebView;
    if-eqz v4, :cond_0

    .line 440
    invoke-virtual {v4}, Landroid/webkit/WebView;->stopLoading()V

    .line 442
    :cond_0
    invoke-virtual {v3}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 443
    .local v2, subview:Landroid/webkit/WebView;
    if-eqz v2, :cond_1

    .line 444
    invoke-virtual {v4}, Landroid/webkit/WebView;->stopLoading()V

    .line 436
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v2           #subview:Landroid/webkit/WebView;
    .end local v3           #t:Lcom/android/browser/Tab;
    .end local v4           #webview:Landroid/webkit/WebView;
    :cond_2
    return-void
.end method
