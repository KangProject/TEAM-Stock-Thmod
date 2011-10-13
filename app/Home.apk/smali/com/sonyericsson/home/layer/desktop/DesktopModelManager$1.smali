.class Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;
.super Ljava/lang/Object;
.source "DesktopModelManager.java"

# interfaces
.implements Lcom/sonyericsson/home/data/SyncHelper$Syncable;


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
.method public addDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public removeDuringSync(Lcom/sonyericsson/home/data/Info;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 54
    instance-of v0, p1, Lcom/sonyericsson/home/data/WidgetInfo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager$1;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->remove(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
