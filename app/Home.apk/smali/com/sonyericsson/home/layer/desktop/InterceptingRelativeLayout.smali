.class public Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "InterceptingRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;
    }
.end annotation


# instance fields
.field private mOnInterceptTouchListener:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->mOnInterceptTouchListener:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->mOnInterceptTouchListener:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;->onInterceptTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnInterceptTouchListener(Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout;->mOnInterceptTouchListener:Lcom/sonyericsson/home/layer/desktop/InterceptingRelativeLayout$OnInterceptTouchListener;

    .line 73
    return-void
.end method
