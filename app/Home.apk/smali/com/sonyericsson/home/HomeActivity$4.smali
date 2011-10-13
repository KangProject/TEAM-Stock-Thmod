.class Lcom/sonyericsson/home/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$4;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 609
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$4;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$400(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$4;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$500(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/transfer/TransferView;

    move-result-object v0

    const/high16 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/transfer/TransferView;->setDescendantFocusability(I)V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$4;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$402(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 616
    return-void
.end method
