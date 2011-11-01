.class Lcom/sonyericsson/home/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/InfoGroupManager$InfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoRemoved(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$5;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/sonyericsson/home/HomeActivity;->access$600(Lcom/sonyericsson/home/HomeActivity;Lcom/sonyericsson/home/data/Info;)V

    .line 626
    return-void
.end method
