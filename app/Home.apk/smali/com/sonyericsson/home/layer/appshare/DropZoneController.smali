.class public Lcom/sonyericsson/home/layer/appshare/DropZoneController;
.super Ljava/lang/Object;
.source "DropZoneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;
    }
.end annotation


# static fields
.field private static final APPSHARE_PREFERENCES:Ljava/lang/String; = "home_appshare"

.field public static final DIALOG_FBI_APP_SHARE_MARKET_URL_ARGS:Ljava/lang/String; = "MARKET_URL"

.field public static final DIALOG_FBI_APP_SHARE_PKG_NAME_ARGS:Ljava/lang/String; = "PKG_NAME"

.field private static final DROP_ZONE_GROW_RATIO:F = 0.7f

.field private static final HINT_TOAST_MAX_COUNT:I = 0x3

.field private static final HINT_TOAST_TIMEOUT:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "DropZoneController"

.field private static final PREFERENCE_APPSHARE_HINT_TOAST_COUNTER:Ljava/lang/String; = "preference_appshare_hint_toast_counter"

.field private static final TOAST_HIDE:I = 0x0

.field private static final TOAST_SHOW:I = 0x1


# instance fields
.field private mAppShareFBIBadge:Landroid/view/View;

.field private mAppShareGetMarketUrlWorker:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mAppShareProgressDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mDropZone:Landroid/widget/RelativeLayout;

.field private mDropZoneControllerListener:Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

.field private mDropZoneHintToast:Landroid/widget/TextView;

.field private mDropZoneLayer:Landroid/view/View;

.field private mFacebookAvailabilityCheckWorker:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

.field private mHideDropLayerAnimation:Landroid/view/animation/Animation;

.field private mHideHintToastTimedTask:Ljava/lang/Runnable;

.field private mHintToastCounter:I

.field private mHintToastHideAnimation:Landroid/view/animation/Animation;

.field private mHintToastShowAnimation:Landroid/view/animation/Animation;

.field private mHintToastTimeoutHandler:Landroid/os/Handler;

.field private mIsAppShareEnabled:Z

.field private mIsFbiActive:Z

.field private mIsShowing:Z

.field private mSavedAppShareHintToastCounter:I

.field private mSharingTarget:Lcom/sonyericsson/home/transfer/TransferTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .parameter "context"
    .parameter "dropZoneLayer"

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    .line 111
    iput-boolean v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsAppShareEnabled:Z

    .line 113
    new-instance v2, Lcom/sonyericsson/home/layer/appshare/DropZoneController$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$1;-><init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHideHintToastTimedTask:Ljava/lang/Runnable;

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneLayer:Landroid/view/View;

    .line 150
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneLayer:Landroid/view/View;

    const v3, 0x7f0e0001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZone:Landroid/widget/RelativeLayout;

    .line 151
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZone:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/sonyericsson/home/bidi/Utils;->setDirectionalityLeftToRight(Landroid/view/ViewGroup;)V

    .line 153
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneLayer:Landroid/view/View;

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareFBIBadge:Landroid/view/View;

    .line 155
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneLayer:Landroid/view/View;

    const v3, 0x7f0e0006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneHintToast:Landroid/widget/TextView;

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastShowAnimation:Landroid/view/animation/Animation;

    .line 158
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    const v3, 0x7f040007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastHideAnimation:Landroid/view/animation/Animation;

    .line 159
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    const v3, 0x7f040008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHideDropLayerAnimation:Landroid/view/animation/Animation;

    .line 161
    iput v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    .line 162
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastTimeoutHandler:Landroid/os/Handler;

    .line 164
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapperFactory;->createFacebookWrapper(Landroid/content/Context;)Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 169
    .local v0, dropZoneHeight:I
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    const-string v3, "home_appshare"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "preference_appshare_hint_toast_counter"

    iget v3, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    .line 174
    iget v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    iput v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mSavedAppShareHintToastCounter:I

    .line 176
    new-instance v2, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$2;-><init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;I)V

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mSharingTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    .line 252
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZone:Landroid/widget/RelativeLayout;

    sget v3, Lcom/sonyericsson/home/transfer/TransferView;->TRANSFER_TARGET_TAG:I

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mSharingTarget:Lcom/sonyericsson/home/transfer/TransferTarget;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 255
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->checkCustomization()V

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hideHintToast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneHintToast:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareFBIBadge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZone:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneControllerListener:Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->setAppShareEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsFbiActive:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsFbiActive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->showFbiBadge(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneLayer:Landroid/view/View;

    return-object v0
.end method

.method private animateHintToast(Landroid/view/animation/Animation;I)V
    .locals 1
    .parameter "hintToastAnimation"
    .parameter "visibility"

    .prologue
    .line 374
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$6;-><init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;I)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneHintToast:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 392
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneHintToast:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 393
    return-void
.end method

.method private checkCustomization()V
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/home/GlobalCustomizationManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/home/GlobalCustomizationManager;

    move-result-object v0

    .line 260
    .local v0, gcm:Lcom/sonyericsson/home/GlobalCustomizationManager;
    new-instance v1, Lcom/sonyericsson/home/layer/appshare/DropZoneController$3;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$3;-><init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Lcom/sonyericsson/home/GlobalCustomizationManager;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/GlobalCustomizationManager;->addCustomizationCallback(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method private hideHintToast()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneHintToast:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastHideAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->animateHintToast(Landroid/view/animation/Animation;I)V

    .line 371
    :cond_0
    return-void
.end method

.method private saveHintToastCounter()V
    .locals 5

    .prologue
    .line 398
    iget v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mSavedAppShareHintToastCounter:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 399
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mContext:Landroid/content/Context;

    const-string v3, "home_appshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 400
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preference_appshare_hint_toast_counter"

    iget v3, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-static {v0}, Lcom/sonyericsson/util/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 403
    iget v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    iput v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mSavedAppShareHintToastCounter:I

    .line 405
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private setAppShareEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsAppShareEnabled:Z

    if-eq v0, p1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hide()V

    .line 518
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsAppShareEnabled:Z

    .line 520
    :cond_0
    return-void
.end method

.method private showDropZone()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneControllerListener:Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneControllerListener:Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;->onShow()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->showHintToast()V

    .line 316
    iget v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastCounter:I

    .line 318
    :cond_1
    return-void
.end method

.method private showFbiBadge(Z)V
    .locals 2
    .parameter "isFbiActive"

    .prologue
    .line 321
    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareFBIBadge:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareFBIBadge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showHintToast()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastShowAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->animateHintToast(Landroid/view/animation/Animation;I)V

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHideHintToastTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHideHintToastTimedTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 332
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsShowing:Z

    if-eqz v1, :cond_0

    .line 333
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsShowing:Z

    .line 335
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$5;-><init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)V

    .line 355
    .local v0, l:Landroid/view/animation/Animation$AnimationListener;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHideDropLayerAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 356
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneLayer:Landroid/view/View;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHideDropLayerAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 357
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHintToastTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mHideHintToastTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    .end local v0           #l:Landroid/view/animation/Animation$AnimationListener;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->saveHintToastCounter()V

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    .line 492
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 495
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->hide()V

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareGetMarketUrlWorker:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareGetMarketUrlWorker:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareGetMarketUrlWorker:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookAvailabilityCheckWorker:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookAvailabilityCheckWorker:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookAvailabilityCheckWorker:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 513
    :cond_2
    return-void
.end method

.method public setDropZoneControllerListener(Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mDropZoneControllerListener:Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    .line 270
    return-void
.end method

.method public setMockedFacebookWrapper(Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;)V
    .locals 0
    .parameter "facebookWrapper"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    .line 529
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsAppShareEnabled:Z

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsShowing:Z

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->showDropZone()V

    .line 285
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;-><init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookAvailabilityCheckWorker:Landroid/os/AsyncTask;

    .line 302
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mFacebookAvailabilityCheckWorker:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mIsShowing:Z

    goto :goto_0
.end method

.method public showAppShareDialog(Lcom/sonyericsson/home/data/Info;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, packageNameToShare:Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;-><init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareGetMarketUrlWorker:Landroid/os/AsyncTask;

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->mAppShareGetMarketUrlWorker:Landroid/os/AsyncTask;

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Void;

    .end local p0
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 484
    .end local v0           #packageNameToShare:Ljava/lang/String;
    :cond_0
    return-void
.end method
