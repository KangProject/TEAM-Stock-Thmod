.class Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$1;
.super Ljava/lang/Object;
.source "CornerButtonsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/cornerbutton/CornerButtonsController;->close()V

    .line 178
    return-void
.end method
