.class Lcom/sonyericsson/home/resourceload/PackageLoader$RemoveStkPackageTask;
.super Lcom/sonyericsson/util/Worker$Task;
.source "PackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/resourceload/PackageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveStkPackageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemoveStkPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 431
    const-string v0, "remove stk package"

    invoke-direct {p0, v0}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    .line 432
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public postExecute()V
    .locals 3

    .prologue
    .line 443
    iget-object v2, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$RemoveStkPackageTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-static {v2}, Lcom/sonyericsson/home/resourceload/PackageLoader;->access$600(Lcom/sonyericsson/home/resourceload/PackageLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;

    .line 444
    .local v1, listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    const-string v2, "com.android.stk"

    invoke-interface {v1, v2}, Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    .end local v1           #listener:Lcom/sonyericsson/home/resourceload/PackageLoader$OnPackageUpdateListener;
    :cond_0
    return-void
.end method
