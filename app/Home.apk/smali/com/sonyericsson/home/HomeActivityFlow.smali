.class Lcom/sonyericsson/home/HomeActivityFlow;
.super Ljava/lang/Object;
.source "HomeActivityFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;,
        Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;,
        Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;,
        Lcom/sonyericsson/home/HomeActivityFlow$Presenter;
    }
.end annotation


# static fields
.field public static final RESULT_FOLDER_ICON:Ljava/lang/String; = "result_folder_icon"

.field public static final RESULT_FOLDER_NAME:Ljava/lang/String; = "result_folder_name"


# instance fields
.field private mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/HomeActivityFlow$Presenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/HomeActivityFlow;)Lcom/sonyericsson/home/HomeActivityFlow$Presenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    return-object v0
.end method


# virtual methods
.method public addActivity(Lcom/sonyericsson/home/data/ActivityInfo;)V
    .locals 2
    .parameter "activityInfo"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addActivity(Lcom/sonyericsson/home/data/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public addAdvWidget(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addAdvWidget(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public addFolder(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V
    .locals 3
    .parameter "listener"
    .parameter "text"
    .parameter "iconIndex"

    .prologue
    .line 199
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$1;-><init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;)V

    .line 216
    .local v0, onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v2, 0x7f07001c

    invoke-interface {v1, v0, v2, p2, p3}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;I)V

    .line 218
    return-void
.end method

.method public addShortcut(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addShortcut(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public addWidget(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->addWidget(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    move v0, v2

    .line 189
    :goto_0
    return v0

    .line 187
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 189
    goto :goto_0
.end method

.method public confirmFolderCreate(Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;Ljava/lang/String;I)V
    .locals 3
    .parameter "listener"
    .parameter "text"
    .parameter "iconIndex"

    .prologue
    .line 288
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow$4;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/home/HomeActivityFlow$4;-><init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;)V

    .line 299
    .local v0, onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v2, 0x7f07001c

    invoke-interface {v1, v0, v2, p2, p3}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;I)V

    .line 301
    return-void
.end method

.method public onDeleteDrop(Lcom/sonyericsson/home/data/InfoGroupInterface;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V
    .locals 3
    .parameter "infoGroupInterface"
    .parameter "info"
    .parameter "dropListener"

    .prologue
    .line 250
    instance-of v1, p2, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sonyericsson/home/data/InfoGroup;

    .end local p2
    invoke-interface {p1, p2}, Lcom/sonyericsson/home/data/InfoGroupInterface;->getInfoCount(Lcom/sonyericsson/home/data/InfoGroup;)I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow$2;

    invoke-direct {v0, p0, p3}, Lcom/sonyericsson/home/HomeActivityFlow$2;-><init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;)V

    .line 261
    .local v0, onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showDeleteDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;)V

    .line 265
    .end local v0           #onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const/4 v2, 0x1

    invoke-interface {v1, p3, v2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->finishDeleteDrop(Lcom/sonyericsson/home/transfer/TransferTarget$DropListener;Z)V

    goto :goto_0
.end method

.method public onInfoClicked(Lcom/sonyericsson/home/data/Info;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "info"
    .parameter "sourceBounds"

    .prologue
    .line 221
    instance-of v1, p1, Lcom/sonyericsson/home/data/InfoGroup;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    check-cast p1, Lcom/sonyericsson/home/data/InfoGroup;

    .end local p1
    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->openFolder(Lcom/sonyericsson/home/data/InfoGroup;Landroid/graphics/Rect;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v1, :cond_0

    .line 225
    instance-of v1, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/sonyericsson/home/data/Info;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 229
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 230
    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v1, v0}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->startActivitySafely(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v1, p2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->overrideTransition(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v2, 0x7f070017

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    goto :goto_0
.end method

.method public setFolderName(Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;Ljava/lang/String;I)V
    .locals 3
    .parameter "infoGroup"
    .parameter "listener"
    .parameter "text"
    .parameter "iconIndex"

    .prologue
    .line 269
    new-instance v0, Lcom/sonyericsson/home/HomeActivityFlow$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow$3;-><init>(Lcom/sonyericsson/home/HomeActivityFlow;Lcom/sonyericsson/home/data/InfoGroup;Lcom/sonyericsson/home/HomeActivityFlow$OnFolderNameSetListener;)V

    .line 282
    .local v0, onDialogResultListener:Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v2, 0x7f07001a

    invoke-interface {v1, v0, v2, p3, p4}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showFolderDialog(Lcom/sonyericsson/home/HomeActivityFlow$OnDialogResultListener;ILjava/lang/String;I)V

    .line 284
    return-void
.end method

.method public startActivitySafelyForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->startActivitySafelyForResult(Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivityFlow;->mPresenter:Lcom/sonyericsson/home/HomeActivityFlow$Presenter;

    const v1, 0x7f070017

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/HomeActivityFlow$Presenter;->showToast(I)V

    .line 246
    :cond_0
    return-void
.end method
