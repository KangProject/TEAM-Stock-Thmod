.class Lcom/sonyericsson/paneview/GestureDetector$1;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/paneview/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/paneview/GestureDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/paneview/GestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sonyericsson/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonyericsson/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-static {v0}, Lcom/sonyericsson/paneview/GestureDetector;->access$000(Lcom/sonyericsson/paneview/GestureDetector;)Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-static {v0}, Lcom/sonyericsson/paneview/GestureDetector;->access$300(Lcom/sonyericsson/paneview/GestureDetector;)Lcom/sonyericsson/paneview/GestureDetector$GestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-static {v1}, Lcom/sonyericsson/paneview/GestureDetector;->access$100(Lcom/sonyericsson/paneview/GestureDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/paneview/GestureDetector;

    invoke-static {v2}, Lcom/sonyericsson/paneview/GestureDetector;->access$200(Lcom/sonyericsson/paneview/GestureDetector;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/paneview/GestureDetector$GestureListener;->onLongPress(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/paneview/GestureDetector;

    sget-object v1, Lcom/sonyericsson/paneview/GestureDetector$TouchState;->LONGPRESSED:Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    invoke-static {v0, v1}, Lcom/sonyericsson/paneview/GestureDetector;->access$002(Lcom/sonyericsson/paneview/GestureDetector;Lcom/sonyericsson/paneview/GestureDetector$TouchState;)Lcom/sonyericsson/paneview/GestureDetector$TouchState;

    .line 167
    :cond_0
    return-void
.end method
