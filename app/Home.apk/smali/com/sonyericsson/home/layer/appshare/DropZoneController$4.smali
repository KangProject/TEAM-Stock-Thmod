.class Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;
.super Landroid/os/AsyncTask;
.source "DropZoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/appshare/DropZoneController;->show()V
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
.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 285
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$700(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/appshare/facebook/FacebookWrapper;->isFacebookShareAvailable()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$602(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Z)Z

    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 285
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$4;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$600(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$800(Lcom/sonyericsson/home/layer/appshare/DropZoneController;Z)V

    .line 300
    return-void
.end method
