.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createScrollListener(Lcom/sonyericsson/home/layer/PaneIndicator;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

.field final synthetic val$paneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;Lcom/sonyericsson/home/layer/PaneIndicator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;->val$paneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FI)V
    .locals 1
    .parameter "position"
    .parameter "max"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$12;->val$paneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/home/layer/PaneIndicator;->setPosition(FI)V

    .line 861
    return-void
.end method
