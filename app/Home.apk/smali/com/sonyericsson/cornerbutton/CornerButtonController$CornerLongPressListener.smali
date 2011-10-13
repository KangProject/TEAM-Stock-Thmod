.class public Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;
.super Ljava/lang/Object;
.source "CornerButtonController.java"

# interfaces
.implements Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cornerbutton/CornerButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CornerLongPressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapsedLongPress()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->expandButton(Z)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerLongPressListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public onLongPress(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 0
    .parameter "mSelectedAction"

    .prologue
    .line 180
    return-void
.end method
