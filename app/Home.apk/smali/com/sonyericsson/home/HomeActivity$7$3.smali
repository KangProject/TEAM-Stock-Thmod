.class Lcom/sonyericsson/home/HomeActivity$7$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$7;->showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$7;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2100(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$7$3;->this$1:Lcom/sonyericsson/home/HomeActivity$7;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$7;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2102(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1194
    :cond_0
    return-void
.end method
