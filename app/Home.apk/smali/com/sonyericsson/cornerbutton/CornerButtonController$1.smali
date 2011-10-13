.class Lcom/sonyericsson/cornerbutton/CornerButtonController$1;
.super Ljava/lang/Object;
.source "CornerButtonController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cornerbutton/CornerButtonController;-><init>(Lcom/sonyericsson/cornerbutton/CornerButton;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cornerbutton/CornerButtonController;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v1, v1, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getTopmostAction()Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButtonController$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButtonController;

    iget-object v0, v0, Lcom/sonyericsson/cornerbutton/CornerButtonController;->mCornerButton:Lcom/sonyericsson/cornerbutton/CornerButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->setSelectedAction(Lcom/sonyericsson/cornerbutton/Action;)V

    goto :goto_0
.end method
