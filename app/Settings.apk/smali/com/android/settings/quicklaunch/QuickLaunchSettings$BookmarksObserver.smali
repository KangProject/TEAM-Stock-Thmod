.class Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;
.super Landroid/database/ContentObserver;
.source "QuickLaunchSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/quicklaunch/QuickLaunchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarksObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/quicklaunch/QuickLaunchSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;->this$0:Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    .line 368
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 369
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;->this$0:Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    invoke-static {v0}, Lcom/android/settings/quicklaunch/QuickLaunchSettings;->access$000(Lcom/android/settings/quicklaunch/QuickLaunchSettings;)V

    .line 376
    return-void
.end method
