.class Lcom/sonyericsson/home/statistics/Statistics$1;
.super Ljava/lang/Object;
.source "Statistics.java"

# interfaces
.implements Lcom/sonyericsson/storage/Storage$OnReadCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/statistics/Statistics;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/statistics/Statistics;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/statistics/Statistics;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/home/statistics/Statistics$1;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadCompleted(Lcom/sonyericsson/storage/Root;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/home/statistics/Statistics$1;->this$0:Lcom/sonyericsson/home/statistics/Statistics;

    invoke-static {v0}, Lcom/sonyericsson/home/statistics/Statistics;->access$000(Lcom/sonyericsson/home/statistics/Statistics;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/statistics/Statistics$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/statistics/Statistics$1$1;-><init>(Lcom/sonyericsson/home/statistics/Statistics$1;Lcom/sonyericsson/storage/Root;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->addOnLoadCompletedCallback(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
