.class public final Lcom/android/systemui/statusbar/RecentAppButton;
.super Landroid/widget/TextView;
.source "RecentAppButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private showRecentAppsDialog()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppButton;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/RecentAppButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/RecentAppButton;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppButton;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->show()V

    .line 71
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 38
    const-string v0, "RecentAppButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/RecentAppButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/RecentAppButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/RecentAppButton;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-string v0, "JKay"

    const-string v1, "RecentAppButton onClick activated!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/RecentAppButton;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/RecentAppButton;->showRecentAppsDialog()V

    .line 56
    const-string v1, "statusbar"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 57
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    .line 58
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 51
    const-string v0, "RecentAppButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const-string v0, "JKay"

    const-string v1, "RecentAppButton Sending intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/android/systemui/statusbar/RecentAppButton;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/RecentAppButton;->showRecentAppsDialog()V

    .line 62
    const-string v1, "statusbar"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 63
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    const/4 v2, 0x1

    .line 64
    return v2
.end method
