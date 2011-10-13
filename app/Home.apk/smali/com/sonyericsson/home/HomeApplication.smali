.class public Lcom/sonyericsson/home/HomeApplication;
.super Landroid/app/Application;
.source "HomeApplication.java"


# instance fields
.field private mApplicationCreateDuration:J

.field private mAvailabilityReceiver:Lcom/sonyericsson/home/AvailabilityReceiver;

.field private mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field private mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

.field private mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

.field private mPackageReceiver:Lcom/sonyericsson/home/PackageReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private createAndRegisterAvailabilityReceiver()V
    .locals 3

    .prologue
    .line 145
    new-instance v1, Lcom/sonyericsson/home/AvailabilityReceiver;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v1, v2}, Lcom/sonyericsson/home/AvailabilityReceiver;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v1, p0, Lcom/sonyericsson/home/HomeApplication;->mAvailabilityReceiver:Lcom/sonyericsson/home/AvailabilityReceiver;

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/home/HomeApplication;->mAvailabilityReceiver:Lcom/sonyericsson/home/AvailabilityReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/home/HomeApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    return-void
.end method

.method private createAndRegisterPackageReceiver()V
    .locals 3

    .prologue
    .line 135
    new-instance v1, Lcom/sonyericsson/home/PackageReceiver;

    iget-object v2, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v1, v2}, Lcom/sonyericsson/home/PackageReceiver;-><init>(Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v1, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageReceiver:Lcom/sonyericsson/home/PackageReceiver;

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageReceiver:Lcom/sonyericsson/home/PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/home/HomeApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method


# virtual methods
.method public getApplicationCreateDuration()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/sonyericsson/home/HomeApplication;->mApplicationCreateDuration:J

    return-wide v0
.end method

.method public getDesktopController()Lcom/sonyericsson/home/layer/desktop/DesktopController;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/home/HomeApplication;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    return-object v0
.end method

.method public getInfoGroupManager()Lcom/sonyericsson/home/layer/InfoGroupManager;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/home/HomeApplication;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    return-object v0
.end method

.method public getPackageLoader()Lcom/sonyericsson/home/resourceload/PackageLoader;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 78
    .local v0, startTime:J
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 81
    const-class v2, Landroid/graphics/Rect;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/RectFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/RectFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 82
    const-class v2, Lcom/sonyericsson/home/data/ActivityInfo;

    new-instance v3, Lcom/sonyericsson/home/data/ActivityInfo$ActivityInfoFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/data/ActivityInfo$ActivityInfoFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 83
    const-class v2, Lcom/sonyericsson/home/data/ShortcutInfo;

    new-instance v3, Lcom/sonyericsson/home/data/ShortcutInfo$ShortcutInfoFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/data/ShortcutInfo$ShortcutInfoFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 84
    const-class v2, Lcom/sonyericsson/home/data/InfoGroup;

    new-instance v3, Lcom/sonyericsson/home/data/InfoGroup$InfoGroupFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/data/InfoGroup$InfoGroupFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 85
    const-class v2, Lcom/sonyericsson/home/data/WidgetInfo;

    new-instance v3, Lcom/sonyericsson/home/data/WidgetInfo$WidgetInfoFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/data/WidgetInfo$WidgetInfoFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 86
    const-class v2, Lcom/sonyericsson/home/data/AdvWidgetInfo;

    new-instance v3, Lcom/sonyericsson/home/data/AdvWidgetInfo$AdvancedWidgetInfoFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/data/AdvWidgetInfo$AdvancedWidgetInfoFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 87
    const-class v2, Lcom/sonyericsson/home/layer/desktop/DesktopRect;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopRect$DesktopRectFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopRect$DesktopRectFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 88
    const-class v2, Lcom/sonyericsson/home/layer/desktop/DesktopItem;

    new-instance v3, Lcom/sonyericsson/home/layer/desktop/DesktopItem$DesktopItemFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/layer/desktop/DesktopItem$DesktopItemFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 89
    const-class v2, Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/ArrayListFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/ArrayListFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 90
    const-class v2, Ljava/util/LinkedList;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/LinkedListFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/LinkedListFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 91
    const-class v2, Lcom/sonyericsson/util/PagedList;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/PagedListFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/PagedListFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 92
    const-class v2, Lcom/sonyericsson/storage/externalfactories/KeyObject;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/KeyObject$KeyObjectFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/KeyObject$KeyObjectFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 93
    const-class v2, Lcom/sonyericsson/storage/externalfactories/ValueObject;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/ValueObject$ValueObjectFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/ValueObject$ValueObjectFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 94
    const-class v2, Lcom/sonyericsson/storage/externalfactories/EntryObject;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/EntryObject$EntryObjectFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/EntryObject$EntryObjectFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 95
    const-class v2, Ljava/util/HashMap;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/HashMapFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/HashMapFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 96
    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/sonyericsson/storage/externalfactories/StringFactory;

    invoke-direct {v3}, Lcom/sonyericsson/storage/externalfactories/StringFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 97
    const-class v2, Lcom/sonyericsson/home/statistics/ActivityStats;

    new-instance v3, Lcom/sonyericsson/home/statistics/ActivityStats$ActivityStatsFactory;

    invoke-direct {v3}, Lcom/sonyericsson/home/statistics/ActivityStats$ActivityStatsFactory;-><init>()V

    invoke-static {v2, v3}, Lcom/sonyericsson/storage/NodeManager;->register(Ljava/lang/Class;Lcom/sonyericsson/storage/NodeFactory;)V

    .line 99
    new-instance v2, Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/home/resourceload/PackageLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeApplication;->createAndRegisterPackageReceiver()V

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/home/HomeApplication;->createAndRegisterAvailabilityReceiver()V

    .line 103
    new-instance v2, Lcom/sonyericsson/home/layer/InfoGroupManager;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/home/layer/InfoGroupManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;)V

    iput-object v2, p0, Lcom/sonyericsson/home/HomeApplication;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    .line 104
    new-instance v2, Lcom/sonyericsson/home/layer/desktop/DesktopController;

    invoke-virtual {p0}, Lcom/sonyericsson/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageLoader:Lcom/sonyericsson/home/resourceload/PackageLoader;

    iget-object v5, p0, Lcom/sonyericsson/home/HomeApplication;->mInfoGroupManager:Lcom/sonyericsson/home/layer/InfoGroupManager;

    iget-object v6, p0, Lcom/sonyericsson/home/HomeApplication;->mAvailabilityReceiver:Lcom/sonyericsson/home/AvailabilityReceiver;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sonyericsson/home/layer/desktop/DesktopController;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/PackageLoader;Lcom/sonyericsson/home/layer/InfoGroupManager;Lcom/sonyericsson/home/AvailabilityReceiver;)V

    iput-object v2, p0, Lcom/sonyericsson/home/HomeApplication;->mDesktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sonyericsson/home/HomeApplication;->mApplicationCreateDuration:J

    .line 108
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/home/HomeApplication;->mPackageReceiver:Lcom/sonyericsson/home/PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/home/HomeApplication;->mAvailabilityReceiver:Lcom/sonyericsson/home/AvailabilityReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/HomeApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 116
    return-void
.end method
