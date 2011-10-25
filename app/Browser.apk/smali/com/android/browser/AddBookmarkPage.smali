.class public Lcom/android/browser/AddBookmarkPage;
.super Landroid/app/Activity;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;
    }
.end annotation


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mAddress:Landroid/widget/EditText;

.field private mButton:Landroid/widget/TextView;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mCancelButton:Landroid/view/View;

.field private mEditingExisting:Z

.field private mHandler:Landroid/os/Handler;

.field private mMap:Landroid/os/Bundle;

.field private mOriginalUrl:Ljava/lang/String;

.field private mSaveBookmark:Landroid/view/View$OnClickListener;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTitle:Landroid/widget/EditText;

.field private mTouchIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->LOGTAG:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/android/browser/AddBookmarkPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$1;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lcom/android/browser/AddBookmarkPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$2;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AddBookmarkPage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method private createHandler()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/android/browser/AddBookmarkPage$3;

    invoke-direct {v0, p0}, Lcom/android/browser/AddBookmarkPage$3;-><init>(Lcom/android/browser/AddBookmarkPage;)V

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x3

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v6}, Lcom/android/browser/AddBookmarkPage;->requestWindowFeature(I)Z

    .line 78
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->setContentView(I)V

    .line 79
    const v4, 0x7f080032

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f020026

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 84
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 85
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "bookmark"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 87
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 88
    iput-object v1, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    .line 89
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    .line 90
    const v4, 0x7f080033

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->setTitle(I)V

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #url:Ljava/lang/String;
    iput-object v3, p0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    .line 94
    .restart local v3       #url:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "touch_icon_url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    .line 95
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    const-string v5, "thumbnail"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mThumbnail:Landroid/graphics/Bitmap;

    .line 98
    .end local v1           #b:Landroid/os/Bundle;
    :cond_1
    const v4, 0x7f0c0002

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    .line 99
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v4, 0x7f0c000e

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    .line 101
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage;->mSaveBookmark:Landroid/view/View$OnClickListener;

    .line 104
    .local v0, accept:Landroid/view/View$OnClickListener;
    const v4, 0x7f0c000f

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    .line 105
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v4, 0x7f0c0010

    invoke-virtual {p0, v4}, Lcom/android/browser/AddBookmarkPage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    .line 108
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mCancelButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/browser/AddBookmarkPage;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    iget-object v4, p0, Lcom/android/browser/AddBookmarkPage;->mButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 113
    :cond_2
    return-void
.end method

.method save()Z
    .locals 20

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->createHandler()V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 179
    .local v13, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 181
    .local v14, unfilteredUrl:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 182
    .local v7, emptyTitle:Z
    :goto_0
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    const/16 v17, 0x1

    move/from16 v8, v17

    .line 183
    .local v8, emptyUrl:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 184
    .local v10, r:Landroid/content/res/Resources;
    if-nez v7, :cond_0

    if-eqz v8, :cond_5

    .line 185
    :cond_0
    if-eqz v7, :cond_1

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTitle:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f08003d

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 188
    :cond_1
    if-eqz v8, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f08003e

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 191
    :cond_2
    const/16 v17, 0x0

    .line 248
    :goto_2
    return v17

    .line 181
    .end local v7           #emptyTitle:Z
    .end local v8           #emptyUrl:Z
    .end local v10           #r:Landroid/content/res/Resources;
    :cond_3
    const/16 v17, 0x0

    move/from16 v7, v17

    goto :goto_0

    .line 182
    .restart local v7       #emptyTitle:Z
    :cond_4
    const/16 v17, 0x0

    move/from16 v8, v17

    goto :goto_1

    .line 193
    .restart local v8       #emptyUrl:Z
    .restart local v10       #r:Landroid/content/res/Resources;
    :cond_5
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, url:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "javascript:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 199
    new-instance v15, Ljava/net/URI;

    invoke-direct/range {v15 .. v16}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 200
    .local v15, uriObj:Ljava/net/URI;
    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 201
    .local v11, scheme:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 205
    if-eqz v11, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f080040

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/16 v17, 0x0

    goto :goto_2

    .line 211
    :cond_6
    :try_start_1
    new-instance v4, Landroid/net/WebAddress;

    invoke-direct {v4, v14}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    .local v4, address:Landroid/net/WebAddress;
    :try_start_2
    move-object v0, v4

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_7

    .line 216
    new-instance v17, Ljava/net/URISyntaxException;

    const-string v18, ""

    const-string v19, ""

    invoke-direct/range {v17 .. v19}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    .end local v4           #address:Landroid/net/WebAddress;
    .end local v11           #scheme:Ljava/lang/String;
    .end local v15           #uriObj:Ljava/net/URI;
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 222
    .local v6, e:Ljava/net/URISyntaxException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mAddress:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f08003f

    move-object v0, v10

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 223
    const/16 v17, 0x0

    goto :goto_2

    .line 212
    .end local v6           #e:Ljava/net/URISyntaxException;
    .restart local v11       #scheme:Ljava/lang/String;
    .restart local v15       #uriObj:Ljava/net/URI;
    :catch_1
    move-exception v17

    move-object/from16 v6, v17

    .line 213
    .local v6, e:Landroid/net/ParseException;
    :try_start_3
    new-instance v17, Ljava/net/URISyntaxException;

    const-string v18, ""

    const-string v19, ""

    invoke-direct/range {v17 .. v19}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v17

    .line 218
    .end local v6           #e:Landroid/net/ParseException;
    .restart local v4       #address:Landroid/net/WebAddress;
    :cond_7
    invoke-virtual {v4}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v16

    .line 226
    .end local v4           #address:Landroid/net/WebAddress;
    .end local v11           #scheme:Ljava/lang/String;
    .end local v15           #uriObj:Ljava/net/URI;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/AddBookmarkPage;->mEditingExisting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "invalidateThumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x1

    :goto_3
    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    const/16 v17, -0x1

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mMap:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/AddBookmarkPage;->setResult(ILandroid/content/Intent;)V

    .line 248
    :goto_4
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 229
    :cond_9
    const/16 v19, 0x0

    goto :goto_3

    .line 234
    :cond_a
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v5, bundle:Landroid/os/Bundle;
    const-string v17, "title"

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v17, "url"

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v17, "thumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    const-string v17, "invalidateThumbnail"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mOriginalUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const/16 v18, 0x1

    :goto_5
    move-object v0, v5

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v17, "touchIconUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/AddBookmarkPage;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x64

    invoke-static/range {v17 .. v18}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 241
    .local v9, msg:Landroid/os/Message;
    invoke-virtual {v9, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 243
    new-instance v12, Ljava/lang/Thread;

    new-instance v17, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/AddBookmarkPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/AddBookmarkPage$SaveBookmarkRunnable;-><init>(Lcom/android/browser/AddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    .local v12, t:Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 245
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/AddBookmarkPage;->setResult(I)V

    .line 246
    const-string v17, "bookmarkview"

    invoke-static/range {v16 .. v17}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 238
    .end local v9           #msg:Landroid/os/Message;
    .end local v12           #t:Ljava/lang/Thread;
    :cond_b
    const/16 v18, 0x0

    goto :goto_5
.end method
