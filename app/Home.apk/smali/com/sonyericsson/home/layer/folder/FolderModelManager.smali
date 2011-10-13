.class public Lcom/sonyericsson/home/layer/folder/FolderModelManager;
.super Ljava/lang/Object;
.source "FolderModelManager.java"


# static fields
.field public static final HINT_POSITION_NO_HINT:I = -0x1


# instance fields
.field private mFolder:Lcom/sonyericsson/home/data/InfoGroup;

.field private mHintPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    return-void
.end method


# virtual methods
.method public getFolder()Lcom/sonyericsson/home/data/InfoGroup;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mFolder:Lcom/sonyericsson/home/data/InfoGroup;

    return-object v0
.end method

.method public getHintPosition()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    return v0
.end method

.method public setFolder(Lcom/sonyericsson/home/data/InfoGroup;)V
    .locals 0
    .parameter "infoGroup"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mFolder:Lcom/sonyericsson/home/data/InfoGroup;

    .line 28
    return-void
.end method

.method public setHint(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 35
    iget v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    if-eq p1, v0, :cond_0

    .line 36
    iput p1, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    .line 37
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopHinting()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/layer/folder/FolderModelManager;->mHintPosition:I

    .line 45
    return-void
.end method
