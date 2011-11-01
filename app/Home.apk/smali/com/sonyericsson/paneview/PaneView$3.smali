.class Lcom/sonyericsson/paneview/PaneView$3;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/paneview/PaneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 468
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 469
    .local v0, action:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 470
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 485
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 473
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 477
    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v2, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$500(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/paneview/PaneView$3;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v4}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->access$600(Lcom/sonyericsson/paneview/PaneView$AdapterItem;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/paneview/PaneView;->performItemClick(Landroid/view/View;IJ)Z

    .line 480
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
