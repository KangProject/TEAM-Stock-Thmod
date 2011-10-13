.class public Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;
.super Landroid/content/BroadcastReceiver;
.source "ScrollableAppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScrollableAppWidgetManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mManagedAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistered:Z

.field private mWidgetDataGetter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;)V
    .locals 1
    .parameter "context"
    .parameter "widgetDataGetter"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mManagedAdapters:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mWidgetDataGetter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;

    .line 60
    return-void
.end method

.method private makeWidgetScrollable(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/content/Intent;)V
    .locals 21
    .parameter "widgetId"
    .parameter "info"
    .parameter "intent"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mWidgetDataGetter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;->getView(I)Landroid/view/View;

    move-result-object v15

    .line 110
    .local v15, root:Landroid/view/View;
    if-nez v15, :cond_0

    .line 111
    const-string v18, "ScrollableAppWidgetManager"

    const-string v19, "makeWidgetScrollable: root == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v18, "mobi.intuitit.android.hpp.EXTRA_VIEW_ID"

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 117
    .local v6, dummyId:I
    if-gez v6, :cond_1

    .line 118
    const-string v18, "ScrollableAppWidgetManager"

    const-string v19, "makeWidgetScrollable: dummyId < 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 124
    .local v14, oldView:Landroid/view/View;
    if-nez v14, :cond_2

    .line 125
    const-string v18, "ScrollableAppWidgetManager"

    const-string v19, "makeWidgetScrollable: oldView == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 138
    .local v17, widgetContext:Landroid/content/Context;
    :goto_1
    if-nez v17, :cond_3

    .line 139
    const-string v18, "ScrollableAppWidgetManager"

    const-string v19, "makeWidgetScrollable: widgetContext == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v17           #widgetContext:Landroid/content/Context;
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 135
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v17, 0x0

    .restart local v17       #widgetContext:Landroid/content/Context;
    goto :goto_1

    .line 144
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v18, "mobi.intuitit.android.hpp.EXTRA_LISTVIEW_LAYOUT_ID"

    const/16 v19, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 145
    .local v11, listId:I
    if-gez v11, :cond_4

    .line 146
    const-string v18, "ScrollableAppWidgetManager"

    const-string v19, "makeWidgetScrollable: listId < 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 150
    .local v10, li:Landroid/view/LayoutInflater;
    const/16 v18, 0x0

    move-object v0, v10

    move v1, v11

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 151
    .local v13, newView:Landroid/view/View;
    if-nez v13, :cond_5

    .line 152
    const-string v18, "ScrollableAppWidgetManager"

    const-string v19, "makeWidgetScrollable: newView == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 155
    :cond_5
    move-object v0, v13

    instance-of v0, v0, Landroid/widget/AbsListView;

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 156
    const-string v18, "ScrollableAppWidgetManager"

    const-string v19, "makeWidgetScrollable: newView is not an AbsListView"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    :cond_6
    move-object v0, v13

    check-cast v0, Landroid/widget/AbsListView;

    move-object v12, v0

    .line 162
    .local v12, listView:Landroid/widget/AbsListView;
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 163
    .local v16, vg:Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 164
    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    if-ne v0, v1, :cond_8

    .line 165
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 166
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v16

    move-object v1, v13

    move v2, v8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mWidgetDataGetter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;->getInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 173
    .local v9, info2:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v5, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;

    move-object v0, v5

    move/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, v17

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;-><init>(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;Landroid/content/Intent;)V

    .line 175
    .local v5, adapter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
    invoke-virtual {v5}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->isValid()Z

    move-result v18

    if-nez v18, :cond_9

    .line 176
    const-string v18, "ScrollableAppWidgetManager"

    const-string v19, "makeWidgetScrollable: adapter information is invalid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 163
    .end local v5           #adapter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
    .end local v9           #info2:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 179
    .restart local v5       #adapter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
    .restart local v9       #info2:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_9
    invoke-virtual {v12, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mManagedAdapters:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public deleteWidgetId(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mManagedAdapters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;

    .line 209
    .local v0, adapter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mManagedAdapters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->unregister()V

    .line 213
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mManagedAdapters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;

    .line 201
    .local v0, adapter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->unregister()V

    goto :goto_0

    .line 203
    .end local v0           #adapter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mManagedAdapters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 204
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    const-string v4, "ScrollableAppWidgetManager"

    .line 81
    const-string v2, "appWidgetId"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, widgetId:I
    if-gez v1, :cond_0

    .line 83
    const-string v2, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 85
    :cond_0
    if-gez v1, :cond_1

    .line 86
    const-string v2, "ScrollableAppWidgetManager"

    const-string v2, "Intent didn\'t specified the appWidgetId, ignoring it."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mWidgetDataGetter:Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;

    invoke-interface {v2, v1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager$WidgetDataGetter;->getInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 92
    .local v0, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_2

    .line 93
    const-string v2, "ScrollableAppWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot lookup widget with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ignoring it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    const-string v2, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    invoke-direct {p0, v1, v0, p2}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->makeWidgetScrollable(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v2, "ScrollableAppWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendAppWidgetReadyBroadcast(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobi.intuitit.android.hpp.ACTION_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mobi.intuitit.android.hpp.EXTRA_APPWIDGET_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "mobi.intuitit.android.hpp.ACTION_SCROLL_WIDGET_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mRegistered:Z

    .line 190
    return-void
.end method

.method public stoplistening()V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetManager;->mRegistered:Z

    .line 197
    :cond_0
    return-void
.end method
