.class Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;
.super Ljava/lang/Object;
.source "CornerButtonsController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Lcom/sonyericsson/cornerbutton/CornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 4
    .parameter "controller"
    .parameter "action"

    .prologue
    .line 238
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->close()V

    .line 239
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$700(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v3, p1, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    if-eqz v3, :cond_0

    .line 240
    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    move-object v3, v0

    invoke-virtual {v3, p2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getInfo(Lcom/sonyericsson/cornerbutton/Action;)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    .line 241
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    if-eqz v1, :cond_0

    .line 242
    check-cast p1, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getCornerButtonBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 243
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$700(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$CornerButtonsControllerListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    .line 247
    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public onChanged(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$200(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V

    .line 235
    return-void
.end method

.method public onCollapsed(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$500(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$600(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V

    .line 231
    :cond_0
    return-void
.end method

.method public onExpanded(Lcom/sonyericsson/cornerbutton/CornerButtonController;Z)V
    .locals 2
    .parameter "controller"
    .parameter "animate"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$300(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    .line 221
    invoke-virtual {p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v0, p2}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$400(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;Z)V

    .line 225
    :cond_0
    return-void
.end method

.method public onNewActionSelected(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->mLastSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->access$800(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 253
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 255
    .end local v0           #vibrator:Landroid/os/Vibrator;
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$3;->mLastSelectedAction:Lcom/sonyericsson/cornerbutton/Action;

    .line 256
    return-void
.end method
