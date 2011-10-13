.class Lcom/sonyericsson/home/layer/folder/FolderController$1;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppearanceChanged()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$500(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/data/InfoGroup;->getIcon()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 102
    :cond_0
    return-void
.end method
