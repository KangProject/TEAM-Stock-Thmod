.class Lcom/sonyericsson/home/layer/apptray/AppTrayController$13;
.super Ljava/lang/Object;
.source "AppTrayController.java"

# interfaces
.implements Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/apptray/AppTrayController;->createPaneViewTouchListener()Lcom/sonyericsson/paneview/PaneView$PaneViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/apptray/AppTrayController;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/sonyericsson/home/layer/apptray/AppTrayController$13;->this$0:Lcom/sonyericsson/home/layer/apptray/AppTrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 796
    return-void
.end method

.method public onLongPress(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method
