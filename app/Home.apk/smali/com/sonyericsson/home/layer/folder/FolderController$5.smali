.class Lcom/sonyericsson/home/layer/folder/FolderController$5;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;
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
    .line 216
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$5;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppearanceChanged()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$5;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->onAppearanceChanged()V

    .line 224
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$5;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$900(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->onContentChanged()V

    .line 220
    return-void
.end method
