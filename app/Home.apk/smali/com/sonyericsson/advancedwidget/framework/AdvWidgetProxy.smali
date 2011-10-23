.class public final Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
.super Lcom/sonyericsson/advancedwidget/framework/Proxy;
.source "AdvWidgetProxy.java"


# static fields
.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final TAG:Ljava/lang/String; = "AdvWidgetProxy"


# instance fields
.field private mCreated:Z

.field private mFocused:Z

.field private mResumed:Z

.field private mStarted:Z


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/advancedwidget/framework/Proxy;-><init>(Ljava/util/Map;)V

    .line 253
    return-void
.end method

.method public static createAdvWidgetProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 7
    .parameter "hostContext"
    .parameter "packageName"

    .prologue
    .line 267
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".SemcWidget"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 269
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 270
    .local v2, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-direct {v4, v2}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v4

    .line 271
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 272
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static createAdvWidgetProxy_test(Ljava/util/Map;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, comm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-direct {v0, p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public configure(Landroid/content/Context;)I
    .locals 2
    .parameter "hostContext"

    .prologue
    .line 194
    const-string v1, "configure"

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 195
    .local v0, ret:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public customize(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "settings"

    .prologue
    .line 202
    const-string v1, "customize"

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 203
    .local v0, ret:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 204
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 211
    const-string v0, "getContentView"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final getFrameworkVersion()I
    .locals 2

    .prologue
    .line 46
    const-string v0, "getFrameworkVersion"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 225
    const-string v0, "getSnapshot"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSpanXY()[I
    .locals 2

    .prologue
    .line 218
    const-string v0, "getSpanXY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    check-cast p0, [I

    return-object p0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 234
    const-string v0, "getType"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 61
    const-string v0, "init"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 187
    const-string v0, "onConfigured"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    .line 80
    const-string v0, "onCreate"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    return-void
.end method

.method public onDefocus()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    .line 90
    const-string v0, "onDefocus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-eqz v0, :cond_1

    .line 167
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    .line 172
    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    return-void
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    .line 100
    const-string v0, "onFocus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-void
.end method

.method public onMoved()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "onMoved"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_1

    .line 129
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    .line 134
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    .line 115
    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    .line 144
    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-eqz v0, :cond_1

    .line 153
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    .line 158
    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDestroy()V

    .line 71
    :cond_0
    const-string v0, "remove"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 242
    const-string v0, "setActivity"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 54
    const-string v0, "setId"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
