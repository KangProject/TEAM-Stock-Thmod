.class Lcom/sonyericsson/home/resourceload/ResourceLoader$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/badge/BadgeManager;)V
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
    .line 504
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$2602(Lcom/sonyericsson/home/resourceload/ResourceLoader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1;->this$0:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-static {v0}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->access$000(Lcom/sonyericsson/home/resourceload/ResourceLoader;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;-><init>(Lcom/sonyericsson/home/resourceload/ResourceLoader$1;Lcom/sonyericsson/storage/Root;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method
