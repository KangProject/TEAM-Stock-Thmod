.class public Lcom/sonyericsson/home/layer/appshare/AppShareDialog;
.super Ljava/lang/Object;
.source "AppShareDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppShareDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

.field private mListener:Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;

.field private mMarketUrl:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageNameToShare:Ljava/lang/String;

.field private mPrepareDialogWorker:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mShareComment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mMarketUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->resetShareData()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPackageNameToShare:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mShareComment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mShareComment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private resetShareData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iput-object v3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mShareComment:Ljava/lang/String;

    .line 199
    iput-object v3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPackageNameToShare:Ljava/lang/String;

    .line 200
    iput-object v3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mMarketUrl:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0e0025

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 204
    .local v0, commentView:Landroid/widget/EditText;
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method


# virtual methods
.method public createDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    .line 77
    iget-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sonyericsson/home/bidi/Utils;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 79
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapperFactory;->createFacebookWrapper(Landroid/content/Context;)Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 83
    iget-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000e

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 85
    .local v4, layout:Landroid/view/View;
    iget-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    const v7, 0x7f020004

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 89
    const v7, 0x7f0e0029

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 90
    .local v5, otherOptionsView:Landroid/view/View;
    new-instance v7, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$1;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$1;-><init>(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v7, 0x7f0e0027

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 100
    .local v6, shareButton:Landroid/view/View;
    new-instance v7, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;-><init>(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v7, 0x7f0e0028

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, cancelButton:Landroid/view/View;
    new-instance v7, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$3;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$3;-><init>(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v7, 0x7f0e0025

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 119
    .local v3, commentView:Landroid/widget/EditText;
    const v7, 0x7f07002a

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 120
    new-instance v7, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$4;

    invoke-direct {v7, p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$4;-><init>(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    .line 136
    iget-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 137
    iget-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 139
    iget-object v7, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    return-object v7
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mListener:Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;

    .line 215
    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mContext:Landroid/content/Context;

    .line 216
    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mFacebookWrapper:Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPrepareDialogWorker:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPrepareDialogWorker:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPrepareDialogWorker:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 221
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPrepareDialogWorker:Landroid/os/AsyncTask;

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0e0027

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0e0028

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    .line 230
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mListener:Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mListener:Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 184
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->resetShareData()V

    .line 186
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mListener:Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mListener:Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;->onShow(Landroid/content/DialogInterface;)V

    .line 192
    :cond_0
    return-void
.end method

.method public prepareDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 143
    if-eqz p2, :cond_0

    .line 144
    const-string v0, "PKG_NAME"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPackageNameToShare:Ljava/lang/String;

    .line 145
    const-string v0, "MARKET_URL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mMarketUrl:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mDialog:Landroid/app/Dialog;

    .line 148
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$5;-><init>(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPrepareDialogWorker:Landroid/os/AsyncTask;

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPrepareDialogWorker:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mPackageNameToShare:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    :cond_0
    return-void
.end method

.method public setDialogListener(Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;)V
    .locals 0
    .parameter "appShareDialogListener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->mListener:Lcom/sonyericsson/home/layer/appshare/AppShareDialog$AppShareDialogListener;

    .line 74
    return-void
.end method
