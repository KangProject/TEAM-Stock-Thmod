.class public final Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "MobileDataSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;
    }
.end annotation


# instance fields
.field private mMobileDataObserver:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->updateStatus()V

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const-string v3, "MobileDataSettingButton"

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 104
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 105
    const-string v1, "MobileDataSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled: set to  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "MobileDataSettingButton"

    const-string v1, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 67
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 68
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f0a0027

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0a0029

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 72
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    return-void

    .line 74
    :pswitch_0
    const v1, 0x7f020094

    .line 75
    const v4, 0x7f02007f

    .line 76
    goto :goto_0

    .line 78
    :pswitch_1
    const v1, 0x7f020093

    .line 79
    const v4, 0x7f020090

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setActivateStatus(I)V

    .line 63
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->updateIcons()V

    .line 64
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "MobileDataSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setMobileDataEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->updateStatus()V

    .line 93
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "MobileDataSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setMobileDataEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->updateStatus()V

    .line 98
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 39
    const-string v0, "MobileDataSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->updateStatus()V

    .line 45
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 50
    const-string v0, "MobileDataSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton$MobileDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 53
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.Settings"

    invoke-direct/range {v5 .. v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v6, 0x1000

    move/from16 v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const v1, 0x0

    const/high16 v5, 0x800

    move-object v2, v0

    move-object/from16 v0, v6

    move/from16 v3, v5

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .local v4, pendingIntent:Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapse()V

    const/4 v2, 0x1

    return v2
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/MobileDataSettingButton;->setText(I)V

    .line 88
    return-void
.end method
