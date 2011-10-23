.class public Lcom/sonyericsson/home/layer/folder/FolderFlow;
.super Ljava/lang/Object;
.source "FolderFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;
    }
.end annotation


# instance fields
.field private mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

.field private final mFolderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

.field private final mInfoGroupInterface:Lcom/sonyericsson/home/data/InfoGroupInterface;

.field private mIsOpen:Z

.field private final mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

.field private mPickedUpItem:Lcom/sonyericsson/home/data/Info;

.field private mPickedUpPosition:I

.field private final mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

.field private mRenamingFolder:Z

.field private final mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

.field private mScrollMargin:I

.field private final mSourceRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;Lcom/sonyericsson/home/layer/folder/FolderModelManager;Lcom/sonyericsson/home/layer/folder/FolderLocator;Lcom/sonyericsson/home/data/InfoGroupInterface;Lcom/sonyericsson/home/layer/LayerRendererFactory;)V
    .locals 1
    .parameter "presenter"
    .parameter "modelManager"
    .parameter "folderLocator"
    .parameter "infoGroupInterface"
    .parameter "rendererFactory"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    .line 107
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    .line 108
    iput-object p2, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    .line 109
    iput-object p3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    .line 110
    iput-object p4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mInfoGroupInterface:Lcom/sonyericsson/home/data/InfoGroupInterface;

    .line 111
    iput-object p5, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    .line 112
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/home/layer/folder/FolderFlow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRenamingFolder:Z

    return p1
.end method

.method private isInfoTypeAllowed(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 334
    instance-of v0, p1, Lcom/sonyericsson/home/data/ActivityInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/home/data/ShortcutInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->stopHinting()V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setLockScrollbarRange(Z)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setScroll(I)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->notifyDataSetChanged()V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderListener;->onCancelHint()V

    .line 222
    :cond_0
    return-void
.end method

.method public closeFolder(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mIsOpen:Z

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->hide(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method public contains(Lcom/sonyericsson/home/data/Info;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mInfoGroupInterface:Lcom/sonyericsson/home/data/InfoGroupInterface;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/home/data/InfoGroupInterface;->contains(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/data/Info;)Z

    move-result v0

    return v0
.end method

.method public drop(Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/animation/Renderer;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 8
    .parameter "info"
    .parameter "renderer"
    .parameter "dropListener"

    .prologue
    const/4 v7, 0x0

    .line 225
    const/4 v2, 0x1

    .line 228
    .local v2, result:I
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    if-nez v3, :cond_0

    .line 229
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    invoke-direct {p0, v3}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->isInfoTypeAllowed(Lcom/sonyericsson/home/data/Info;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    const/4 v2, 0x0

    .line 237
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getHintPosition()I

    move-result v0

    .line 243
    .local v0, hintPosition:I
    if-eqz p2, :cond_2

    .line 244
    invoke-static {}, Lcom/sonyericsson/util/RectPool;->obtainRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 245
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v3, v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->getContentGlobalVisibleRect(Landroid/graphics/Rect;)V

    .line 246
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v5}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->getScrollOffset()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/sonyericsson/animation/Renderer;->offset(IIJ)V

    .line 248
    invoke-static {v1}, Lcom/sonyericsson/util/RectPool;->recycleRect(Landroid/graphics/Rect;)V

    .line 249
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-virtual {v3, p2, v0}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->setNextAddRenderer(Lcom/sonyericsson/animation/Renderer;I)V

    .line 252
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mInfoGroupInterface:Lcom/sonyericsson/home/data/InfoGroupInterface;

    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    invoke-interface {v3, v4, v0, v5}, Lcom/sonyericsson/home/data/InfoGroupInterface;->add(Lcom/sonyericsson/home/data/InfoGroup;ILcom/sonyericsson/home/data/Info;)V

    .line 256
    .end local v0           #hintPosition:I
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    .line 257
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->stopHinting()V

    .line 258
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v3}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->notifyDataSetChanged()V

    .line 260
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v3, v7}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setLockScrollbarRange(Z)V

    .line 261
    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v3, v7}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setScroll(I)V

    .line 263
    invoke-interface {p3, v2}, Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;->dropFinished(I)V

    .line 264
    return-void
.end method

.method public getFolder()Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    return-object v0
.end method

.method public hint(Landroid/graphics/Rect;I)Z
    .locals 5
    .parameter "hitRect"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 267
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->getScrollOffset()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 268
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mInfoGroupInterface:Lcom/sonyericsson/home/data/InfoGroupInterface;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v2}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/data/InfoGroupInterface;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderLocator:Lcom/sonyericsson/home/layer/folder/FolderLocator;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/layer/folder/FolderLocator;->getHintPosition(Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 272
    .local v0, hintPosition:I
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->setHint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->notifyDataSetChanged()V

    .line 276
    :cond_0
    iget v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mScrollMargin:I

    if-ge p2, v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v1, v4}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setScroll(I)V

    .line 284
    :goto_0
    return v4

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->getScrollViewHeight()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mScrollMargin:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setScroll(I)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v1, v3}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setScroll(I)V

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mIsOpen:Z

    return v0
.end method

.method public isRenamingFolder()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRenamingFolder:Z

    return v0
.end method

.method public onAppearanceChanged()V
    .locals 3

    .prologue
    .line 155
    iget-boolean v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mIsOpen:Z

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v0

    .line 157
    .local v0, folder:Lcom/sonyericsson/home/data/InfoGroup;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setTitle(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setOpenFolderIcon(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 160
    .end local v0           #folder:Lcom/sonyericsson/home/data/InfoGroup;
    :cond_0
    return-void
.end method

.method public onClickFade()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow;->closeFolder(Z)V

    .line 134
    return-void
.end method

.method public onClickTitle(Z)V
    .locals 3
    .parameter "restore"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRenamingFolder:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRenamingFolder:Z

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/home/layer/folder/FolderFlow$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$1;-><init>(Lcom/sonyericsson/home/layer/folder/FolderFlow;)V

    invoke-interface {v0, v1, v2, p1}, Lcom/sonyericsson/home/layer/folder/FolderListener;->onRenameFolder(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/layer/folder/FolderListener$OnRenameFinishedListener;Z)V

    .line 146
    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->notifyDataSetChanged()V

    .line 152
    :cond_0
    return-void
.end method

.method public onGridChanged()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

.method public onItemClick(Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "globalVisibleRect"
    .parameter "position"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v1, p2}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->getItem(I)Lcom/sonyericsson/home/data/Info;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/home/layer/folder/FolderListener;->onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 3
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mIsOpen:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRendererFactory:Lcom/sonyericsson/home/layer/LayerRendererFactory;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/home/layer/LayerRendererFactory;->ignoreNextGetDeleteRenderer(I)V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mInfoGroupInterface:Lcom/sonyericsson/home/data/InfoGroupInterface;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/sonyericsson/home/data/InfoGroupInterface;->remove(Lcom/sonyericsson/home/data/InfoGroup;I)Lcom/sonyericsson/home/data/Info;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    .line 169
    iput p2, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpPosition:I

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0, v2}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setLockScrollbarRange(Z)V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->notifyDataSetChanged()V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->transferView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderListener;->onItemPickedUp()V

    :cond_0
    move v0, v2

    .line 182
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTransferCanceled(Landroid/view/View;Lcom/sonyericsson/animation/Renderer;)V
    .locals 6
    .parameter "view"
    .parameter "renderer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mInfoGroupInterface:Lcom/sonyericsson/home/data/InfoGroupInterface;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpPosition:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/home/data/InfoGroupInterface;->add(Lcom/sonyericsson/home/data/InfoGroup;ILcom/sonyericsson/home/data/Info;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->stopHinting()V

    .line 192
    iput-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    .line 193
    iput v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpPosition:I

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v0}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->notifyDataSetChanged()V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->getFolder()Lcom/sonyericsson/home/data/InfoGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/layer/folder/FolderListener;->onTransferCanceled(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 202
    if-eqz p2, :cond_2

    .line 204
    const-string v0, "reset_closest_vertex"

    invoke-interface {p2, v0, v4, v4, v5}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 206
    const-string v0, "set_alpha"

    invoke-interface {p2, v0, v4, v4, v5}, Lcom/sonyericsson/animation/Renderer;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 208
    :cond_2
    return-void
.end method

.method public onTransferCompleted()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPickedUpItem:Lcom/sonyericsson/home/data/Info;

    .line 212
    return-void
.end method

.method public openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;Z)V
    .locals 8
    .parameter "infoGroup"
    .parameter "sourceRect"
    .parameter "animate"

    .prologue
    const/4 v7, 0x0

    .line 288
    iget-boolean v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mIsOpen:Z

    if-eqz v4, :cond_0

    .line 289
    const-string v4, "FolderController"

    const-string v5, "openFolder() invoked while folder was already open"

    invoke-static {v4, v5}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mIsOpen:Z

    .line 294
    iput-boolean v7, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRenamingFolder:Z

    .line 295
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mModelManager:Lcom/sonyericsson/home/layer/folder/FolderModelManager;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->setFolder(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 296
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v4, p1}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setOpenFolderIcon(Lcom/sonyericsson/home/data/InfoGroup;)V

    .line 297
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-virtual {p1}, Lcom/sonyericsson/home/data/InfoGroup;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setTitle(Ljava/lang/String;)V

    .line 300
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v4}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->getOpenFolderIconWidth()I

    move-result v1

    .line 301
    .local v1, drawableWidth:I
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v4}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->getOpenFolderIconHeight()I

    move-result v0

    .line 302
    .local v0, drawableHeight:I
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    invoke-interface {v4, v5}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->getFolderGlobalVisibleRect(Landroid/graphics/Rect;)V

    .line 303
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v5

    .line 304
    .local v2, left:I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 305
    .local v3, top:I
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v4, v7}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->setLockScrollbarRange(Z)V

    .line 308
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mSourceRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mInfoGroupInterface:Lcom/sonyericsson/home/data/InfoGroupInterface;

    invoke-interface {v6, p1}, Lcom/sonyericsson/home/data/InfoGroupInterface;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v6

    invoke-interface {v4, v5, v6, p3}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->show(Landroid/graphics/Rect;IZ)V

    .line 309
    iget-object v4, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mPresenter:Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;

    invoke-interface {v4}, Lcom/sonyericsson/home/layer/folder/FolderFlow$Presenter;->requestFocus()Z

    .line 310
    return-void
.end method

.method public setFolderListener(Lcom/sonyericsson/home/layer/folder/FolderListener;)V
    .locals 0
    .parameter "folderListener"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mFolderListener:Lcom/sonyericsson/home/layer/folder/FolderListener;

    .line 116
    return-void
.end method

.method public setRenamingFolder(Z)V
    .locals 0
    .parameter "renamingFolder"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mRenamingFolder:Z

    .line 355
    return-void
.end method

.method public setScrollMargin(I)V
    .locals 0
    .parameter "scrollMargin"

    .prologue
    .line 119
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderFlow;->mScrollMargin:I

    .line 120
    return-void
.end method
