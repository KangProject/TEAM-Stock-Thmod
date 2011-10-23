.class Lcom/sonyericsson/home/HomeActivity$AddDialog;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddDialog"
.end annotation


# static fields
.field private static final ID_ADD_FOLDER:I = 0x2

.field private static final ID_ADD_SHORTCUT:I = 0x0

.field private static final ID_ADD_WIDGET:I = 0x1

.field private static final ID_SET_THEME:I = 0x4

.field private static final ID_SET_WALLPAPER:I = 0x3

.field private static final ID_SIZE:I = 0x5


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2310
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2326
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog$1;-><init>(Lcom/sonyericsson/home/HomeActivity$AddDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->adapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2310
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$AddDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sonyericsson/home/HomeActivity$AddDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2310
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2389
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/bidi/Utils;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2390
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2391
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->adapter:Landroid/widget/BaseAdapter;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2393
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 2395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2396
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2397
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2398
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2400
    return-object v1
.end method

.method private dismissSafely()V
    .locals 2

    .prologue
    .line 2409
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2413
    :goto_0
    return-void

    .line 2410
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2417
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->dismissSafely()V

    .line 2418
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2422
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->dismissSafely()V

    .line 2424
    packed-switch p2, :pswitch_data_0

    .line 2453
    :goto_0
    return-void

    .line 2426
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$5200(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 2430
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$3500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 2432
    .local v1, advWidgetInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$3500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfoExtras()Ljava/util/ArrayList;

    move-result-object v0

    .line 2435
    .local v0, advWidgetExtraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$5300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/sonyericsson/home/widget/WidgetManager;->getPickWidgetIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2441
    .end local v0           #advWidgetExtraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v1           #advWidgetInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/home/HomeActivity;->access$2402(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 2442
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$2700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$5400(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;)V

    goto :goto_0

    .line 2446
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$5500(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 2450
    :pswitch_4
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$5600(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 2424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2460
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2464
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2467
    return-void
.end method
