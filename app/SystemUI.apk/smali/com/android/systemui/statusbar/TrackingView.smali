.class public Lcom/android/systemui/statusbar/TrackingView;
.super Landroid/widget/LinearLayout;
.source "TrackingView.java"


# instance fields
.field final mDisplay:Landroid/view/Display;

.field mIsAttachedToWindow:Z

.field mService:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mDisplay:Landroid/view/Display;

    .line 42
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 53
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 52
    .end local v0           #down:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 55
    .restart local v0       #down:Z
    :pswitch_0
    if-eqz v0, :cond_1

    :cond_1
    move v1, v2

    .line 58
    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->onTrackingViewAttached()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mIsAttachedToWindow:Z

    .line 68
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mIsAttachedToWindow:Z

    .line 74
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedHeight()V

    .line 48
    return-void
.end method
