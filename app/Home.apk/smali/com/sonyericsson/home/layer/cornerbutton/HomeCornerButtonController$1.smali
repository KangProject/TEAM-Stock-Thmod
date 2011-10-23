.class Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;
.super Ljava/lang/Object;
.source "HomeCornerButtonController.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final EXPAND_DELAY:I = 0x2ee


# instance fields
.field private delayedExpansion:Z

.field private mExpandRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dropOnCornerButton(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 247
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    .line 252
    .local v1, info:Lcom/sonyericsson/home/data/Info;
    instance-of v3, v1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-eqz v3, :cond_0

    .line 253
    new-instance v2, Lcom/sonyericsson/home/data/ActivityInfo;

    check-cast v1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local v1           #info:Lcom/sonyericsson/home/data/Info;
    invoke-direct {v2, v1}, Lcom/sonyericsson/home/data/ActivityInfo;-><init>(Lcom/sonyericsson/home/data/ActivityInfo;)V

    .local v2, info:Lcom/sonyericsson/home/data/Info;
    move-object v1, v2

    .line 255
    .end local v2           #info:Lcom/sonyericsson/home/data/Info;
    .restart local v1       #info:Lcom/sonyericsson/home/data/Info;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1700(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 256
    .local v0, action:Lcom/sonyericsson/cornerbutton/Action;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->replaceAction(Lcom/sonyericsson/cornerbutton/Action;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 257
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1800(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2000(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    .line 261
    :cond_1
    return-void
.end method

.method private expandDelayed()V
    .locals 4

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->delayedExpansion:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->mExpandRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1$1;-><init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->mExpandRunnable:Ljava/lang/Runnable;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$600(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->mExpandRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->delayedExpansion:Z

    .line 169
    :cond_1
    return-void
.end method

.method private finishDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V
    .locals 2
    .parameter "dropListener"
    .parameter "success"

    .prologue
    .line 271
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(I)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$2100(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;->onChanged(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->collapseButton()V

    .line 275
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInExtraHintrect(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$800(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$800(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopDelayedExpansion()V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->delayedExpansion:Z

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$700(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->mExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method private updateHintAction(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->containsAction(Lcom/sonyericsson/cornerbutton/Action;)Z

    move-result v0

    .line 225
    .local v0, hasEmptyAction:Z
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    if-nez v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->addAction(Lcom/sonyericsson/cornerbutton/Action;I)Z

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1400(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getNumberOfActions()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1, p1, p2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1600(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;II)V

    .line 238
    return-void
.end method


# virtual methods
.method public cancelHint(Lcom/sonyericsson/animation/Renderer;)V
    .locals 2
    .parameter "renderer"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1100(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->collapseButton()V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1200(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setGlow(Z)V

    .line 212
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->stopDelayedExpansion()V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1300(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;->onHintCancelled(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    .line 214
    return-void
.end method

.method public drop(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 3
    .parameter "view"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, dropOK:Z
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$900(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->containsAction(Lcom/sonyericsson/cornerbutton/Action;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->dropOnCornerButton(Landroid/view/View;)V

    .line 198
    const/4 v0, 0x1

    .line 200
    :cond_0
    invoke-direct {p0, p3, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->finishDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1000(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->setGlow(Z)V

    .line 202
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->stopDelayedExpansion()V

    .line 203
    return-void
.end method

.method public hint(Landroid/view/View;IILcom/sonyericsson/animation/Renderer;)Z
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "renderer"

    .prologue
    const/4 v3, 0x1

    .line 133
    invoke-static {p1}, Lcom/sonyericsson/home/layer/AdapterHelper;->getInfoFromView(Landroid/view/View;)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    .line 134
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$000(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$100(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->isHidden()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$200(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/cornerbutton/CornerButton;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->isInExtraHintrect(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->updateHintAction(II)V

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$300(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getNumberOfActions()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->expandDelayed()V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$400(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->setGlow(Z)V

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)Lcom/sonyericsson/cornerbutton/CornerButtonController$CornerButtonControllerListener;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$HomeCornerButtonControllerListener;->onHinted(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;)V

    move v1, v3

    .line 150
    :goto_1
    return v1

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->expandButton(Z)V

    goto :goto_0

    .line 150
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
