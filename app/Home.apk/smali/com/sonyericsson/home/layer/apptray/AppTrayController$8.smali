.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupEditButton(Landroid/view/View;)V
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
    .line 589
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$600(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iget-boolean v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->mDisableDuringSortDialog:Z

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$800(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    goto :goto_0

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$900(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    goto :goto_0
.end method
