.class public Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;
.super Ljava/lang/Object;
.source "CornerButtonController.java"

# interfaces
.implements Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cornerbutton/CornerButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CornerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapsedClick()V
    .locals 4

    .prologue
    .line 117
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v2}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->isExpandable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->expandButton(Z)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v2}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->getActions()Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/cornerbutton/Action;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cornerbutton/Action;

    .line 123
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->onItemClick(Lcom/sonyericsson/cornerbutton/Action;)V

    goto :goto_0
.end method

.method public onDragOutside()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->isExpandable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->expandButton(Z)V

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v1, v1, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 133
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 141
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v1, v1, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->cancelTouch()V

    goto :goto_0
.end method

.method public onFocusedAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 162
    return-void
.end method

.method public onItemClick(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->collapseButton()V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;->onActionClicked(Lcom/sonyericsson/cornerbutton/CornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onOutsideClick()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-virtual {v0}, Lcom/sonyericsson/cornerbutton/CornerButtonController;->collapseButton()V

    .line 113
    return-void
.end method

.method public onOverAction(Lcom/sonyericsson/cornerbutton/Action;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerListener;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mListener:Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;->onNewActionSelected(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 149
    :cond_0
    return-void
.end method
