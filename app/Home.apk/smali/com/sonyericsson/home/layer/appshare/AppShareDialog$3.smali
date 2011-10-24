.class Lcom/sonyericsson/home/layer/appshare/AppShareDialog$3;
.super Ljava/lang/Object;
.source "AppShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$3;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$3;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$000(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$3;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$300(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V

    .line 115
    return-void
.end method
