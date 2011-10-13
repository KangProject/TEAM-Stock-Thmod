.class Lcom/sonyericsson/home/resourceload/ResourceLoader$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$100(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v0

    .line 259
    .local v0, items:Ljava/util/Set;,"Ljava/util/Set<Lcom/sonyericsson/home/data/ActivityInfo;>;"
    iget-object v1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$200(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activitypriority"

    new-instance v3, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader$1;Ljava/util/Set;)V

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/storage/Storage;->readRoot(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;)V

    .line 304
    return-void
.end method
