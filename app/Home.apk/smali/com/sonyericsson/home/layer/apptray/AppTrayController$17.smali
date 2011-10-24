.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$AppTrayEditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createAppTrayEditor(Landroid/content/Context;Lcom/sonyericsson/home/transfer/TransferHandler;Landroid/view/View;Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/grid/Grid;)Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;
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
    .line 1155
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditCanceled()V
    .locals 0

    .prologue
    .line 1164
    return-void
.end method

.method public onEditEnd()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V

    .line 1161
    return-void
.end method

.method public onEditStarted()V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method

.method public onNudgeHint()V
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$2100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/PaneIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/PaneIndicator;->show()V

    .line 1182
    return-void
.end method

.method public onTransferCanceled()V
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onItemTransferCanceled()V

    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$402(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)Z

    .line 1178
    :cond_0
    return-void
.end method

.method public onTransferToDesktop()V
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onItemPickedUp()V

    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$17;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$402(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Z)Z

    .line 1171
    :cond_0
    return-void
.end method
