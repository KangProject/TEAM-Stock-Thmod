.class Lcom/sonyericsson/cornerbutton/CornerButton$2;
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
    .line 249
    iput-object p1, p0, Lcom/sonyericsson/cornerbutton/CornerButton$2;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$2;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v0}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$200(Lcom/sonyericsson/cornerbutton/CornerButton;)Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButtonHighlight;->updateAngle(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$2;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/cornerbutton/CornerButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cornerbutton/CornerButton$2;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    iget-object v1, p0, Lcom/sonyericsson/cornerbutton/CornerButton$2;->this$0:Lcom/sonyericsson/cornerbutton/CornerButton;

    invoke-static {v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->access$400(Lcom/sonyericsson/cornerbutton/CornerButton;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cornerbutton/CornerButton;->invalidate(Landroid/graphics/Rect;)V

    .line 255
    return-void
.end method
