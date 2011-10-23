.class Lcom/sonyericsson/home/layer/folder/FolderFlow$1;
.super Ljava/lang/Object;
.source "FolderFlow.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderFlow;->onClickTitle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderFlow;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameFinished()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderFlow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->access$002(Lcom/sonyericsson/home/layer/folder/FolderFlow;Z)Z

    .line 143
    return-void
.end method
