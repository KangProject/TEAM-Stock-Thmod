.class Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;
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
    .line 100
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$000(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$600(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$400(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$500(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->shareOnFacebook(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$100(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, ctx:Landroid/content/Context;
    const v1, 0x7f070031

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareDialog$2;->this$0:Lcom/sonyericsson/home/layer/appshare/AppShareDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/AppShareDialog;->access$300(Lcom/sonyericsson/home/layer/appshare/AppShareDialog;)V

    .line 107
    return-void
.end method
