.class Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1$1;
.super Ljava/lang/Object;
.source "HomeCornerButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->expandDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1$1;->this$1:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$1;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->expandButton(Z)V

    .line 147
    return-void
.end method
