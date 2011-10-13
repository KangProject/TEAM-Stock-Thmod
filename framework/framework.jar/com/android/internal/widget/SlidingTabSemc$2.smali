.class Lcom/android/internal/widget/SlidingTabSemc$2;
.super Ljava/lang/Object;
.source "SlidingTabSemc.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTabSemc;->animateGhost(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTabSemc;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingTabSemc;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    .line 578
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingTabSemc;->access$100(Lcom/android/internal/widget/SlidingTabSemc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->access$200(Lcom/android/internal/widget/SlidingTabSemc;Z)V

    .line 584
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-static {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->access$302(Lcom/android/internal/widget/SlidingTabSemc;Z)Z

    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    const/16 v1, 0x190

    iget-object v2, p0, Lcom/android/internal/widget/SlidingTabSemc$2;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-static {v2}, Lcom/android/internal/widget/SlidingTabSemc;->access$400(Lcom/android/internal/widget/SlidingTabSemc;)B

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/SlidingTabSemc;->access$500(Lcom/android/internal/widget/SlidingTabSemc;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 575
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 574
    return-void
.end method
