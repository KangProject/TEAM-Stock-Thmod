.class Landroid/app/SuggestionsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DELETE_KEY_POST_DELAY:J = 0x1f4L

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field static final NONE:I = -0x1

.field private static final QUERY_LIMIT:I = 0x32


# instance fields
.field private mBackgroundColorCol:I

.field private mBackgroundsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/content/Context;

.field private mSearchDialog:Landroid/app/SearchDialog;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private final mStartSpinnerRunnable:Ljava/lang/Runnable;

.field private final mStopSpinnerRunnable:Ljava/lang/Runnable;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchDialog;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 4
    .parameter "context"
    .parameter "searchDialog"
    .parameter "searchable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/SearchDialog;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p4, outsideDrawablesCache:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const v1, 0x1090062

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/SuggestionsAdapter;->mClosed:Z

    .line 103
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 104
    iput-object p2, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    .line 105
    iput-object p3, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 108
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v2, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, activityContext:Landroid/content/Context;
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v2, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/app/SearchableInfo;->getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 111
    iput-object p4, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 112
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mBackgroundsCache:Landroid/util/SparseArray;

    .line 114
    new-instance v1, Landroid/app/SuggestionsAdapter$1;

    invoke-direct {v1, p0}, Landroid/app/SuggestionsAdapter$1;-><init>(Landroid/app/SuggestionsAdapter;)V

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mStartSpinnerRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance v1, Landroid/app/SuggestionsAdapter$2;

    invoke-direct {v1, p0}, Landroid/app/SuggestionsAdapter$2;-><init>(Landroid/app/SuggestionsAdapter;)V

    iput-object v1, p0, Landroid/app/SuggestionsAdapter;->mStopSpinnerRunnable:Ljava/lang/Runnable;

    .line 127
    invoke-virtual {p0}, Landroid/app/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    new-instance v2, Landroid/app/SuggestionsAdapter$3;

    invoke-direct {v2, p0}, Landroid/app/SuggestionsAdapter$3;-><init>(Landroid/app/SuggestionsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->setDelayer(Landroid/widget/Filter$Delayer;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Landroid/app/SuggestionsAdapter;)Landroid/app/SearchDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    return-object v0
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "resourceUri"

    .prologue
    .line 582
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 583
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 584
    const/4 v1, 0x0

    .line 587
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 333
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 334
    .local v6, colorValue:Landroid/util/TypedValue;
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x1010267

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 335
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 338
    .end local v6           #colorValue:Landroid/util/TypedValue;
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 339
    .local v7, text:Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 342
    return-object v7
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "component"

    .prologue
    const/4 v8, 0x0

    const-string v9, "SuggestionsAdapter"

    .line 660
    iget-object v6, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 663
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 668
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 669
    .local v3, iconId:I
    if-nez v3, :cond_0

    move-object v6, v8

    .line 677
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #iconId:I
    :goto_0
    return-object v6

    .line 664
    :catch_0
    move-exception v2

    .line 665
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "SuggestionsAdapter"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 666
    goto :goto_0

    .line 670
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v3       #iconId:I
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, pkg:Ljava/lang/String;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v3, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 672
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 673
    const-string v6, "SuggestionsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid icon resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 675
    goto :goto_0

    :cond_1
    move-object v6, v1

    .line 677
    goto :goto_0
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "component"

    .prologue
    const/4 v5, 0x0

    .line 638
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, componentIconKey:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 641
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 642
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    move-object v4, v5

    .line 649
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v4

    .line 642
    .restart local v0       #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 645
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 647
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    move-object v3, v5

    .line 648
    .local v3, toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 649
    goto :goto_0

    .line 647
    .end local v3           #toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    move-object v3, v4

    goto :goto_1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 689
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 690
    .local v0, col:I
    invoke-static {p0, v0}, Landroid/app/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 605
    const-string v3, "suggest_intent_component"

    invoke-static {p1, v3}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, c:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 607
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 608
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 609
    invoke-direct {p0, v1}, Landroid/app/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 610
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 625
    .end local v1           #component:Landroid/content/ComponentName;
    :goto_0
    return-object v3

    .line 614
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #component:Landroid/content/ComponentName;
    :cond_0
    const-string v3, "SuggestionsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad component name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_1
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 620
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 621
    goto :goto_0

    .line 625
    :cond_2
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v10, 0x0

    const-string v5, "Error closing icon stream for "

    const-string v9, "SuggestionsAdapter"

    .line 549
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, scheme:Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 552
    iget-object v5, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 555
    .local v2, r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_1
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v6, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 577
    .end local v2           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v3           #scheme:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 556
    .restart local v2       #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    .restart local v3       #scheme:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 557
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 575
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    .end local v3           #scheme:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 576
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "SuggestionsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    .line 577
    goto :goto_0

    .line 561
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v3       #scheme:Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v5, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 562
    .local v4, stream:Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 563
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 566
    :cond_1
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 569
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 570
    :catch_2
    move-exception v0

    .line 571
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing icon stream for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 568
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 569
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 568
    :goto_1
    :try_start_8
    throw v5

    .line 570
    :catch_3
    move-exception v0

    .line 571
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing icon stream for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "drawableId"

    .prologue
    const/4 v8, 0x0

    .line 506
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v8

    .line 538
    :goto_0
    return-object v5

    .line 511
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 513
    .local v3, resourceId:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, drawableUri:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 517
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    move-object v5, v0

    .line 518
    goto :goto_0

    .line 521
    :cond_2
    iget-object v5, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 523
    invoke-direct {p0, v1, v0}, Landroid/app/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v0

    .line 524
    goto :goto_0

    .line 525
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableUri:Ljava/lang/String;
    .end local v3           #resourceId:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 527
    .local v2, nfe:Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Landroid/app/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 528
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    move-object v5, v0

    .line 529
    goto :goto_0

    .line 531
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 532
    .local v4, uri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Landroid/app/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 533
    invoke-direct {p0, p1, v0}, Landroid/app/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object v5, v0

    .line 534
    goto :goto_0

    .line 535
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 537
    .local v2, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "SuggestionsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icon resource not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 538
    goto :goto_0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 384
    iget v2, p0, Landroid/app/SuggestionsAdapter;->mIconName1Col:I

    if-gez v2, :cond_0

    .line 385
    const/4 v2, 0x0

    .line 392
    :goto_0
    return-object v2

    .line 387
    :cond_0
    iget v2, p0, Landroid/app/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 389
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 390
    goto :goto_0

    .line 392
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 396
    iget v1, p0, Landroid/app/SuggestionsAdapter;->mIconName2Col:I

    if-gez v1, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 400
    :goto_0
    return-object v1

    .line 399
    :cond_0
    iget v1, p0, Landroid/app/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/app/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private getItemBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "backgroundColor"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 352
    if-nez p1, :cond_0

    .line 353
    const/4 v4, 0x0

    .line 368
    :goto_0
    return-object v4

    .line 355
    :cond_0
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mBackgroundsCache:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 356
    .local v1, cachedBg:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_1

    .line 358
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 361
    :cond_1
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 362
    .local v3, transparent:Landroid/graphics/drawable/ColorDrawable;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 363
    .local v0, background:Landroid/graphics/drawable/ColorDrawable;
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 364
    .local v2, newBg:Landroid/graphics/drawable/StateListDrawable;
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 365
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 366
    new-array v4, v6, [I

    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mBackgroundsCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v4, v2

    .line 368
    goto :goto_0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "col"

    .prologue
    const/4 v3, 0x0

    .line 694
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move-object v1, v3

    .line 703
    :goto_0
    return-object v1

    .line 698
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SuggestionsAdapter"

    const-string/jumbo v2, "unexpected error retrieving valid column from cursor, did the remote process die?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 703
    goto :goto_0
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "v"
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    if-nez p2, :cond_0

    .line 413
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "v"
    .parameter "text"

    .prologue
    .line 374
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "resourceUri"
    .parameter "drawable"

    .prologue
    .line 591
    if-eqz p2, :cond_0

    .line 592
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .line 215
    .local v0, extras:Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v1}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SuggestionsAdapter;->mStartSpinnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 222
    :goto_1
    return-void

    .line 207
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 221
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v1}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SuggestionsAdapter;->mStopSpinnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SuggestionsAdapter$ChildViewCache;

    .line 286
    .local v4, views:Landroid/app/SuggestionsAdapter$ChildViewCache;
    const/4 v1, 0x0

    .line 287
    .local v1, backgroundColor:I
    iget v5, p0, Landroid/app/SuggestionsAdapter;->mBackgroundColorCol:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 288
    iget v5, p0, Landroid/app/SuggestionsAdapter;->mBackgroundColorCol:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 290
    :cond_0
    invoke-direct {p0, v1}, Landroid/app/SuggestionsAdapter;->getItemBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 294
    iget v5, p0, Landroid/app/SuggestionsAdapter;->mText1Col:I

    invoke-static {p3, v5}, Landroid/app/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, text1:Ljava/lang/String;
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {p0, v5, v2}, Landroid/app/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 297
    .end local v2           #text1:Ljava/lang/String;
    :cond_1
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 299
    iget v5, p0, Landroid/app/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {p3, v5}, Landroid/app/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, text2:Ljava/lang/CharSequence;
    if-eqz v3, :cond_6

    .line 301
    invoke-direct {p0, v3}, Landroid/app/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 308
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 309
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 310
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 311
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 319
    :cond_2
    :goto_1
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v5, v3}, Landroid/app/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 322
    .end local v3           #text2:Ljava/lang/CharSequence;
    :cond_3
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    .line 323
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/app/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/app/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 325
    :cond_4
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    .line 326
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Landroid/app/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/app/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_5
    return-void

    .line 303
    .restart local v3       #text2:Ljava/lang/CharSequence;
    :cond_6
    iget v5, p0, Landroid/app/SuggestionsAdapter;->mText2Col:I

    invoke-static {p3, v5}, Landroid/app/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 314
    :cond_7
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 315
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 316
    iget-object v5, v4, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    const-string v2, "SuggestionsAdapter"

    .line 231
    iget-boolean v1, p0, Landroid/app/SuggestionsAdapter;->mClosed:Z

    if-eqz v1, :cond_1

    .line 232
    const-string v1, "SuggestionsAdapter"

    const-string v1, "Tried to change cursor after adapter was closed."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 240
    if-eqz p1, :cond_0

    .line 241
    const-string v1, "suggest_text_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/SuggestionsAdapter;->mText1Col:I

    .line 242
    const-string v1, "suggest_text_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/SuggestionsAdapter;->mText2Col:I

    .line 243
    const-string v1, "suggest_text_2_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/SuggestionsAdapter;->mText2UrlCol:I

    .line 244
    const-string v1, "suggest_icon_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/SuggestionsAdapter;->mIconName1Col:I

    .line 245
    const-string v1, "suggest_icon_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/SuggestionsAdapter;->mIconName2Col:I

    .line 246
    const-string v1, "suggest_background_color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/SuggestionsAdapter;->mBackgroundColorCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 250
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SuggestionsAdapter"

    const-string v1, "error changing cursor and caching columns"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/SuggestionsAdapter;->mClosed:Z

    .line 186
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 437
    if-nez p1, :cond_0

    move-object v3, v4

    .line 460
    :goto_0
    return-object v3

    .line 441
    :cond_0
    const-string v3, "suggest_intent_query"

    invoke-static {p1, v3}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, query:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 443
    goto :goto_0

    .line 446
    :cond_1
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    const-string v3, "suggest_intent_data"

    invoke-static {p1, v3}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 449
    goto :goto_0

    .line 453
    .end local v0           #data:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 454
    const-string v3, "suggest_text_1"

    invoke-static {p1, v3}, Landroid/app/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, text1:Ljava/lang/String;
    if-eqz v2, :cond_3

    move-object v3, v2

    .line 456
    goto :goto_0

    .end local v2           #text1:Ljava/lang/String;
    :cond_3
    move-object v3, v4

    .line 460
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 472
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 482
    :goto_0
    return-object v4

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions cursor threw exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/app/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Landroid/app/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 477
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SuggestionsAdapter$ChildViewCache;

    .line 479
    .local v3, views:Landroid/app/SuggestionsAdapter$ChildViewCache;
    iget-object v1, v3, Landroid/app/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 480
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1           #tv:Landroid/widget/TextView;
    .end local v3           #views:Landroid/app/SuggestionsAdapter$ChildViewCache;
    :cond_0
    move-object v4, v2

    .line 482
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, v:Landroid/view/View;
    new-instance v1, Landroid/app/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v1, v0}, Landroid/app/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 261
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 193
    iget-object v0, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->onDataSetChanged()V

    .line 195
    invoke-virtual {p0}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 196
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 203
    invoke-virtual {p0}, Landroid/app/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 204
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6
    .parameter "constraint"

    .prologue
    .line 158
    if-nez p1, :cond_0

    const-string v3, ""

    move-object v2, v3

    .line 163
    .local v2, query:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 164
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v3}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mStartSpinnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 166
    :try_start_0
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    const/16 v5, 0x32

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 179
    :goto_1
    return-object v3

    .line 158
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 173
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #query:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 174
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "SuggestionsAdapter"

    const-string v4, "Search suggestions query threw an exception."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_1
    iget-object v3, p0, Landroid/app/SuggestionsAdapter;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v3}, Landroid/app/SearchDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SuggestionsAdapter;->mStopSpinnerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 179
    const/4 v3, 0x0

    goto :goto_1
.end method
