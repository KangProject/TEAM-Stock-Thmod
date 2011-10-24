.class public Lcom/sonyericsson/home/layer/HintInfo;
.super Lcom/sonyericsson/home/data/Info;
.source "HintInfo.java"


# instance fields
.field private mHintType:I

.field private final mHintView:Lcom/sonyericsson/home/layer/HintView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/home/data/Info;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/home/layer/HintInfo;->mHintType:I

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/layer/HintView;

    iput-object v0, p0, Lcom/sonyericsson/home/layer/HintInfo;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    .line 32
    return-void
.end method


# virtual methods
.method public getHintType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/home/layer/HintInfo;->mHintType:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/home/layer/HintInfo;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    iget v1, p0, Lcom/sonyericsson/home/layer/HintInfo;->mHintType:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/HintView;->setHintType(I)V

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/home/layer/HintInfo;->mHintView:Lcom/sonyericsson/home/layer/HintView;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public setHintType(I)V
    .locals 0
    .parameter "hintType"

    .prologue
    .line 40
    iput p1, p0, Lcom/sonyericsson/home/layer/HintInfo;->mHintType:I

    .line 41
    return-void
.end method
