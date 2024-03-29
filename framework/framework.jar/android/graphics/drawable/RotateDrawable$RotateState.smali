.class final Landroid/graphics/drawable/RotateDrawable$RotateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RotateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotateState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field mCurrentDegrees:F

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mFromDegrees:F

.field mPivotX:F

.field mPivotXRel:Z

.field mPivotY:F

.field mPivotYRel:Z

.field mToDegrees:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/graphics/drawable/RotateDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "source"
    .parameter "owner"
    .parameter "res"

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 319
    if-eqz p1, :cond_0

    .line 320
    if-eqz p3, :cond_1

    .line 321
    iget-object v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 325
    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 326
    iget-boolean v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 327
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 328
    iget-boolean v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 329
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 330
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 331
    iget v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    iput v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    .line 334
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 352
    iget-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    .line 354
    iput-boolean v1, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCheckedConstantState:Z

    .line 357
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCanConstantState:Z

    return v0

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 343
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable$1;)V

    return-object v0
.end method
