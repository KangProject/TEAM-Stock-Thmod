.class Lcom/sonyericsson/home/HomeActivity$14$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$14;->onCreateFolder(Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$14;

.field final synthetic val$listener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$14;Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$14$1;->this$1:Lcom/sonyericsson/home/HomeActivity$14;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$14$1;->val$listener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderCanceled()V
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$14$1;->val$listener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;->onCanceled()V

    .line 1699
    return-void
.end method

.method public onFolderConfirmed(Ljava/lang/String;I)V
    .locals 1
    .parameter "folderName"
    .parameter "icon"

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$14$1;->val$listener:Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/home/layer/stage/StageController$StageControllerListener$OnCreateFolderCompletedListener;->onConfirmed(Ljava/lang/String;I)V

    .line 1695
    return-void
.end method
