.class Lcom/sonyericsson/paneview/PaneView$4;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 489
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView$4;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 491
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$4;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$4;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v0}, Lcom/sonyericsson/paneview/PaneView;->access$400(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$4;->this$0:Lcom/sonyericsson/paneview/PaneView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->access$402(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .line 494
    :cond_0
    return-void
.end method
