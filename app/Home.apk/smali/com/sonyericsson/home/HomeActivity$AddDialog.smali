.class Lcom/sonyericsson/home/HomeActivity$AddDialog;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field private static final ID_SET_WALLPAPER:I = 0x3

.field private static final ID_SIZE:I = 0x4


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1518
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
    .line 1505
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$AddDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sonyericsson/home/HomeActivity$AddDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1505
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 1572
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/home/bidi/Utils;->getDialogAlertThemeStyle(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1573
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1574
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->adapter:Landroid/widget/BaseAdapter;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1576
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1578
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1579
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1581
    return-object v1
.end method

.method private dismissSafely()V
    .locals 2

    .prologue
    .line 1590
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    :goto_0
    return-void

    .line 1591
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1597
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->dismissSafely()V

    .line 1598
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 1604
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddDialog;->dismissSafely()V

    .line 1606
    packed-switch p2, :pswitch_data_0

    .line 1631
    :goto_0
    return-void

    .line 1608
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 1612
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 1614
    .local v1, advWidgetInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$2200(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/widget/AdvWidgetManager;->getWidgetInfoExtras()Ljava/util/ArrayList;

    move-result-object v0

    .line 1617
    .local v0, advWidgetExtraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$3700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/sonyericsson/home/widget/WidgetManager;->getPickWidgetIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1623
    .end local v0           #advWidgetExtraList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v1           #advWidgetInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/home/HomeActivity;->access$3802(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1624
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V

    goto :goto_0

    .line 1628
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 1606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
