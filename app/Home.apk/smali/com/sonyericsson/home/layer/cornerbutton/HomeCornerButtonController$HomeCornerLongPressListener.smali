.class Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;
.super Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;
.source "HomeCornerButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeCornerLongPressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;-><init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    return-void
.end method


# virtual methods
.method public onCollapsedLongPress()V
    .locals 4

    .prologue
    .line 341
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    .line 342
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 343
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cornerbutton/Action;

    .line 344
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v2, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 348
    .end local v0           #action:Lcom/sonyericsson/cornerbutton/Action;
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;->onCollapsedLongPress()V

    goto :goto_0
.end method

.method public onLongPress(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerLongPressListener;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 337
    return-void
.end method
