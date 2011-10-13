.class Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;
.super Ljava/lang/Object;
.source "AppTrayEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/paneview/PaneView;->getNumberOfPanes()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToNextPane()V

    .line 300
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->access$602(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;J)J

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    iget-object v1, v1, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$700(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/paneview/PaneView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->access$400(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->getCurrentPane()I

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2$1;->this$1:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;

    iget-object v0, v0, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;->access$500(Lcom/sonyericsson/home/layer/apptray/AppTrayEditor;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/paneview/PaneView;->moveToPreviousPane()V

    goto :goto_0
.end method
