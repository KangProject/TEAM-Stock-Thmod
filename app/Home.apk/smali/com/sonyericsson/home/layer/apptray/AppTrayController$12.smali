.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 770
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->isEditingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/data/Info;

    .line 778
    .local v0, info:Lcom/sonyericsson/home/data/Info;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 779
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 780
    .local v1, sourceBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 781
    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
