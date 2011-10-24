.class Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$1;->this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$1;->this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->mAppList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$1;->this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    iget-object v1, v1, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v1}, Lcom/sonyericsson/home/HomeActivity;->access$3300(Lcom/sonyericsson/home/HomeActivity;)Lcom/sonyericsson/home/resourceload/PackageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/home/resourceload/PackageLoader;->getActivityInfoSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 2868
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$1;->this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->access$6000(Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;)V

    .line 2869
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter$1;->this$1:Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/HomeActivity$PickApplicationAdapter;->notifyDataSetChanged()V

    .line 2870
    return-void
.end method
