.class public final Lcom/android/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field static final NO_ICON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mItemCallback:Ljava/lang/Runnable;

.field private mItemViews:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuView$ItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;)V
    .locals 2
    .parameter "menu"
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "ordering"
    .parameter "title"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 71
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 110
    sget-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    .line 122
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    .line 123
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 124
    iput p3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    .line 125
    iput p2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 126
    iput p4, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 127
    iput p5, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 128
    iput-object p6, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 129
    return-void
.end method

.method private createItemView(ILandroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;
    .locals 4
    .parameter "menuType"
    .parameter "parent"

    .prologue
    .line 592
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getLayoutInflater(I)Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/android/internal/view/menu/MenuBuilder;->ITEM_LAYOUT_RES_FOR_TYPE:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 594
    .local v0, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 595
    return-object v0
.end method

.method private hasItemView(I)Z
    .locals 1
    .parameter "menuType"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private haveAnyOpenedIconCapableItemViews()Z
    .locals 2

    .prologue
    .line 478
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 479
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->showsIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const/4 v1, 0x1

    .line 484
    :goto_1
    return v1

    .line 478
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 484
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private refreshShortcutOnItemViews()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews(ZZ)V

    .line 321
    return-void
.end method

.method private setIconOnViews(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 469
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 471
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->showsIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 469
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 475
    :cond_1
    return-void
.end method


# virtual methods
.method clearItemViews()V
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 599
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 602
    :cond_0
    return-void
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 227
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 443
    :goto_0
    return-object v0

    .line 439
    :cond_0
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 197
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "menuType"
    .parameter "parent"

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->createItemView(ILandroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getLayoutInflater(I)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "menuType"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 241
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 278
    .local v1, shortcut:C
    if-nez v1, :cond_0

    .line 279
    const-string v2, ""

    .line 302
    :goto_0
    return-object v2

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, sb:Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 286
    :sswitch_0
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 290
    :sswitch_1
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 294
    :sswitch_2
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "itemView"

    .prologue
    .line 379
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 137
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 162
    :goto_0
    return v2

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 143
    .local v0, callback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 145
    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move v2, v4

    .line 150
    goto :goto_0

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 158
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 488
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refreshShortcutOnItemViews(ZZ)V
    .locals 4
    .parameter "menuShortcutShown"
    .parameter "isQwertyMode"

    .prologue
    .line 335
    if-eqz p2, :cond_1

    iget-char v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    move v1, v3

    .line 338
    .local v1, shortcutKey:C
    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    move v2, v3

    .line 340
    .local v2, showShortcut:Z
    :goto_1
    const/4 v0, 0x2

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_3

    .line 341
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setShortcut(ZC)V

    .line 340
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 335
    .end local v0           #i:I
    .end local v1           #shortcutKey:C
    .end local v2           #showShortcut:Z
    :cond_1
    iget-char v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    move v1, v3

    goto :goto_0

    .line 338
    .restart local v1       #shortcutKey:C
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    .line 345
    .restart local v0       #i:I
    .restart local v2       #showShortcut:Z
    :cond_3
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .parameter "alphaChar"

    .prologue
    .line 231
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 237
    :goto_0
    return-object p0

    .line 233
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 235
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .parameter "callback"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 223
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .parameter "checkable"

    .prologue
    .line 492
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 493
    .local v1, oldFlags:I
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, -0x2

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 494
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v1, v2, :cond_2

    .line 495
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 496
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setCheckable(Z)V

    .line 495
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 493
    .end local v0           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 502
    :cond_2
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "checked"

    .prologue
    .line 519
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 527
    :goto_0
    return-object p0

    .line 524
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    .line 531
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 532
    .local v1, oldFlags:I
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 533
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v1, v2, :cond_2

    .line 534
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 535
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setChecked(Z)V

    .line 534
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 532
    .end local v0           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 540
    :cond_2
    return-void
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .parameter "enabled"

    .prologue
    .line 174
    if-eqz p1, :cond_1

    .line 175
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 180
    :goto_0
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 183
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setEnabled(Z)V

    .line 180
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 177
    .end local v0           #i:I
    :cond_1
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_0

    .line 188
    .restart local v0       #i:I
    :cond_2
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .parameter "exclusive"

    .prologue
    .line 507
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 508
    return-void

    .line 507
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 3
    .parameter "iconResId"

    .prologue
    const/4 v2, 0x0

    .line 455
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 456
    iput p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 459
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->haveAnyOpenedIconCapableItemViews()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 462
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIconOnViews(Landroid/graphics/drawable/Drawable;)V

    .line 465
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p0

    :cond_1
    move-object v0, v2

    .line 460
    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .parameter "icon"

    .prologue
    .line 447
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 448
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIconOnViews(Landroid/graphics/drawable/Drawable;)V

    .line 451
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 214
    return-object p0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menuInfo"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 611
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .parameter "numericChar"

    .prologue
    .line 245
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 251
    :goto_0
    return-object p0

    .line 247
    :cond_0
    iput-char p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 249
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 572
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 255
    iput-char p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 256
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 258
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    .line 260
    return-object p0
.end method

.method setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 2
    .parameter "subMenu"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    instance-of v0, v0, Landroid/view/SubMenu;

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to add a sub-menu to a sub-menu."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 364
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3
    .parameter "title"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 387
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 390
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 395
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 396
    :cond_2
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 400
    .end local v1           #itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v2, :cond_4

    .line 401
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 404
    :cond_4
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .parameter "title"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 419
    if-nez p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 423
    :cond_0
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 425
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 430
    :cond_2
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "shown"

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 567
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .parameter "shown"

    .prologue
    const/4 v3, 0x0

    .line 556
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 557
    .local v0, oldFlags:I
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x9

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 558
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 557
    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v1, v3

    .line 558
    goto :goto_1
.end method

.method public shouldShowIcon(I)Z
    .locals 1
    .parameter "menuType"

    .prologue
    .line 631
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
