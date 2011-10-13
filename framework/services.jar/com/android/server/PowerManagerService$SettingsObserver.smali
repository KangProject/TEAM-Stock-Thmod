.class Lcom/android/server/PowerManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method

.method private getFloat(Ljava/lang/String;F)F
    .registers 6
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 442
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1a

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    .line 443
    .local v0, fVal:Ljava/lang/Float;
    :goto_13
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_19
    return v2

    .line 442
    .end local v0           #fVal:Ljava/lang/Float;
    :cond_1a
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_13

    .restart local v0       #fVal:Ljava/lang/Float;
    :cond_1d
    move v2, p2

    .line 443
    goto :goto_19
.end method

.method private getInt(Ljava/lang/String;I)I
    .registers 6
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 435
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 436
    .local v1, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_1a

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 437
    .local v0, iVal:Ljava/lang/Integer;
    :goto_13
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_19
    return v2

    .line 436
    .end local v0           #iVal:Ljava/lang/Integer;
    :cond_1a
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_13

    .restart local v0       #iVal:Ljava/lang/Integer;
    :cond_1d
    move v2, p2

    .line 437
    goto :goto_19
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 10
    .parameter "o"
    .parameter "arg"

    .prologue
    const/high16 v6, 0x3f00

    .line 447
    iget-object v2, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 449
    :try_start_9
    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "stay_on_while_plugged_in"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$1302(Lcom/android/server/PowerManagerService;I)I

    .line 451
    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)V

    .line 454
    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "screen_off_timeout"

    const/16 v5, 0x3a98

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;I)I

    .line 460
    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;I)V

    .line 464
    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;)V

    .line 466
    const-string v3, "window_animation_scale"

    const/high16 v4, 0x3f80

    invoke-direct {p0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 467
    .local v1, windowScale:F
    const-string v3, "transition_animation_scale"

    const/high16 v4, 0x3f80

    invoke-direct {p0, v3, v4}, Lcom/android/server/PowerManagerService$SettingsObserver;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 468
    .local v0, transitionScale:F
    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$1702(Lcom/android/server/PowerManagerService;I)I

    .line 469
    cmpl-float v3, v1, v6

    if-lez v3, :cond_59

    .line 470
    iget-object v3, p0, Lcom/android/server/PowerManagerService$SettingsObserver;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$1776(Lcom/android/server/PowerManagerService;I)I

    .line 472
    :cond_59
    cmpl-float v3, v0, v6

    if-lez v3, :cond_5d

    .line 476
    :cond_5d
    monitor-exit v2

    .line 477
    return-void

    .line 476
    .end local v0           #transitionScale:F
    .end local v1           #windowScale:F
    :catchall_5f
    move-exception v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_9 .. :try_end_61} :catchall_5f

    throw v3
.end method
