.class Lcom/sonyericsson/home/layer/appshare/DropZoneController$1;
.super Ljava/lang/Object;
.source "DropZoneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/appshare/DropZoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$1;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/home/layer/appshare/DropZoneController$1;->this$0:Lcom/sonyericsson/home/layer/appshare/DropZoneController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/appshare/DropZoneController;->access$000(Lcom/sonyericsson/home/layer/appshare/DropZoneController;)V

    .line 116
    return-void
.end method
