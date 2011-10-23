.class Lcom/sonyericsson/home/layer/folder/FolderDialog$2;
.super Ljava/lang/Object;
.source "FolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 109
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, result:Landroid/os/Bundle;
    const-string v2, "result_folder_name"

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$200(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0e0031

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogPositive(Landroid/os/Bundle;)V

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->dismiss()V

    goto :goto_0

    .line 120
    .end local v0           #result:Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogNegative()V

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->dismiss()V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0016
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
