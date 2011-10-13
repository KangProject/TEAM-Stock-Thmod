.class Lcom/sonyericsson/home/layer/folder/FolderController$2$2;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderController$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController$2;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0, v4}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2802(Lcom/sonyericsson/home/layer/folder/FolderController;Z)Z

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2700(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderController$2$2$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderController$2$2$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderController$2$2;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener;->onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;Z)V

    .line 300
    :cond_0
    return v4
.end method
