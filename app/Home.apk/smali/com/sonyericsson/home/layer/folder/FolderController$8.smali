.class Lcom/sonyericsson/home/layer/folder/FolderController$8;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;->onResume(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$8;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameFinished()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$8;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$2802(Lcom/sonyericsson/home/layer/folder/FolderController;Z)Z

    .line 653
    return-void
.end method
