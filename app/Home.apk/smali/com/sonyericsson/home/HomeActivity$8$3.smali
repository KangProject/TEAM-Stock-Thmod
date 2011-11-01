.class Lcom/sonyericsson/home/HomeActivity$8$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$8;->showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$8;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$8$3;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$3;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$3;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2002(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1177
    :cond_0
    return-void
.end method
