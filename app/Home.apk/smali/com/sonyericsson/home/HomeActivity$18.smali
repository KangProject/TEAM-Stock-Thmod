.class Lcom/sonyericsson/home/HomeActivity$18;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/sonyericsson/home/HomeActivityFlow$OnFolderCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity;
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
    .line 2474
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$18;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderCanceled()V
    .locals 2

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$18;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2302(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 2482
    return-void
.end method

.method public onFolderConfirmed(Ljava/lang/String;I)V
    .locals 2
    .parameter "folderName"
    .parameter "icon"

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$18;->this$0:Lcom/sonyericsson/home/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/home/HomeActivity;->access$2302(Lcom/sonyericsson/home/HomeActivity;Z)Z

    .line 2478
    return-void
.end method
