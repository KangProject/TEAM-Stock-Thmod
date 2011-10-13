.class Lcom/sonyericsson/home/badge/BadgeManager$1;
.super Ljava/lang/Object;
.source "BadgeManager.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/badge/BadgeManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/badge/BadgeManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/badge/BadgeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 5
    .parameter "root"

    .prologue
    const-class v4, Ljava/util/HashMap;

    .line 116
    if-eqz p1, :cond_1

    .line 117
    iget-object v3, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    const-class v2, Ljava/util/HashMap;

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/storage/Root;->getFirstChild(Ljava/lang/Class;)Lcom/sonyericsson/storage/Node;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sonyericsson/storage/NodeManager;->fromNode(Ljava/lang/Class;Lcom/sonyericsson/storage/Node;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v3, v2}, Lcom/sonyericsson/home/badge/BadgeManager;->access$002(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-static {v2}, Lcom/sonyericsson/home/badge/BadgeManager;->access$100(Lcom/sonyericsson/home/badge/BadgeManager;)Lcom/sonyericsson/home/badge/BadgeManager$BadgeManagerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-static {v2}, Lcom/sonyericsson/home/badge/BadgeManager;->access$200(Lcom/sonyericsson/home/badge/BadgeManager;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-static {v2}, Lcom/sonyericsson/home/badge/BadgeManager;->access$300(Lcom/sonyericsson/home/badge/BadgeManager;)V

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    sget-object v3, Lcom/sonyericsson/home/badge/BadgeManager$State;->INITIALIZED:Lcom/sonyericsson/home/badge/BadgeManager$State;

    invoke-static {v2, v3}, Lcom/sonyericsson/home/badge/BadgeManager;->access$402(Lcom/sonyericsson/home/badge/BadgeManager;Lcom/sonyericsson/home/badge/BadgeManager$State;)Lcom/sonyericsson/home/badge/BadgeManager$State;

    .line 129
    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-static {v2}, Lcom/sonyericsson/home/badge/BadgeManager;->access$500(Lcom/sonyericsson/home/badge/BadgeManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 130
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 120
    .end local v0           #callback:Ljava/lang/Runnable;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/home/badge/BadgeManager;->access$002(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 132
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager$1;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/home/badge/BadgeManager;->access$502(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 134
    return-void
.end method
