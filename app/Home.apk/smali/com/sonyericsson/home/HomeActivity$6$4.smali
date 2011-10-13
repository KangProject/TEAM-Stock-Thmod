.class Lcom/sonyericsson/home/HomeActivity$6$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$6;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private selectDrawable:Landroid/graphics/drawable/Drawable;

.field private selected:I

.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$6;

.field final synthetic val$defaultIcon:I

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$iconIds:[I

.field final synthetic val$iconViews:[Landroid/view/View;

.field final synthetic val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$6;ILandroid/view/View;Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;[I[Landroid/view/View;Landroid/widget/EditText;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iput p2, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$defaultIcon:I

    iput-object p3, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    iput-object p5, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$iconIds:[I

    iput-object p6, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$iconViews:[Landroid/view/View;

    iput-object p7, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$defaultIcon:I

    iput v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->selected:I

    .line 766
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->selectDrawable:Landroid/graphics/drawable/Drawable;

    .line 768
    iget v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$defaultIcon:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity$6$4;->select(I)V

    .line 769
    return-void
.end method

.method private select(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$iconViews:[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->selected:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$iconViews:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->selectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v1, v1, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->selected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v1, v1, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$1300(Lcom/sonyericsson/home/HomeActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 811
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 813
    :cond_1
    iput p1, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->selected:I

    .line 814
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    iput p1, v0, Lcom/sonyericsson/home/HomeActivity;->mSavedFolderIconIndex:I

    .line 815
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 791
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$iconIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$iconIds:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    .line 793
    invoke-direct {p0, v0}, Lcom/sonyericsson/home/HomeActivity$6$4;->select(I)V

    .line 801
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 775
    :pswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 776
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "result_folder_name"

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$view:Landroid/view/View;

    const v4, 0x7f0c0011

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v2, "result_folder_icon"

    iget v3, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->selected:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v2, v1}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogPositive(Landroid/os/Bundle;)V

    .line 781
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v2, v2, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 785
    .end local v1           #result:Landroid/os/Bundle;
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->val$onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;

    invoke-interface {v2}, Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;->onDialogNegative()V

    .line 786
    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$6$4;->this$1:Lcom/sonyericsson/home/HomeActivity$6;

    iget-object v2, v2, Lcom/sonyericsson/home/HomeActivity$6;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$1600(Lcom/sonyericsson/home/HomeActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 791
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :pswitch_data_0
    .packed-switch 0x7f0c0007
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
