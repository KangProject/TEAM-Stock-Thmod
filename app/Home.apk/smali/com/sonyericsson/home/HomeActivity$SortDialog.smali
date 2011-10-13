.class Lcom/sonyericsson/home/HomeActivity$SortDialog;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortDialog"
.end annotation


# static fields
.field private static final ID_ALPHABETICAL:I = 0x1

.field private static final ID_FREE:I = 0x0

.field private static final ID_MOSTUSED:I = 0x2

.field private static final ID_RECENTLYINSTALLED:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1780
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$SortDialog;-><init>(Lcom/sonyericsson/home/HomeActivity;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/home/HomeActivity$SortDialog;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1780
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1792
    new-instance v0, Lcom/sonyericsson/home/HomeActivity$SortAdapter;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {v0, v3, v5}, Lcom/sonyericsson/home/HomeActivity$SortAdapter;-><init>(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/HomeActivity$1;)V

    .line 1794
    .local v0, adapter:Lcom/sonyericsson/home/HomeActivity$SortAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/home/bidi/Utils;->getDialogAlertThemeStyle(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1795
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1796
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v3

    invoke-virtual {v1, v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1797
    const v3, 0x7f070016

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1799
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1801
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1802
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1803
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1805
    return-object v2
.end method

.method private dismissSafely()V
    .locals 2

    .prologue
    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    :goto_0
    return-void

    .line 1826
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->dismissSafely()V

    .line 1833
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1839
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeActivity$SortDialog;->dismissSafely()V

    .line 1840
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1, p2}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;I)I

    .line 1842
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1843
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

    .line 1844
    const-string v1, "Sort"

    invoke-static {v1, v0}, Lcom/sonyericsson/util/LogUtil;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1846
    packed-switch p2, :pswitch_data_0

    .line 1863
    :goto_0
    return-void

    .line 1848
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, v1, Lcom/sonyericsson/home/HomeActivity;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;->sort(I)V

    goto :goto_0

    .line 1852
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, v1, Lcom/sonyericsson/home/HomeActivity;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;->sort(I)V

    goto :goto_0

    .line 1856
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, v1, Lcom/sonyericsson/home/HomeActivity;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;->sort(I)V

    goto :goto_0

    .line 1860
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v1, v1, Lcom/sonyericsson/home/HomeActivity;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;->sort(I)V

    goto :goto_0

    .line 1846
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
    .line 1809
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;->sortFinished()V

    .line 1811
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sonyericsson/home/HomeActivity;->mAppTraySortCallback:Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    .line 1817
    :goto_0
    return-void

    .line 1813
    :cond_0
    const-string v0, "HomeActivity"

    const-string v1, "Could not call finish sort on app tray sort callback! This might leave the AppTray in a bad state!"

    invoke-static {v0, v1}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
