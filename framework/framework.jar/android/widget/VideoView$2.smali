.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .parameter "mp"

    .prologue
    const/16 v8, 0x1e

    const/16 v4, 0x1d

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 289
    invoke-virtual {p1, v5, v5}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 292
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_c

    .line 293
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    move v3, v6

    :goto_0
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 295
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    move v3, v6

    :goto_1
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    .line 297
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/16 v3, 0x1f

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1f

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    move v3, v6

    :goto_2
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    .line 299
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_3
    move v3, v6

    :goto_3
    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$602(Landroid/widget/VideoView;Z)Z

    .line 305
    :goto_4
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 306
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 308
    :cond_4
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 309
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 311
    :cond_5
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$002(Landroid/widget/VideoView;I)I

    .line 312
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$102(Landroid/widget/VideoView;I)I

    .line 314
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v1

    .line 315
    .local v1, seekToPosition:I
    if-eqz v1, :cond_6

    .line 316
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 318
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 320
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 321
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 325
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 326
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 327
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 328
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 345
    :cond_7
    :goto_5
    return-void

    .end local v1           #seekToPosition:I
    :cond_8
    move v3, v5

    .line 293
    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 295
    goto/16 :goto_1

    :cond_a
    move v3, v5

    .line 297
    goto/16 :goto_2

    :cond_b
    move v3, v5

    .line 299
    goto/16 :goto_3

    .line 302
    :cond_c
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v4, v6}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    move-result v4

    invoke-static {v3, v4}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_4

    .line 330
    .restart local v1       #seekToPosition:I
    :cond_d
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_e

    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_7

    .line 332
    :cond_e
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 334
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/MediaController;->show(I)V

    goto :goto_5

    .line 341
    :cond_f
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_7

    .line 342
    iget-object v2, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    goto :goto_5
.end method
