.class Lcom/sonyericsson/home/layer/desktop/DesktopController$6;
.super Ljava/lang/Object;
.source "DesktopController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/desktop/DesktopController;->bind(Landroid/view/View;Lcom/sonyericsson/home/transfer/TransferHandler;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/AdapterHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 1074
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    sget-object v1, Lcom/sonyericsson/home/layer/desktop/DesktopController$State;->INITIALIZED:Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2802(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopController$State;)Lcom/sonyericsson/home/layer/desktop/DesktopController$State;

    .line 1078
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "desktop_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1080
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preference_desktop_widget_customization_done"

    invoke-interface {v9, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3200(Lcom/sonyericsson/home/layer/desktop/DesktopController;)V

    .line 1082
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->cacheShortcuts(Lcom/sonyericsson/home/resourceload/ResourceLoader;)V

    .line 1086
    :cond_0
    iget-object v10, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    new-instance v0, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->val$adapterHelper:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v5, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v5}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/WidgetManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3500(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/widget/AdvWidgetManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v7}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3600(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/grid/Grid;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;Lcom/sonyericsson/home/resourceload/ResourceLoader;Lcom/sonyericsson/home/layer/AdapterHelper;Lcom/sonyericsson/home/widget/WidgetManager;Lcom/sonyericsson/home/widget/AdvWidgetManager;Lcom/sonyericsson/grid/Grid;)V

    invoke-static {v10, v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$002(Lcom/sonyericsson/home/layer/desktop/DesktopController;Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    .line 1088
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$000(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setAdapter(Lcom/sonyericsson/paneview/PaneAdapter;)V

    .line 1089
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3700(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/paneview/PaneView$ScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->setScrollListener(Lcom/sonyericsson/paneview/PaneView$ScrollListener;)V

    .line 1092
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$1900(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopModelManager;->getAllInfos()Ljava/util/Collection;

    move-result-object v8

    .line 1093
    .local v8, infos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/sonyericsson/home/data/Info;>;"
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3300(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->preCacheShortcuts(Ljava/util/Collection;)V

    .line 1094
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$2400(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3800(Lcom/sonyericsson/home/layer/desktop/DesktopController;)Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/InfoGroupManager;->registerInfoGroupListener(Lcom/sonyericsson/home/layer/InfoGroupManager$InfoGroupListener;)V

    .line 1095
    iget-object v0, p0, Lcom/sonyericsson/home/layer/desktop/DesktopController$6;->this$0:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-static {v0, v8}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->access$3900(Lcom/sonyericsson/home/layer/desktop/DesktopController;Ljava/util/Collection;)V

    .line 1096
    return-void
.end method
