.class Lcom/sonyericsson/home/HomeActivity$8$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$8;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$8;

.field final synthetic val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$8;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    iput-object p2, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$2000(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2002(Lcom/sonyericsson/home/HomeActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$8;->access$2200(Lcom/sonyericsson/home/HomeActivity$8;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 1233
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity$8;->access$2202(Lcom/sonyericsson/home/HomeActivity$8;Z)Z

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2302(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 1236
    return-void
.end method

.method public onDialogNegative()V
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$8;->access$2200(Lcom/sonyericsson/home/HomeActivity$8;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 1223
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity$8;->access$2202(Lcom/sonyericsson/home/HomeActivity$8;Z)Z

    .line 1225
    :cond_0
    return-void
.end method

.method public onDialogPositive(Landroid/os/Bundle;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$8;->access$2200(Lcom/sonyericsson/home/HomeActivity$8;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogPositive(Landroid/os/Bundle;)V

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity$8;->access$2202(Lcom/sonyericsson/home/HomeActivity$8;Z)Z

    .line 1218
    :cond_0
    return-void
.end method

.method public onIconSelected(I)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iput p1, v0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    .line 1211
    return-void
.end method

.method public onNameChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$8$4;->this$1:Lcom/sonyericsson/home/HomeActivity$8;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$8;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iput-object p1, v0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderText:Ljava/lang/String;

    .line 1207
    return-void
.end method
