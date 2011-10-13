.class Lcom/sonyericsson/cornerbutton/CornerButton$4;
.super Ljava/lang/Object;
.source "CornerButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cornerbutton/CornerButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cornerbutton/CornerButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$500(Lcom/sonyericsson/cornerbutton/CornerButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$600(Lcom/sonyericsson/cornerbutton/CornerButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$700(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$800(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$800(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$700(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;->onLongPress(Lcom/sonyericsson/cornerbutton/Action;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$500(Lcom/sonyericsson/cornerbutton/CornerButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$600(Lcom/sonyericsson/cornerbutton/CornerButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$800(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$4;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$800(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cornerbutton/CornerButton$CornerButtonLongPressListener;->onCollapsedLongPress()V

    goto :goto_0
.end method
