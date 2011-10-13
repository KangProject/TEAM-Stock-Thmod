.class Lcom/sonyericsson/home/layer/folder/FolderController$5;
.super Ljava/lang/Object;
.source "FolderController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/folder/FolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/folder/FolderController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/folder/FolderController;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/sonyericsson/home/layer/folder/FolderController$5;->this$0:Lcom/sonyericsson/home/layer/folder/FolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 479
    return-void
.end method

.method public onLongPress(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method
