.class Lcom/sonyericsson/home/layer/desktop/DesktopController$6;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Lcom/sonyericsson/home/AvailabilityReceiver$AvailabilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/AvailabilityReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V
    .locals 0
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable([Ljava/lang/String;)V
    .locals 0
    .parameter "packageList"

    .prologue
    .line 838
    return-void
.end method

.method public onUnavailable([Ljava/lang/String;)V
    .locals 6
    .parameter "packageList"

    .prologue
    .line 830
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 831
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getWidgetSyncable()Lcom/sonyericsson/home/layer/LayerController$Syncable;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/sonyericsson/home/layer/LayerController;->syncPackageRemoved(Lcom/sonyericsson/home/layer/LayerController$Syncable;Ljava/util/Collection;Ljava/lang/String;)V

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;->notifyDataSetChanged()V

    .line 835
    return-void
.end method
