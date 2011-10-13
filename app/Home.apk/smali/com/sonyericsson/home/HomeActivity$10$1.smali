.class Lcom/sonyericsson/home/HomeActivity$10$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$10;->onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$10;

.field final synthetic val$listener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$10;Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$10$1;->this$1:Lcom/sonyericsson/home/HomeActivity$10;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$10$1;->val$listener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderNameCanceled()V
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10$1;->val$listener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;->onRenameFinished()V

    .line 1134
    return-void
.end method

.method public onFolderNameSet(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "iconIndex"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$10$1;->val$listener:Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderController$FolderControllerListener$OnRenameFolderListener;->onRenameFinished()V

    .line 1130
    return-void
.end method
