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
    .line 2166
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2181
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
    .line 2166
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$AddDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/home/HomeActivity$AddDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2166
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 2244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/home/bidi/Utils;->getDialogAlertThemeStyle(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2246
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2247
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->adapter:Landroid/widget/BaseAdapter;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2249
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 2251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2252
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2253
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2254
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2256
    return-object v1
.end method

.method private dismissSafely()V
    .locals 2

    .prologue
    .line 2265
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2269
    :goto_0
    return-void

    .line 2266
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2273
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->dismissSafely()V

    .line 2274
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 2278
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->dismissSafely()V

    .line 2280
    packed-switch p2, :pswitch_data_0

    .line 2309
    :goto_0
    return-void

    .line 2282
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$4800(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 2286
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$2800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 2288
    .local v1, advWidgetInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$2800(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfoExtras()Ljava/util/ArrayList;

    move-result-object v0

    .line 2291
    .local v0, advWidgetExtraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$4900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/sonyericsson/home/widget/WidgetManager;->getPickWidgetIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2297
    .end local v0           #advWidgetExtraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v1           #advWidgetInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/home/HomeActivity;->access$2302(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 2298
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$2600(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$5000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V

    goto :goto_0

    .line 2302
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$5100(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 2306
    :pswitch_4
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$5200(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 2280
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
    .line 2313
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2002(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2316
    :cond_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$2002(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2323
    return-void
.end method
