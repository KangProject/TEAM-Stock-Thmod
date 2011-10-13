.class Lcom/sonyericsson/home/layer/folder/FolderController$2$1;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 258
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$1;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$2$1;->this$1:Lcom/sonyericsson/home/layer/folder/FolderController$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/folder/FolderController$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->closeFolder()V

    .line 261
    return-void
.end method
