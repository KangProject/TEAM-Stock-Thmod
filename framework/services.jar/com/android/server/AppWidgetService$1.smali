.class Lcom/android/server/AppWidgetService$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .registers 2
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1079
    .local v4, action:Ljava/lang/String;
    const-string v16, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    .line 1151
    :cond_18
    :goto_18
    return-void

    .line 1081
    :cond_19
    const-string v16, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_bd

    .line 1082
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    .line 1083
    .local v14, revised:Ljava/util/Locale;
    if-eqz v14, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    .line 1085
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1088
    :try_start_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1089
    .local v3, N:I
    const/16 v17, 0x1

    sub-int v8, v3, v17

    .local v8, i:I
    :goto_79
    if-ltz v8, :cond_ae

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppWidgetService$Provider;

    .line 1091
    .local v11, p:Lcom/android/server/AppWidgetService$Provider;
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 1092
    .local v13, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1089
    add-int/lit8 v8, v8, -0x1

    goto :goto_79

    .line 1094
    .end local v11           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1095
    monitor-exit v16

    goto/16 :goto_18

    .end local v3           #N:I
    .end local v8           #i:I
    :catchall_ba
    move-exception v17

    monitor-exit v16
    :try_end_bc
    .catchall {:try_start_65 .. :try_end_bc} :catchall_ba

    throw v17

    .line 1098
    .end local v14           #revised:Ljava/util/Locale;
    :cond_bd
    const/4 v5, 0x0

    .line 1099
    .local v5, added:Z
    const/4 v12, 0x0

    .line 1100
    .local v12, pkgList:[Ljava/lang/String;
    const-string v16, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_117

    .line 1101
    const-string v16, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1102
    const/4 v5, 0x1

    .line 1118
    :goto_d5
    if-eqz v12, :cond_18

    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    if-eqz v16, :cond_18

    .line 1121
    if-eqz v5, :cond_174

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1123
    :try_start_ec
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1124
    .local v7, extras:Landroid/os/Bundle;
    if-eqz v7, :cond_14f

    const-string v17, "android.intent.extra.REPLACING"

    const/16 v18, 0x0

    move-object v0, v7

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_14f

    .line 1125
    move-object v6, v12

    .local v6, arr$:[Ljava/lang/String;
    array-length v10, v6

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_104
    if-ge v9, v10, :cond_165

    aget-object v13, v6, v9

    .line 1127
    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V
    :try_end_114
    .catchall {:try_start_ec .. :try_end_114} :catchall_171

    .line 1125
    add-int/lit8 v9, v9, 0x1

    goto :goto_104

    .line 1103
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_117
    const-string v16, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12e

    .line 1104
    const-string v16, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1105
    const/4 v5, 0x0

    goto :goto_d5

    .line 1107
    :cond_12e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 1108
    .local v15, uri:Landroid/net/Uri;
    if-eqz v15, :cond_18

    .line 1111
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 1112
    .restart local v13       #pkgName:Ljava/lang/String;
    if-eqz v13, :cond_18

    .line 1115
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object v12, v0

    .end local v12           #pkgList:[Ljava/lang/String;
    const/16 v16, 0x0

    aput-object v13, v12, v16

    .line 1116
    .restart local v12       #pkgList:[Ljava/lang/String;
    const-string v16, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_d5

    .line 1131
    .end local v13           #pkgName:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    .restart local v7       #extras:Landroid/os/Bundle;
    :cond_14f
    move-object v6, v12

    .restart local v6       #arr$:[Ljava/lang/String;
    :try_start_150
    array-length v10, v6

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_152
    if-ge v9, v10, :cond_165

    aget-object v13, v6, v9

    .line 1132
    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1131
    add-int/lit8 v9, v9, 0x1

    goto :goto_152

    .line 1135
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1136
    monitor-exit v16

    goto/16 :goto_18

    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :catchall_171
    move-exception v17

    monitor-exit v16
    :try_end_173
    .catchall {:try_start_150 .. :try_end_173} :catchall_171

    throw v17

    .line 1138
    :cond_174
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1139
    .restart local v7       #extras:Landroid/os/Bundle;
    if-eqz v7, :cond_189

    const-string v16, "android.intent.extra.REPLACING"

    const/16 v17, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_18

    .line 1142
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1143
    move-object v6, v12

    .restart local v6       #arr$:[Ljava/lang/String;
    :try_start_197
    array-length v10, v6

    .restart local v10       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_199
    if-ge v9, v10, :cond_1b5

    aget-object v13, v6, v9

    .line 1144
    .restart local v13       #pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1143
    add-int/lit8 v9, v9, 0x1

    goto :goto_199

    .line 1147
    .end local v13           #pkgName:Ljava/lang/String;
    :cond_1b5
    monitor-exit v16

    goto/16 :goto_18

    .end local v9           #i$:I
    .end local v10           #len$:I
    :catchall_1b8
    move-exception v17

    monitor-exit v16
    :try_end_1ba
    .catchall {:try_start_197 .. :try_end_1ba} :catchall_1b8

    throw v17
.end method
