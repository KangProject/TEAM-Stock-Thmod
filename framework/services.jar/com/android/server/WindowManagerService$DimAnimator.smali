.class Lcom/android/server/WindowManagerService$DimAnimator;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DimAnimator"
.end annotation


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .registers 12
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 10475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10467
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    .line 10476
    iget-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v0, :cond_23

    .line 10480
    :try_start_a
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "DimSurface"

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 10484
    iget-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_24

    .line 10489
    :cond_23
    :goto_23
    return-void

    .line 10485
    :catch_24
    move-exception v0

    move-object v9, v0

    .line 10486
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method


# virtual methods
.method public printTo(Ljava/io/PrintWriter;)V
    .registers 4
    .parameter "pw"

    .prologue
    .line 10610
    const-string v0, "  mDimShown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 10611
    const-string v0, " current="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 10612
    const-string v0, " target="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 10613
    const-string v0, " delta="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 10614
    const-string v0, " lastAnimTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 10615
    return-void
.end method

.method show(II)V
    .registers 7
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 10495
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    if-nez v1, :cond_27

    .line 10498
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    .line 10500
    :try_start_7
    iput p1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    .line 10501
    iput p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    .line 10502
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 10503
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 10504
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 10513
    :cond_1c
    :goto_1c
    return-void

    .line 10505
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 10506
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    const-string v2, "Failure showing dim surface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 10508
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_27
    iget v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    if-ne v1, p1, :cond_2f

    iget v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    if-eq v1, p2, :cond_1c

    .line 10509
    :cond_2f
    iput p1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    .line 10510
    iput p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    .line 10511
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    goto :goto_1c
.end method

.method updateParameters(Lcom/android/server/WindowManagerService$WindowState;J)V
    .registers 10
    .parameter "w"
    .parameter "currentTime"

    .prologue
    .line 10520
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setLayer(I)V

    .line 10522
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-eqz v3, :cond_43

    const/4 v3, 0x0

    move v2, v3

    .line 10525
    .local v2, target:F
    :goto_f
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_42

    .line 10528
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 10529
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-eqz v3, :cond_49

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_49

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v3

    move-wide v0, v3

    .line 10532
    .local v0, duration:J
    :goto_26
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2f

    .line 10537
    const-wide/16 v3, 0x6

    mul-long/2addr v0, v3

    .line 10539
    :cond_2f
    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gez v3, :cond_37

    .line 10541
    const-wide/16 v0, 0x1

    .line 10543
    :cond_37
    iput v2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    .line 10544
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v3, v4

    long-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    .line 10546
    .end local v0           #duration:J
    :cond_42
    return-void

    .line 10522
    .end local v2           #target:F
    :cond_43
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    move v2, v3

    goto :goto_f

    .line 10529
    .restart local v2       #target:F
    :cond_49
    const-wide/16 v3, 0xc8

    move-wide v0, v3

    goto :goto_26
.end method

.method updateSurface(ZJZ)Z
    .registers 15
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 10553
    if-nez p1, :cond_17

    .line 10554
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_17

    .line 10555
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 10556
    iput v7, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    .line 10557
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    .line 10561
    :cond_17
    const/4 v0, 0x0

    .line 10562
    .local v0, animating:Z
    iget-wide v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_3b

    .line 10563
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    .line 10565
    const/4 v2, 0x1

    .line 10566
    .local v2, more:Z
    if-eqz p4, :cond_3c

    .line 10568
    const/4 v2, 0x0

    .line 10582
    :cond_2f
    :goto_2f
    if-eqz v2, :cond_5e

    .line 10585
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 10586
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 10587
    const/4 v0, 0x1

    .line 10606
    .end local v2           #more:Z
    :cond_3b
    :goto_3b
    return v0

    .line 10569
    .restart local v2       #more:Z
    :cond_3c
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_4c

    .line 10570
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2f

    .line 10571
    const/4 v2, 0x0

    goto :goto_2f

    .line 10573
    :cond_4c
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_5c

    .line 10574
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2f

    .line 10575
    const/4 v2, 0x0

    goto :goto_2f

    .line 10578
    :cond_5c
    const/4 v2, 0x0

    goto :goto_2f

    .line 10589
    :cond_5e
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    .line 10590
    iput-wide v8, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 10593
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 10594
    if-nez p1, :cond_3b

    .line 10598
    :try_start_6d
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_72} :catch_76

    .line 10602
    :goto_72
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    goto :goto_3b

    .line 10599
    :catch_76
    move-exception v3

    move-object v1, v3

    .line 10600
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method
