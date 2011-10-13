.class Lcom/android/internal/widget/SlidingTabSemc$3;
.super Ljava/lang/Object;
.source "SlidingTabSemc.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTabSemc;->animateGhostMore(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTabSemc;

.field final synthetic val$amount:I

.field final synthetic val$sliderState:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingTabSemc;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    iput p2, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$amount:I

    iput p3, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$sliderState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x1

    .line 625
    iget v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$amount:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTabSemc;->access$600(Lcom/android/internal/widget/SlidingTabSemc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    iget v1, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$amount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->val$sliderState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/SlidingTabSemc;->access$500(Lcom/android/internal/widget/SlidingTabSemc;II)V

    .line 632
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->access$702(Lcom/android/internal/widget/SlidingTabSemc;Z)Z

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTabSemc;->access$800(Lcom/android/internal/widget/SlidingTabSemc;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$3;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-static {v0, v2}, Lcom/android/internal/widget/SlidingTabSemc;->access$200(Lcom/android/internal/widget/SlidingTabSemc;Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 622
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 621
    return-void
.end method
