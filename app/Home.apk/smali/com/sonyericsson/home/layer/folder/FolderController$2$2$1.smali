.class Lcom/sonyericsson/home/layer/folder/FolderController$2$2$1;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderController$2$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/home/layer/folder/FolderController$2$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController$2$2;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2$1;->this$2:Lcom/sonyericsson/home/layer/folder/FolderController$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameFinished()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2$1;->this$2:Lcom/sonyericsson/home/layer/folder/FolderController$2$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$2$2;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2802(Lcom/sonyericsson/home/layer/folder/FolderController;Z)Z

    .line 297
    return-void
.end method
