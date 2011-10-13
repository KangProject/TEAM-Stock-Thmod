.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->access$600(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToRightPane()Z

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->access$802(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;J)J

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$900(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$3;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToLeftPane()Z

    goto :goto_0
.end method
