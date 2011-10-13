.class Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;
.super Ljava/lang/Object;
.source "DesktopModelManager.java"

# interfaces
.implements Lcom/sonyericsson/home/layer/LayerController$Syncable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 49
    return-void
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 53
    instance-of v0, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 56
    :cond_1
    return-void
.end method
