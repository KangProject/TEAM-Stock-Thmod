.class Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;
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
    name = "AddToStageDialog"
.end annotation


# static fields
.field private static final ID_ADD_FOLDER:I = 0x1

.field private static final ID_ADD_SHORTCUT:I = 0x0

.field private static final ID_SET_WALLPAPER:I = 0x2

.field private static final ID_SIZE:I = 0x3


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1648
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog$1;-><init>(Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->adapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1637
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1637
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1697
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/home/bidi/Utils;->getDialogAlertThemeStyle(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1698
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1699
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->adapter:Landroid/widget/BaseAdapter;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1701
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1703
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/home/HomeActivity;->access$1602(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1704
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1706
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method private dismissSafely()V
    .locals 2

    .prologue
    .line 1715
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    :goto_0
    return-void

    .line 1716
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1722
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->dismissSafely()V

    .line 1723
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1729
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->dismissSafely()V

    .line 1731
    packed-switch p2, :pswitch_data_0

    .line 1745
    :goto_0
    return-void

    .line 1733
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$3600(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 1737
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$3802(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1738
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$1900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3900(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/home/HomeActivityFlow;->addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V

    goto :goto_0

    .line 1742
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4000(Lcom/sonyericsson/home/HomeActivity;)V

    goto :goto_0

    .line 1731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
