.class Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->sortApps()V
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

.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 2730
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;->this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2731
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/home/data/ActivityInfo;Lcom/sonyericsson/home/data/ActivityInfo;)I
    .locals 4
    .parameter "activityInfo1"
    .parameter "activityInfo2"

    .prologue
    .line 2735
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;->mCollator:Ljava/text/Collator;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;->this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    iget-object v2, v2, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v2}, Lcom/sonyericsson/home/HomeActivity;->access$5700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;->this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    iget-object v3, v3, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/HomeActivity;->access$5700(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2739
    :goto_0
    return v1

    .line 2738
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2739
    .local v0, npe:Ljava/lang/NullPointerException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2730
    check-cast p1, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p1
    check-cast p2, Lcom/sonyericsson/home/data/ActivityInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$2;->compare(Lcom/sonyericsson/home/data/ActivityInfo;Lcom/sonyericsson/home/data/ActivityInfo;)I

    move-result v0

    return v0
.end method
