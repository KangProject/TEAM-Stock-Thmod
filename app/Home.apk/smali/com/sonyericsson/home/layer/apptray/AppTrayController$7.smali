.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;
.super Ljava/lang/Thread;
.source "AppTrayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->showToast(Landroid/widget/Toast;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

.field final synthetic val$addedDuration:I

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;ILandroid/widget/Toast;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;->val$addedDuration:I

    iput-object p3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 472
    :try_start_0
    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;->val$addedDuration:I

    div-int/lit16 v1, v3, 0x3e8

    .line 473
    .local v1, iterations:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 474
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 475
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    iget v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;->val$addedDuration:I

    rem-int/lit16 v2, v3, 0x3e8

    .line 479
    .local v2, leftOver:I
    if-lez v2, :cond_1

    .line 480
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 481
    int-to-long v3, v2

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 484
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$7;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v0           #i:I
    .end local v1           #iterations:I
    .end local v2           #leftOver:I
    :goto_1
    return-void

    .line 485
    :catch_0
    move-exception v3

    goto :goto_1
.end method
