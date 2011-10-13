.class Lcom/sonyericsson/home/HomeActivity$8;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->createDesktop()V
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
    .line 963
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->isInOverview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$000(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/layer/desktop/DesktopController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->exitOverview()V

    .line 968
    :cond_0
    return-void
.end method
