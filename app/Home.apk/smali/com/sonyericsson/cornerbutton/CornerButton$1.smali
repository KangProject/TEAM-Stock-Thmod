.class Lcom/sonyericsson/cornerbutton/CornerButton$1;
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
    .line 232
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, wantsNewFrame:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 236
    .local v0, now:J
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$000(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->updateRadius(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 237
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    iget-object v3, v3, Lcom/sonyericsson/cornerbutton/CornerButton;->mActions:Lcom/sonyericsson/cornerbutton/CornerButtonActions;

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButtonActions;->updateRadius(J)Z

    move-result v3

    or-int/2addr v2, v3

    .line 238
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$100(Lcom/sonyericsson/cornerbutton/CornerButton;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$200(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$000(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButtonArc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cornerbutton/CornerButtonArc;->getRadius()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->setRadius(F)V

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v3}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$300(Lcom/sonyericsson/cornerbutton/CornerButton;)V

    .line 242
    if-eqz v2, :cond_1

    .line 243
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    const-wide/16 v4, 0xf

    invoke-virtual {v3, p0, v4, v5}, Lcom/sonyericsson/cornerbutton/CornerButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    iget-object v4, p0, Lcom/sonyericsson/cornerbutton/CornerButton$1;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$400(Lcom/sonyericsson/cornerbutton/CornerButton;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cornerbutton/CornerButton;->invalidate(Landroid/graphics/Rect;)V

    .line 246
    return-void
.end method
