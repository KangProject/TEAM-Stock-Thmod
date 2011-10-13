.class public Lcom/android/internal/widget/SlidingTabSemc;
.super Landroid/view/ViewGroup;
.source "SlidingTabSemc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_MOVE_TIME:I = 0x12c

.field private static final BACKGROUND_ID:I = 0x3ed

.field private static final BUTTON_POSITION:D = 0.135

.field private static final DISABLED_FIRST_BUTTON_ID:I = 0x3eb

.field private static final DISABLED_SECOND_BUTTON_ID:I = 0x3ec

.field private static final EXPANDED_BUTTON_ID:I = 0x3e9

.field private static final EXP_TO_DIS_ANIM_TIME:I = 0x190

.field private static final FINGER_FLICKERING_THRESHOLD:I = 0x14

.field private static final GHOST_ANIM_MOVE_TIME:I = 0x352

.field private static final GHOST_ANIM_TIMES:I = 0x2

.field private static final GHOST_BUTTON_ID:I = 0x3ea

.field private static final GHOST_START_AFTER:I = 0x258

.field private static final NONE_TOUCH_PART_VERTICALLY:D = 0.4

.field private static final NO_POINTER_ID:I = -0x1

.field private static final SLIDER_STATE_FIRST:B = 0x1t

.field private static final SLIDER_STATE_NONE:B = 0x0t

.field private static final SLIDER_STATE_SECOND:B = 0x2t

.field private static final THRESHOLD_VAL_PART_OF_SCREEN:D = 0.3

.field private static final VIBRATE_ON_TOUCH_MS:I = 0x1e


# instance fields
.field private mAbortGhostAnimation:Z

.field private mActivePointerId:I

.field private mBackground:Landroid/widget/ImageView;

.field private mDisabledFirstButton:Landroid/widget/ImageView;

.field private mDisabledSecondButton:Landroid/widget/ImageView;

.field private mDrawableFirstDisabledId:I

.field private mDrawableFirstExpandedId:I

.field private mDrawableFirstGhostId:I

.field private mDrawableFirstGotoId:I

.field private mDrawableSecondDisabledId:I

.field private mDrawableSecondExpandedId:I

.field private mDrawableSecondGhostId:I

.field private mDrawableSecondGotoId:I

.field private mExpandedButton:Landroid/widget/ImageView;

.field private mFingerFlickerDone:Z

.field private mFingerOff:I

.field private mFingerStartPos:I

.field private mFirstActivatePoint:I

.field private mFirstBtnPosition:I

.field private mFirstTouchablePart:I

.field private mGhostButton:Landroid/widget/ImageView;

.field private mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

.field private mIsAnimating:Z

.field private mIsGhostAnimating:Z

.field private mLastMovePos:F

.field private mLongpressGhostStarted:Z

.field private mNoneTouchPart:I

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

.field private mPastActionPoint:Z

.field private mPortrait:Z

.field private mPressTimestamp:J

.field private mResetAfterGhost:Z

.field private mSecondActivatePoint:I

.field private mSecondBtnPosition:I

.field private mSecondTouchablePart:I

.field private mSlider1Id:I

.field private mSlider2Id:I

.field private mSlider3Id:I

.field private mSliderHeight:I

.field private mSliderState:B

.field private mSliderWidth:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v7, 0x3ec

    const/16 v6, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 105
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 107
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    .line 109
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    .line 112
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 115
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 121
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 124
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    .line 127
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 130
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    .line 134
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 136
    const v1, 0x10803bd

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    .line 137
    const v1, 0x10803be

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    .line 138
    const v1, 0x10803bc

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    .line 139
    const v1, 0x10803bb

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    .line 141
    const v1, 0x10803c6

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    .line 142
    const v1, 0x10803c7

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    .line 143
    const v1, 0x10803c5

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    .line 144
    const v1, 0x10803c4

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    .line 146
    const v1, 0x1080422

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    .line 147
    const v1, 0x1080424

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    .line 148
    const v1, 0x1080423

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    .line 151
    iput-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Portrait"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iput-boolean v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    .line 173
    :goto_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    .line 174
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    .line 175
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    .line 176
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    .line 177
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3ed

    invoke-direct {p0, v1, v2, v5, v3}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 182
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 184
    .local v0, display:Landroid/view/Display;
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 186
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    .line 187
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5, v7}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 196
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 197
    return-void

    .line 170
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_1

    move v1, v5

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    goto/16 :goto_0

    :cond_1
    move v1, v4

    goto :goto_2

    .line 190
    .restart local v0       #display:Landroid/view/Display;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    .line 191
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 192
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5, v7}, Lcom/android/internal/widget/SlidingTabSemc;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SlidingTabSemc;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SlidingTabSemc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SlidingTabSemc;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SlidingTabSemc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SlidingTabSemc;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/SlidingTabSemc;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/widget/SlidingTabSemc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/SlidingTabSemc;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/SlidingTabSemc;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateExpandedToDisabled(Z)V
    .locals 6
    .parameter "animateExpanded"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 505
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 506
    .local v0, goneToDispAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 507
    new-instance v1, Lcom/android/internal/widget/SlidingTabSemc$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SlidingTabSemc$1;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 517
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    if-eqz p1, :cond_3

    .line 531
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 532
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 541
    :cond_0
    :goto_1
    return-void

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 533
    :cond_2
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 537
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 539
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private animateGhost(J)V
    .locals 8
    .parameter "afterMs"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 544
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    if-nez v3, :cond_1

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v3, :cond_1

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, animMove:I
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 548
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v3, v4, :cond_3

    .line 549
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_2

    .line 550
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 555
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int v0, v3, v4

    .line 565
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_5

    move v1, v0

    .line 568
    .local v1, fromX:I
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_6

    move v2, v6

    .line 569
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v7, v5, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 570
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 571
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 572
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    new-instance v4, Lcom/android/internal/widget/SlidingTabSemc$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/SlidingTabSemc$2;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 586
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    :cond_1
    return-void

    .line 552
    .restart local v0       #animMove:I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 556
    :cond_3
    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 557
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_4

    .line 558
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    :goto_4
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 563
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v0, v3, v4

    goto :goto_1

    .line 560
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    move v1, v6

    .line 567
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_6
    move v2, v0

    .line 568
    goto :goto_3
.end method

.method private animateGhostMore(II)V
    .locals 10
    .parameter "amount"
    .parameter "sliderState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 592
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    if-nez v4, :cond_6

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, animMove:I
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 596
    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v4, v7, :cond_2

    .line 597
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_1

    .line 598
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 602
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 603
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int v0, v4, v5

    .line 613
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_4

    move v1, v0

    .line 616
    .local v1, fromX:I
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_5

    move v2, v8

    .line 617
    .local v2, fromY:I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v9, v5, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 618
    .local v3, ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 619
    new-instance v4, Lcom/android/internal/widget/SlidingTabSemc$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/internal/widget/SlidingTabSemc$3;-><init>(Lcom/android/internal/widget/SlidingTabSemc;II)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 634
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 635
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 639
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    .end local v2           #fromY:I
    .end local v3           #ghostMoveAnimation:Landroid/view/animation/TranslateAnimation;
    :goto_4
    return-void

    .line 600
    .restart local v0       #animMove:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 604
    :cond_2
    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 605
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v4, :cond_3

    .line 606
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    :goto_5
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 611
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v0, v4, v5

    goto :goto_1

    .line 608
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_4
    move v1, v8

    .line 615
    goto :goto_2

    .restart local v1       #fromX:I
    :cond_5
    move v2, v0

    .line 616
    goto :goto_3

    .line 637
    .end local v0           #animMove:I
    .end local v1           #fromX:I
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_4
.end method

.method private disableButtonPress()V
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 404
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchGrabbedStateChangeEvent(I)V

    .line 405
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->updateExpandable()V

    .line 406
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->vibrate(J)V

    .line 407
    return-void
.end method

.method private dispatchGrabbedStateChangeEvent(I)V
    .locals 3
    .parameter "whichHandle"

    .prologue
    const/4 v2, 0x1

    .line 838
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    if-eqz v1, :cond_0

    .line 839
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 840
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x2

    move v0, v1

    .line 846
    .local v0, handle:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    goto :goto_0

    .end local v0           #handle:I
    :cond_2
    move v0, v2

    .line 843
    goto :goto_1
.end method

.method private dispatchTriggerEvent(I)V
    .locals 3
    .parameter "whichHandle"

    .prologue
    const/4 v2, 0x1

    .line 820
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    if-eqz v1, :cond_0

    .line 821
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 822
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    if-ne p1, v2, :cond_2

    const/4 v1, 0x2

    move v0, v1

    .line 828
    .local v0, handle:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    goto :goto_0

    .end local v0           #handle:I
    :cond_2
    move v0, v2

    .line 825
    goto :goto_1
.end method

.method private initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 2
    .parameter "v"
    .parameter "icon"
    .parameter "visible"
    .parameter "id"

    .prologue
    const/4 v1, -0x2

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setId(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->addView(Landroid/view/View;)V

    .line 213
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private measureDimension(II)I
    .locals 4
    .parameter "measureSpec"
    .parameter "wantedSize"

    .prologue
    .line 265
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 266
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 267
    .local v2, specSize:I
    move v0, p2

    .line 269
    .local v0, size:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_1

    .line 270
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    .line 272
    move v0, v2

    goto :goto_0
.end method

.method private moveAnimation(Landroid/view/View;I)V
    .locals 10
    .parameter "v"
    .parameter "toPos"

    .prologue
    const/16 v9, 0x1e

    const/16 v8, -0x1e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 642
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_0

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eq v3, v6, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-nez v3, :cond_4

    iget-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    :goto_0
    const/4 v1, 0x0

    .line 650
    .local v1, animToX:I
    const/4 v2, 0x0

    .line 651
    .local v2, animToY:I
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_5

    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p2

    .line 657
    :goto_1
    if-gt v1, v9, :cond_2

    if-lt v1, v8, :cond_2

    if-gt v2, v9, :cond_2

    if-ge v2, v8, :cond_7

    .line 658
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 659
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v4, v6, :cond_6

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 661
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {v0, v3, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 662
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 663
    new-instance v3, Lcom/android/internal/widget/SlidingTabSemc$4;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/SlidingTabSemc$4;-><init>(Lcom/android/internal/widget/SlidingTabSemc;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 671
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 679
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_3
    :goto_3
    return-void

    .line 646
    .end local v1           #animToX:I
    .end local v2           #animToY:I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 654
    .restart local v1       #animToX:I
    .restart local v2       #animToY:I
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, p2

    goto :goto_1

    .line 659
    :cond_6
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    goto :goto_2

    .line 673
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-eqz v3, :cond_8

    .line 674
    invoke-direct {p0, v6}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_3

    .line 675
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    if-eqz v3, :cond_3

    .line 676
    iput-boolean v6, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    goto :goto_3
.end method

.method private moveControl(F)V
    .locals 3
    .parameter "newPos"

    .prologue
    .line 434
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 436
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mAbortGhostAnimation:Z

    .line 439
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 442
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 443
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 445
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 447
    .local v0, moveBy:I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    float-to-int v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    .line 452
    :goto_0
    return-void

    .line 449
    .end local v0           #moveBy:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 450
    .restart local v0       #moveBy:I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    float-to-int v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private resetSlider(Z)V
    .locals 3
    .parameter "animateExpanded"

    .prologue
    const/4 v2, 0x0

    .line 488
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->animateExpandedToDisabled(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 490
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    .line 493
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    .line 494
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    .line 495
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 496
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 497
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLongpressGhostStarted:Z

    .line 498
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 499
    iput-byte v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 501
    return-void
.end method

.method private setBackgroundLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method private setLayout(Landroid/widget/ImageView;I)V
    .locals 6
    .parameter "v"
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 226
    iget-boolean v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 228
    .local v1, w:I
    sub-int v2, p2, v1

    add-int v3, p2, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 233
    .end local v1           #w:I
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 231
    .local v0, h:I
    sub-int v2, p2, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int v4, p2, v0

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method private sliderButtonReleaseAfter(I)V
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 425
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v1, :cond_1

    .line 426
    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchTriggerEvent(I)V

    .line 430
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 431
    return-void

    .line 427
    :cond_1
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v0, v2, :cond_0

    .line 428
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method private sliderButtonReleaseBefore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 411
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->dispatchGrabbedStateChangeEvent(I)V

    .line 413
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPressTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mGhostMoveAnimationAfter:Landroid/view/animation/TranslateAnimation;

    .line 416
    const/4 v0, 0x2

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v4, :cond_1

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->moveAnimation(Landroid/view/View;I)V

    .line 421
    return-void

    .line 418
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mResetAfterGhost:Z

    goto :goto_0

    .line 420
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    goto :goto_1
.end method

.method private sliderPastActivatePoint()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    .line 397
    return-void
.end method

.method private sliderTouchEvent(IFFI)Z
    .locals 6
    .parameter "action"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "pointerId"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 308
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_1

    move v0, p2

    .line 310
    .local v0, touchVal:F
    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_8

    .line 313
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v1, :cond_2

    move v1, p3

    :goto_1
    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    move v1, v3

    .line 391
    :goto_2
    return v1

    .end local v0           #touchVal:F
    :cond_1
    move v0, p3

    .line 308
    goto :goto_0

    .restart local v0       #touchVal:F
    :cond_2
    move v1, p2

    .line 313
    goto :goto_1

    .line 317
    :cond_3
    float-to-int v1, v0

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    .line 319
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    .line 320
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v1, :cond_4

    .line 321
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 324
    :cond_4
    iput-byte v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 325
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->disableButtonPress()V

    .line 326
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 327
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 390
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->invalidate()V

    move v1, v3

    .line 391
    goto :goto_2

    .line 328
    :cond_6
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondTouchablePart:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 329
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsGhostAnimating:Z

    if-eqz v1, :cond_7

    .line 330
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 333
    :cond_7
    iput-byte v5, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    .line 334
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->disableButtonPress()V

    .line 335
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 336
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    goto :goto_3

    .line 338
    :cond_8
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v1, :cond_b

    if-eq p1, v3, :cond_9

    const/4 v1, 0x6

    if-ne p1, v1, :cond_b

    .line 342
    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    .line 343
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-eqz v1, :cond_a

    .line 344
    float-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->sliderButtonReleaseAfter(I)V

    goto :goto_3

    .line 346
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->sliderButtonReleaseBefore()V

    goto :goto_3

    .line 348
    :cond_b
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-eqz v1, :cond_5

    if-ne p1, v5, :cond_5

    .line 351
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    add-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    move v1, v4

    .line 352
    goto :goto_2

    .line 354
    :cond_c
    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mLastMovePos:F

    .line 357
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-nez v1, :cond_12

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v3, :cond_d

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_e

    :cond_d
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v5, :cond_12

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    .line 363
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->sliderPastActivatePoint()V

    .line 373
    :cond_f
    :goto_4
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    if-eqz v1, :cond_10

    .line 374
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    if-lez v1, :cond_15

    .line 375
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    .line 381
    :cond_10
    :goto_5
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    if-nez v1, :cond_11

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    add-int/lit8 v1, v1, 0x14

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_11

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerStartPos:I

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 385
    :cond_11
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerFlickerDone:Z

    .line 386
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->moveControl(F)V

    goto/16 :goto_3

    .line 364
    :cond_12
    iget-boolean v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    if-eqz v1, :cond_f

    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v3, :cond_13

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_14

    :cond_13
    iget-byte v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    if-ne v1, v5, :cond_f

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_f

    .line 370
    :cond_14
    iput-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPastActionPoint:Z

    goto :goto_4

    .line 377
    :cond_15
    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFingerOff:I

    goto :goto_5
.end method

.method private updateExpandable()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 459
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 460
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 482
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    const-wide/16 v0, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->animateGhost(J)V

    .line 485
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 470
    :cond_2
    iget-byte v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 480
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 687
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTabSemc;->setBackgroundLayout()V

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 246
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/SlidingTabSemc;->measureDimension(II)I

    move-result v2

    .line 247
    .local v2, width:I
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    invoke-direct {p0, p2, v3}, Lcom/android/internal/widget/SlidingTabSemc;->measureDimension(II)I

    move-result v0

    .line 249
    .local v0, height:I
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_0

    move v1, v2

    .line 250
    .local v1, length:I
    :goto_0
    int-to-double v3, v1

    const-wide v5, 0x3fc147ae147ae148L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    .line 251
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondBtnPosition:I

    .line 253
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstBtnPosition:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    .line 254
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstTouchablePart:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondTouchablePart:I

    .line 256
    int-to-double v3, v1

    const-wide v5, 0x3fd3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    .line 257
    iget v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mFirstActivatePoint:I

    sub-int v3, v1, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSecondActivatePoint:I

    .line 259
    iget-boolean v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v3, :cond_1

    move v3, v0

    :goto_1
    int-to-double v3, v3

    const-wide v5, 0x3fd999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mNoneTouchPart:I

    .line 261
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/SlidingTabSemc;->setMeasuredDimension(II)V

    .line 262
    return-void

    .end local v1           #length:I
    :cond_0
    move v1, v0

    .line 249
    goto :goto_0

    .restart local v1       #length:I
    :cond_1
    move v3, v2

    .line 259
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    .line 280
    iget-boolean v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mIsAnimating:Z

    if-eqz v4, :cond_0

    .line 281
    const/4 v4, 0x1

    .line 304
    :goto_0
    return v4

    .line 284
    :cond_0
    const/4 v3, 0x0

    .line 285
    .local v3, touchHandled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v0, v4, 0x8

    .line 287
    .local v0, currentIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 289
    .local v1, currentPointerId:I
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    if-ne v4, v1, :cond_3

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/android/internal/widget/SlidingTabSemc;->sliderTouchEvent(IFFI)Z

    move-result v3

    :cond_2
    :goto_1
    move v4, v3

    .line 304
    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 294
    iget v4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 296
    .local v2, pointerIndex:I
    if-eq v2, v6, :cond_4

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/SlidingTabSemc;->mActivePointerId:I

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/widget/SlidingTabSemc;->sliderTouchEvent(IFFI)Z

    move-result v3

    goto :goto_1

    .line 300
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    goto :goto_1
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0
    .parameter "holdLeft"
    .parameter "holdRight"

    .prologue
    .line 804
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 776
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 0
    .parameter "disabledId"
    .parameter "expandedId"
    .parameter "gotoId"
    .parameter "ghostId"

    .prologue
    .line 764
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstDisabledId:I

    .line 765
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstExpandedId:I

    .line 766
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGotoId:I

    .line 767
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableFirstGhostId:I

    .line 768
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;

    .line 813
    return-void
.end method

.method public setRightHintText(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 801
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 0
    .parameter "disabledId"
    .parameter "expandedId"
    .parameter "gotoId"
    .parameter "ghostId"

    .prologue
    .line 789
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondDisabledId:I

    .line 790
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondExpandedId:I

    .line 791
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGotoId:I

    .line 792
    iput p4, p0, Lcom/android/internal/widget/SlidingTabSemc;->mDrawableSecondGhostId:I

    .line 793
    return-void
.end method

.method public setSliderBackground(III)V
    .locals 2
    .parameter "sliderNormalId"
    .parameter "sliderRightId"
    .parameter "sliderLeftId"

    .prologue
    .line 740
    iput p1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    .line 741
    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider2Id:I

    .line 742
    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider3Id:I

    .line 744
    iget-boolean v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderHeight:I

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTabSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSlider1Id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SlidingTabSemc;->mSliderWidth:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SlidingTabSemc;->resetSlider(Z)V

    .line 203
    return-void
.end method
