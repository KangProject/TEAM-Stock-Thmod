.class Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;
.super Landroid/os/AsyncTask;
.source "DropZoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/DropZoneController;->showAppShareDialog(Lcom/sonyericsson/home/data/Info;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field getMarketUrlSuccessful:Z

.field marketUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

.field final synthetic val$packageNameToShare:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->val$packageNameToShare:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->marketUrl:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->getMarketUrlSuccessful:Z

    .line 411
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 428
    new-instance v0, Lcom/sonyericsson/home/layer/appshare/webservice/WebServiceHelper;

    new-instance v2, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1300(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/home/layer/appshare/webservice/WebService;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/sonyericsson/home/layer/appshare/webservice/WebServiceHelper;-><init>(Lcom/sonyericsson/home/layer/appshare/webservice/WebService;)V

    .line 430
    .local v0, appShareService:Lcom/sonyericsson/home/layer/appshare/webservice/WebServiceHelper;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->val$packageNameToShare:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/appshare/webservice/WebServiceHelper;->getMarketUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->marketUrl:Ljava/lang/String;
    :try_end_0
    .catch Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 431
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 432
    .local v1, e:Lcom/sonyericsson/home/layer/appshare/webservice/ServerMethodException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->getMarketUrlSuccessful:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 411
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const-string v7, "DropZoneController"

    .line 440
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 444
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1202(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 454
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->marketUrl:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 455
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$700(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->isFacebookShareAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 457
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 458
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "PKG_NAME"

    iget-object v5, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->val$packageNameToShare:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v4, "MARKET_URL"

    iget-object v5, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->marketUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 461
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$400(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$DropZoneControllerListener;->onDrop(Landroid/os/Bundle;)V

    .line 480
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 447
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 450
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "DropZoneController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App share progress dialog dismissed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_2
    const-string v4, "DropZoneController"

    const-string v4, "mDropZoneControllerListener was null when about to call onDrop()"

    invoke-static {v7, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 466
    .end local v0           #args:Landroid/os/Bundle;
    :cond_3
    new-instance v1, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1300(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->marketUrl:Ljava/lang/String;

    const-string v6, "text/plain"

    invoke-direct {v1, v4, v5, v6}, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v1, chooser:Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;
    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->show()V

    goto :goto_1

    .line 470
    .end local v1           #chooser:Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1300(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/home/bidi/Utils;->getBidiContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 471
    .local v2, ctx:Landroid/content/Context;
    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->getMarketUrlSuccessful:Z

    if-eqz v4, :cond_5

    .line 472
    const v4, 0x7f07002f

    invoke-static {v2, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 475
    :cond_5
    const v4, 0x7f070030

    invoke-static {v2, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 418
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1300(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1202(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1300(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$7;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$1200(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 424
    return-void
.end method
