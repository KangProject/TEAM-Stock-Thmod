.class Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$3;
.super Ljava/lang/Object;
.source "HomeCornerButtonController.java"

# interfaces
.implements Lcom/sonyericsson/home/data/SyncHelper$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2600(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 431
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1000(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 433
    const/4 v1, 0x1

    .line 435
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
