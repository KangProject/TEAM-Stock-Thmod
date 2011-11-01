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

.field private static final iconIds:[I


# instance fields
.field private mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

.field private mEditText:Landroid/widget/EditText;

.field private mFolderName:Ljava/lang/String;

.field private mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

.field private mIconViews:[Landroid/widget/ImageView;

.field private mSelectedIcon:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->iconIds:[I

    return-void

    :array_0
    .array-data 0x4
        0x20t 0x0t 0xet 0x7ft
        0x21t 0x0t 0xet 0x7ft
        0x22t 0x0t 0xet 0x7ft
        0x23t 0x0t 0xet 0x7ft
        0x24t 0x0t 0xet 0x7ft
        0x25t 0x0t 0xet 0x7ft
        0x26t 0x0t 0xet 0x7ft
        0x27t 0x0t 0xet 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/GlobalCustomizationManager;)V
    .locals 5
    .parameter "context"
    .parameter "globalCustomizationManager"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 101
    iput-object p2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->setView(Landroid/view/View;)V

    .line 106
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v3, 0x7f0e001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    .line 107
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    sget-object v2, Lcom/sonyericsson/home/layer/folder/FolderDialog;->iconIds:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mIconViews:[Landroid/widget/ImageView;

    .line 125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/sonyericsson/home/layer/folder/FolderDialog;->iconIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 126
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mIconViews:[Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    sget-object v4, Lcom/sonyericsson/home/layer/folder/FolderDialog;->iconIds:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mIconViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/home/GlobalCustomizationManager;->getFolderIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance v1, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$2;-><init>(Lcom/sonyericsson/home/layer/folder/FolderDialog;)V

    .line 168
    .local v1, onClickListener:Landroid/view/View$OnClickListener;
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mIconViews:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mIconViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v3, 0x7f0e000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v3, 0x7f0e0010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/folder/FolderDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/home/layer/folder/FolderDialog;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/home/layer/folder/FolderDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mSelectedIcon:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->iconIds:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/home/layer/folder/FolderDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->select(I)V

    return-void
.end method

.method private select(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 232
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mIconViews:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mSelectedIcon:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 233
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mIconViews:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 234
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    iget v3, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mSelectedIcon:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/home/GlobalCustomizationManager;->getFolderDefaultLabel(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, selectedText:Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, folderName:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/home/GlobalCustomizationManager;->getFolderDefaultLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 243
    :cond_1
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mSelectedIcon:I

    .line 244
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v2, p1}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onIconSelected(I)V

    .line 247
    :cond_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onDialogNegative()V

    .line 218
    :cond_0
    return-void
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedIcon()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mSelectedIcon:I

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;->onClose(Landroid/app/Dialog;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setDialogListener(Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mDialogListener:Lcom/sonyericsson/home/layer/folder/FolderDialog$FolderDialogListener;

    .line 208
    return-void
.end method

.method public show(ILjava/lang/String;I)V
    .locals 3
    .parameter "titleResource"
    .parameter "name"
    .parameter "icon"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mView:Landroid/view/View;

    const v2, 0x7f0e001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 187
    .local v0, editText:Landroid/widget/EditText;
    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    invoke-direct {p0, p3}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->select(I)V

    .line 193
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mFolderName:Ljava/lang/String;

    .line 194
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/home/layer/folder/FolderDialog;->show()V

    .line 196
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderDialog;->mGlobalCustomizationManager:Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-virtual {v1, p3}, Lcom/sonyericsson/home/GlobalCustomizationManager;->getFolderDefaultLabel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
