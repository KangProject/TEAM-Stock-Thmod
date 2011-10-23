.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/PaneIndicator$InactiveTimeoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->setupPaneIndicator(Landroid/content/Context;Landroid/view/View;)Lcom/sonyericsson/home/layer/PaneIndicator;
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
    .line 841
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;->val$paneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInactiveTimeout()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$11;->val$paneIndicator:Lcom/sonyericsson/home/layer/PaneIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/PaneIndicator;->hide(Z)V

    .line 844
    return-void
.end method
