.class public Lcom/sonyericsson/home/GlobalCustomizationManager;
.super Ljava/lang/Object;
.source "GlobalCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;
    }
.end annotation


# static fields
.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final DEFAULT_FOLDER_ICON_RESOURCES:[I = null

.field private static final DEFAULT_OPEN_FOLDER_ICON_RESOURCES:[I = null

.field public static final NUMBER_OF_FOLDER_TYPES:I = 0x8

.field private static final TAG:Ljava/lang/String; = "global"


# instance fields
.field private mCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategories:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultsLoaded:Z

.field private mFolderDefaultLabels:[Ljava/lang/String;

.field private mFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

.field private mLandscapeModeEnabled:Z

.field private mOpenFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

.field private mThemeOptionEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->DEFAULT_FOLDER_ICON_RESOURCES:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->DEFAULT_OPEN_FOLDER_ICON_RESOURCES:[I

    .line 63
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_global.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void

    .line 47
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
    .end array-data

    .line 55
    :array_1
    .array-data 0x4
        0x21t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCategories:[Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/sonyericsson/home/GlobalCustomizationManager$1;

    const-string v1, "Global customization"

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/home/GlobalCustomizationManager$1;-><init>(Lcom/sonyericsson/home/GlobalCustomizationManager;Ljava/lang/String;Landroid/content/Context;)V

    .line 199
    .local v0, customizationTask:Lcom/sonyericsson/util/Worker$Task;
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/GlobalCustomizationManager;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCategories:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->DEFAULT_FOLDER_ICON_RESOURCES:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->DEFAULT_OPEN_FOLDER_ICON_RESOURCES:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/home/GlobalCustomizationManager;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/GlobalCustomizationManager;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mOpenFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/home/GlobalCustomizationManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mFolderDefaultLabels:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/GlobalCustomizationManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/home/GlobalCustomizationManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    return-object p1
.end method

.method private loadDefaultSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    new-instance v0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;

    iget-object v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mContext:Landroid/content/Context;

    const-string v3, "global"

    invoke-direct {v0, v2, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    .local v0, globalCustomization:Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;
    const v2, 0x7f050004

    invoke-virtual {v0, v2, v5}, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;->applyCustomization(IZ)Z

    .line 228
    iget-boolean v2, v0, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;->mLandscapeModeEnabled:Z

    iput-boolean v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mLandscapeModeEnabled:Z

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sonyericsson.theme.intent.action.SET_RUNTIME_THEME"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 233
    .local v1, themeActivityResolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    move v2, v6

    :goto_0
    iput-boolean v2, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mThemeOptionEnabled:Z

    .line 235
    iput-boolean v6, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mDefaultsLoaded:Z

    .line 236
    return-void

    :cond_0
    move v2, v5

    .line 233
    goto :goto_0
.end method


# virtual methods
.method public addCustomizationCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/home/GlobalCustomizationManager;->isCustomizationAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFolderDefaultLabel(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mFolderDefaultLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFolderIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getOpenFolderIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mOpenFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isCustomizationAvailable()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLandscapeModeEnabled()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mDefaultsLoaded:Z

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/home/GlobalCustomizationManager;->loadDefaultSettings()V

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mLandscapeModeEnabled:Z

    return v0
.end method

.method public isThemeOptionEnabled()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mDefaultsLoaded:Z

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/sonyericsson/home/GlobalCustomizationManager;->loadDefaultSettings()V

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mThemeOptionEnabled:Z

    return v0
.end method

.method public unbindDrawables()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 322
    iget-object v4, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    .local v0, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 324
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mOpenFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mOpenFolderIconDrawables:[Landroid/graphics/drawable/Drawable;

    .restart local v0       #arr$:[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 329
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method
