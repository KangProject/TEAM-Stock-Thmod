.class Lcom/sonyericsson/home/HomeActivity$SortDialog;
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
    name = "SortDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;
    }
.end annotation


# static fields
.field private static final ID_ALPHABETICAL:I = 0x1

.field private static final ID_FREE:I = 0x0

.field private static final ID_MOSTUSED:I = 0x2

.field private static final ID_RECENTLYINSTALLED:I = 0x3


# instance fields
.field private mAdapter:Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;

.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2592
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2488
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$SortDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sonyericsson/home/HomeActivity$SortDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2488
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2502
    new-instance v2, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;

    invoke-direct {v2, p0, v4}, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;-><init>(Lcom/sonyericsson/home/HomeActivity$SortDialog;Lcom/sonyericsson/home/HomeActivity$1;)V

    iput-object v2, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->mAdapter:Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;

    .line 2504
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/home/bidi/Utils;->getDialogAlertThemeStyle(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2506
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2507
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->mAdapter:Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$3000(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2508
    const v2, 0x7f070016

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2510
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 2512
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2513
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2514
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2515
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2517
    return-object v1
.end method

.method private dismissSafely()V
    .locals 2

    .prologue
    .line 2537
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2541
    :goto_0
    return-void

    .line 2538
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2544
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->dismissSafely()V

    .line 2545
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2559
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->dismissSafely()V

    .line 2563
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3000(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 2590
    :goto_0
    return-void

    .line 2567
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1, p2}, Lcom/sonyericsson/home/HomeActivity;->access$3002(Lcom/sonyericsson/home/HomeActivity;I)I

    .line 2569
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2570
    .local v0, params:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "which"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2571
    const-string v1, "Sort"

    invoke-static {v1, v0}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2573
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2575
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->sort(I)V

    goto :goto_0

    .line 2579
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->sort(I)V

    goto :goto_0

    .line 2583
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->sort(I)V

    goto :goto_0

    .line 2587
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->sort(I)V

    goto :goto_0

    .line 2573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2550
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->sortFinished()V

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 2553
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2002(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2555
    :cond_1
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2521
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2522
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->getCurrentSorting()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$3002(Lcom/sonyericsson/home/HomeActivity;I)I

    .line 2523
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->mAdapter:Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->notifyDataSetChanged()V

    .line 2525
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2526
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2528
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$2002(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2529
    return-void
.end method
