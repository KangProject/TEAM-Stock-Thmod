.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4$1;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"

# interfaces
.implements Lcom/sonyericsson/home/transfer/TransferSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)Lcom/sonyericsson/animation/Renderer;
    .locals 1
    .parameter "view"
    .parameter "renderer"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$4;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$1800(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;Lcom/sonyericsson/animation/Renderer;)V

    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTransferCompleted()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method
