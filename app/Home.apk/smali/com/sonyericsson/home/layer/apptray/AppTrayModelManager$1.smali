.class Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$1;
.super Ljava/lang/Object;
.source "AppTrayModelManager.java"

# interfaces
.implements Lcom/sonyericsson/home/data/SyncHelper$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-static {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;Lcom/sonyericsson/home/data/ActivityInfo;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 3
    .parameter "info"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;)Lcom/sonyericsson/util/PagedList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;)Lcom/sonyericsson/util/PagedList;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/home/data/ActivityInfo;

    move-object v1, v0

    invoke-virtual {v2, v1}, Lcom/sonyericsson/util/PagedList;->remove(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager$1;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->access$200(Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;)Lcom/sonyericsson/util/PagedList;

    move-result-object v1

    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/sonyericsson/util/PagedList;->remove(Ljava/lang/Object;)Z

    .line 94
    const/4 v1, 0x1

    return v1
.end method
