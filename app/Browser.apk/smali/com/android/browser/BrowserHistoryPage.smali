.class public Lcom/android/browser/BrowserHistoryPage;
.super Landroid/app/ExpandableListActivity;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;,
        Lcom/android/browser/BrowserHistoryPage$IconReceiver;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

.field private mContextHeader:Lcom/android/browser/BookmarkItem;

.field private mDisableNewWindow:Z

.field private final mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/BrowserHistoryPage$IconReceiver;-><init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$1;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserHistoryPage;)Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 94
    :try_start_0
    const-string v2, "clipboard"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 95
    .local v0, clip:Landroid/text/IClipboard;
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 99
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "browser"

    const-string v3, "Copy failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadUrl(Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "newWindow"

    .prologue
    .line 82
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "new_window"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 88
    .end local v0           #b:Landroid/os/Bundle;
    :cond_0
    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/browser/BrowserHistoryPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->finish()V

    .line 90
    return-void
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getParent()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->setResultFromChild(ILandroid/content/Intent;)V

    .line 309
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 296
    instance-of v0, p2, Lcom/android/browser/HistoryItem;

    if-eqz v0, :cond_0

    .line 297
    check-cast p2, Lcom/android/browser/HistoryItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserHistoryPage;->loadUrl(Ljava/lang/String;Z)V

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    .restart local p2
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 253
    .local v1, i:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-object v0, v1, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/android/browser/HistoryItem;

    .line 254
    .local v0, historyItem:Lcom/android/browser/HistoryItem;
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, title:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 290
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 258
    :sswitch_0
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/browser/BrowserHistoryPage;->loadUrl(Ljava/lang/String;Z)V

    move v4, v5

    .line 259
    goto :goto_0

    .line 261
    :sswitch_1
    invoke-direct {p0, v3, v5}, Lcom/android/browser/BrowserHistoryPage;->loadUrl(Ljava/lang/String;Z)V

    move v4, v5

    .line 262
    goto :goto_0

    .line 264
    :sswitch_2
    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p0, v4, v3, v2}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v4, v5

    .line 270
    goto :goto_0

    .line 268
    :cond_0
    invoke-static {p0, v2, v3}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :sswitch_3
    const v4, 0x7f080061

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserHistoryPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 274
    goto :goto_0

    .line 276
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserHistoryPage;->copy(Ljava/lang/CharSequence;)V

    move v4, v5

    .line 277
    goto :goto_0

    .line 279
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 280
    iget-object v4, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v4}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->refreshData()V

    move v4, v5

    .line 281
    goto :goto_0

    .line 283
    :sswitch_6
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    const v4, 0x7f08003c

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 286
    goto :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c005f -> :sswitch_0
        0x7f0c0060 -> :sswitch_1
        0x7f0c0063 -> :sswitch_3
        0x7f0c0064 -> :sswitch_4
        0x7f0c0065 -> :sswitch_5
        0x7f0c0066 -> :sswitch_6
        0x7f0c00a1 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 105
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->setTitle(I)V

    .line 108
    const-string v11, "visits > 0 AND date > 0"

    .line 116
    .local v11, whereClause:Ljava/lang/String;
    const-string v8, "date DESC"

    .line 118
    .local v8, orderBy:Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "visits > 0 AND date > 0"

    const-string v5, "date DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserHistoryPage;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p0, v6, v1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;-><init>(Lcom/android/browser/BrowserHistoryPage;Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    .line 125
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserHistoryPage;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    .line 127
    .local v7, list:Landroid/widget/ExpandableListView;
    invoke-virtual {v7, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 128
    new-instance v10, Landroid/view/ViewStub;

    const v0, 0x7f030009

    invoke-direct {v10, p0, v0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 129
    .local v10, v:Landroid/view/View;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10, v0}, Lcom/android/browser/BrowserHistoryPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {v7, v10}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$1;

    invoke-direct {v0, p0, v7}, Lcom/android/browser/BrowserHistoryPage$1;-><init>(Lcom/android/browser/BrowserHistoryPage;Landroid/widget/ExpandableListView;)V

    invoke-virtual {v7, v0}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "disable_new_window"

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserHistoryPage;->mDisableNewWindow:Z

    .line 148
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    invoke-virtual {v0, v1}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->addListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getParent()Landroid/app/Activity;

    move-result-object v9

    .line 152
    .local v9, parent:Landroid/app/Activity;
    if-eqz v9, :cond_1

    instance-of v0, v9, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    if-nez v0, :cond_2

    .line 154
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "history page can only be viewed as a tabin CombinedBookmarkHistoryActivity"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 159
    :cond_2
    invoke-direct {p0, v13, v4}, Lcom/android/browser/BrowserHistoryPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v10, 0x0

    .line 204
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v2, v0

    .line 207
    .local v2, i:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-object v8, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v8, v8, Lcom/android/browser/HistoryItem;

    if-nez v8, :cond_0

    .line 247
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 213
    .local v3, inflater:Landroid/view/MenuInflater;
    const v8, 0x7f0b0009

    invoke-virtual {v3, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 215
    iget-object v1, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/HistoryItem;

    .line 219
    .local v1, historyItem:Lcom/android/browser/HistoryItem;
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    if-nez v8, :cond_4

    .line 220
    new-instance v8, Lcom/android/browser/BookmarkItem;

    invoke-direct {v8, p0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    .line 224
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v1, v8}, Lcom/android/browser/HistoryItem;->copyTo(Lcom/android/browser/BookmarkItem;)V

    .line 225
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 228
    iget-boolean v8, p0, Lcom/android/browser/BrowserHistoryPage;->mDisableNewWindow:Z

    if-eqz v8, :cond_2

    .line 229
    const v8, 0x7f0c0060

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    :cond_2
    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->isBookmark()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 233
    const v8, 0x7f0c00a1

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 234
    .local v4, item:Landroid/view/MenuItem;
    const v8, 0x7f080037

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 236
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/browser/HistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/browser/SemcBrowserBookmarkPolicy;->isEditable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 240
    .end local v4           #item:Landroid/view/MenuItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 241
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v7, send:Landroid/content/Intent;
    const-string v8, "text/plain"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/high16 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 244
    .local v6, ri:Landroid/content/pm/ResolveInfo;
    const v8, 0x7f0c0063

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v6, :cond_5

    const/4 v9, 0x1

    :goto_2
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    invoke-super {p0, p1, p2, p3}, Landroid/app/ExpandableListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 221
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #ri:Landroid/content/pm/ResolveInfo;
    .end local v7           #send:Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v8}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 222
    iget-object v8, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v8}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/browser/BrowserHistoryPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    .restart local v6       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v7       #send:Landroid/content/Intent;
    :cond_5
    move v9, v10

    .line 244
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 173
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 165
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage;->mIconReceiver:Lcom/android/browser/BrowserHistoryPage$IconReceiver;

    invoke-virtual {v0, v1}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->removeListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 167
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 187
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-virtual {v0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->removeParentChildRelationShips()V

    .line 192
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->refreshData()V

    .line 193
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00a0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 179
    const v0, 0x7f0c00a0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Browser;->canClearHistory(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    const/4 v0, 0x1

    return v0
.end method
