.class Lcom/sonyericsson/cornerbutton/CornerButton$5;
.super Ljava/lang/Object;
.source "CornerButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cornerbutton/CornerButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cornerbutton/CornerButton;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cornerbutton/CornerButton;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x3c23d70a

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$900(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/util/SpringDynamics;->update(J)V

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$900(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/util/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-virtual {v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$900(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/util/SpringDynamics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/util/SpringDynamics;->getPosition()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->setCenterPos(IIF)V

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$300(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton$5;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$400(Lcom/sonyericsson/cornerbutton/CornerButton;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->invalidate(Landroid/graphics/Rect;)V

    .line 290
    return-void
.end method
