.class Lcom/android/systemui/statusbar/BatteryText$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BatteryText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BatteryText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BatteryText;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryText$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    .line 33
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryText$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/systemui/statusbar/BatteryText;->access$0()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 39
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryText$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/BatteryText;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BatteryText;->access$1(Lcom/android/systemui/statusbar/BatteryText;)V

    .line 44
    return-void
.end method
