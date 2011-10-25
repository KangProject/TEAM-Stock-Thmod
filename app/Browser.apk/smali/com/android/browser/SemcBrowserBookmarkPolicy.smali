.class Lcom/android/browser/SemcBrowserBookmarkPolicy;
.super Ljava/lang/Object;
.source "SemcBrowserBookmarkPolicy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initializePolicy(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, bookmarkList:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;>;"
    const/4 v5, 0x0

    .line 39
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "semc-bookmark-editable"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editablePreferenceEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;

    .line 47
    .local v2, item:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
    invoke-virtual {v2}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->isEditable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    invoke-virtual {v2}, Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 51
    .end local v2           #item:Lcom/android/browser/SemcBrowserCustomizationParser$BookmarkItem;
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method static isEditable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "/"

    .line 58
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v2, v5

    .line 73
    :goto_0
    return v2

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "semc-bookmark-editable"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 64
    goto :goto_0

    .line 68
    :cond_2
    const-string v2, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, key:Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v5

    goto :goto_0

    .line 71
    .end local v0           #key:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #key:Ljava/lang/String;
    goto :goto_1

    :cond_4
    move v2, v4

    .line 73
    goto :goto_0
.end method
