.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createComparators(Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/statistics/Statistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/home/data/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

.field final synthetic val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/home/data/ActivityInfo;Lcom/sonyericsson/home/data/ActivityInfo;)I
    .locals 3
    .parameter "activityInfo1"
    .parameter "activityInfo2"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->val$resourceLoader:Lcom/sonyericsson/home/resourceload/ResourceLoader;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    check-cast p2, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/home/layer/apptray/AppTrayController$8;->compare(Lcom/sonyericsson/home/data/ActivityInfo;Lcom/sonyericsson/home/data/ActivityInfo;)I

    move-result v0

    return v0
.end method
