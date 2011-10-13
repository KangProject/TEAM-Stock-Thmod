.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupSortButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$1000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->sortButtonPressed(Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTraySortCallback;)V

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$9;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    goto :goto_0
.end method
