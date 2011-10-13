.class Landroid/widget/TextView$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0x1004


# instance fields
.field private final mHandle:Landroid/widget/TextView$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 8194
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8188
    new-instance v0, Landroid/widget/TextView$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionPointCursorController$1;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    .line 8195
    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    .line 8196
    return-void
.end method

.method private hideDelayed(I)V
    .locals 4
    .parameter "msec"

    .prologue
    .line 8210
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8211
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8212
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 8205
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8206
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8207
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 8215
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 8254
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8255
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 8243
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 8247
    if-nez p1, :cond_0

    .line 8248
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8250
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 8199
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8200
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8201
    const/16 v0, 0x1004

    invoke-direct {p0, v0}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    .line 8202
    return-void
.end method

.method public updatePosition()V
    .locals 3

    .prologue
    .line 8230
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8232
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 8234
    const-string v1, "TextView"

    const-string v2, "Update cursor controller position called with no cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8235
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8240
    :goto_0
    return-void

    .line 8239
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    goto :goto_0
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .locals 3
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8219
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8220
    .local v1, previousOffset:I
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8222
    .local v0, offset:I
    if-eq v0, v1, :cond_0

    .line 8223
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8224
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8226
    :cond_0
    const/16 v2, 0x1004

    invoke-direct {p0, v2}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    .line 8227
    return-void
.end method
