.class Landroid/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 462
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, p3}, Landroid/widget/VideoView;->access$1102(Landroid/widget/VideoView;I)I

    .line 463
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, p4}, Landroid/widget/VideoView;->access$1202(Landroid/widget/VideoView;I)I

    .line 464
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v1, v5

    .line 465
    .local v1, isValidState:Z
    :goto_0
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, p3, :cond_4

    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, p4, :cond_4

    move v0, v5

    .line 466
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 467
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 470
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 471
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 472
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 476
    :cond_1
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 479
    :cond_2
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_3
    move v1, v4

    .line 464
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_4
    move v0, v4

    .line 465
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 483
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p1}, Landroid/widget/VideoView;->access$2002(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 485
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v1}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 488
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$2100(Landroid/widget/VideoView;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 497
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2002(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 498
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 499
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2200(Landroid/widget/VideoView;Z)V

    .line 502
    :cond_1
    return-void
.end method
