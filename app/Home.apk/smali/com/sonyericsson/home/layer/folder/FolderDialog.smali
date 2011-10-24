.class public Lcom/sonyericsson/home/layer/folder/FolderDialog;
.super Landroid/app/AlertDialog;
.source "FolderDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;
    }
.end annotation


# static fields
.field public static final RESULT_FOLDER_ICON:Ljava/lang/String; = "result_folder_icon"

.field public static final RESULT_FOLDER_NAME:Ljava/lang/String; = "result_folder_name"


# instance fields
.field private mDefaultFolderName:Ljava/lang/String;

.field private mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

.field private mEditText:Landroid/widget/EditText;

.field private mFolderName:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDefaultFolderName:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    new-instance v0, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;-><init>(Lcom/sonyericsson/home/layer/folder/FolderDialog;)V

    .line 132
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/folder/FolderDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogNegative()V

    .line 173
    :cond_0
    return-void
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onClose(Landroid/app/Dialog;)V

    .line 183
    :cond_0
    return-void
.end method

.method public setDialogListener(Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    .line 163
    return-void
.end method

.method public show(ILjava/lang/String;)V
    .locals 3
    .parameter "titleResource"
    .parameter "name"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e0031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 147
    .local v0, editText:Landroid/widget/EditText;
    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    .line 153
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 154
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->show()V

    .line 155
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDefaultFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
