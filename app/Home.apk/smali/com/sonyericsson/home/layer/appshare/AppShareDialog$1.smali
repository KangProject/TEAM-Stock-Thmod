.class Lcom/sonyericsson/home/layer/appshare/AppShareDialog$1;
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
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$1;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$1;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$000(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 93
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$1;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$100(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$1;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$200(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, chooser:Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;
    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->show()V

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$1;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$300(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V

    .line 96
    return-void
.end method
