.class Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerListener;
.super Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;
.source "HomeCornerButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeCornerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerListener;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-direct {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;-><init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerListener;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    return-void
.end method


# virtual methods
.method public onOverAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerListener;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerListener;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$800(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->containsAction(Lcom/sonyericsson/cornerbutton/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->onOverAction(Lcom/sonyericsson/cornerbutton/Action;)V

    goto :goto_0
.end method
