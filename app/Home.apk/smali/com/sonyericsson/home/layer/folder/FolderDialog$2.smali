.class Lcom/sonyericsson/home/layer/folder/FolderDialog$2;
.super Ljava/lang/Object;
.source "FolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/folder/FolderDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/GlobalCustomizationManager;)V
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
    .line 130
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$400()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$400()[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v2, v3, :cond_3

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v2, v0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$500(Lcom/sonyericsson/home/layer/folder/FolderDialog;I)V

    .line 164
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 135
    :pswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "result_folder_name"

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$200(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0e001f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "result_folder_icon"

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$300(Lcom/sonyericsson/home/layer/folder/FolderDialog;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogPositive(Landroid/os/Bundle;)V

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->dismiss()V

    goto :goto_1

    .line 147
    .end local v1           #result:Landroid/os/Bundle;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogNegative()V

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;->this$0:Lcom/sonyericsson/home/layer/folder/FolderDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->dismiss()V

    goto :goto_1

    .line 155
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f0e000f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
