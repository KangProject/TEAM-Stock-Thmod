.class Lcom/sonyericsson/home/layer/folder/FolderController$1;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;


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
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentGlobalVisibleRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/PaneView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 145
    return-void
.end method

.method public getFolderGlobalVisibleRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 149
    return-void
.end method

.method public getItem(I)Lcom/sonyericsson/home/data/Info;
    .locals 1
    .parameter "position"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    return-object v0
.end method

.method public getOpenFolderIconHeight()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getOpenFolderDrawableHeight()I

    move-result v0

    return v0
.end method

.method public getOpenFolderIconWidth()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->getOpenFolderDrawableWidth()I

    move-result v0

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getScrollOffset()I

    move-result v0

    return v0
.end method

.method public getScrollViewHeight()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getHeight()I

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->hide(Z)V

    .line 127
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->requestFocus()Z

    move-result v0

    .line 163
    .local v0, tookFocus:Z
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x1

    .line 167
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->requestFocus()Z

    move-result v1

    goto :goto_0
.end method

.method public setLockScrollbarRange(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/paneview/PaneView;->keepMaxScroll(Z)V

    .line 96
    return-void
.end method

.method public setOpenFolderIcon(I)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$100(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/GlobalCustomizationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/GlobalCustomizationManager;->getOpenFolderIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    .local v0, openFolder:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->setOpenFolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method

.method public setScroll(I)V
    .locals 2
    .parameter "scrollDirection"

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$700(Lcom/sonyericsson/home/layer/folder/FolderController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const v1, -0x435c28f6

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$802(Lcom/sonyericsson/home/layer/folder/FolderController;F)F

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$700(Lcom/sonyericsson/home/layer/folder/FolderController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    const v1, 0x3ca3d70a

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$802(Lcom/sonyericsson/home/layer/folder/FolderController;F)F

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$700(Lcom/sonyericsson/home/layer/folder/FolderController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$400(Lcom/sonyericsson/home/layer/folder/FolderController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public show(Landroid/graphics/Rect;IZ)V
    .locals 2
    .parameter "sourceRect"
    .parameter "count"
    .parameter "animate"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$000(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setScrollPosition(F)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$200(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/layer/folder/FolderLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/home/layer/folder/FolderLayout;->show(Landroid/graphics/Rect;IZ)V

    .line 133
    return-void
.end method

.method public transferView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$600(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$500(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/home/transfer/TransferSource;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderController$1;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/folder/FolderController;->access$300(Lcom/sonyericsson/home/layer/folder/FolderController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/sonyericsson/home/transfer/TransferHandler;->transferView(Lcom/sonyericsson/home/transfer/TransferSource;Landroid/view/View;Landroid/view/View;)Lcom/sonyericsson/animation/Renderer;

    .line 104
    return-void
.end method
