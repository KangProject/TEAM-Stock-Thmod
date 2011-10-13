.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/data/SyncHelper$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 306
    iget-object v3, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getModel()Lcom/sonyericsson/util/PagedList;

    move-result-object v1

    .line 307
    .local v1, model:Lcom/sonyericsson/util/PagedList;,"Lcom/sonyericsson/util/PagedList<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    invoke-virtual {v1}, Lcom/sonyericsson/util/PagedList;->getNumberOfPages()I

    move-result v2

    .line 309
    .local v2, numberOfPages:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 310
    invoke-virtual {v1, v0}, Lcom/sonyericsson/util/PagedList;->isPageFull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-virtual {v1, v0, p1}, Lcom/sonyericsson/util/PagedList;->addToPage(ILjava/lang/Object;)V

    move v3, v4

    .line 317
    :goto_1
    return v3

    .line 309
    .restart local p1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/sonyericsson/util/PagedList;->addLast(Ljava/lang/Object;)V

    move v3, v4

    .line 317
    goto :goto_1
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$000(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayModelManager;->getSyncable()Lcom/sonyericsson/home/data/SyncHelper$Syncable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/data/SyncHelper$Syncable;->removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$2;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/apptray/AppTrayController;->access$100(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$AppTrayControllerListener;->onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V

    .line 325
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
