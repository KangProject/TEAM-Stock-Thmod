.class public Lcom/sonyericsson/home/GlobalCustomizationManager;
.super Ljava/lang/Object;
.source "GlobalCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;,
        Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;
    }
.end annotation


# static fields
.field private static final CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri; = null

.field private static final PRODUCT_DEFAULT_SETTINGS_FILE:Ljava/lang/String; = "/etc/customization/settings/com/sonyericsson/home/default_settings_global.xml"

.field private static final TAG:Ljava/lang/String; = "global"

.field private static sInstance:Lcom/sonyericsson/home/GlobalCustomizationManager;


# instance fields
.field private mCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppShareEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.home/custom_settings_global.xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mIsAppShareEnabled:Z

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    .line 61
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sonyericsson/util/Worker;->obtain(I)Lcom/sonyericsson/util/Worker;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomizationTask;-><init>(Lcom/sonyericsson/home/GlobalCustomizationManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/util/Worker;->postTask(Lcom/sonyericsson/util/Worker$Task;)V

    .line 63
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->CUSTOM_SETTINGS_PROVIDER:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/home/GlobalCustomizationManager;Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/GlobalCustomizationManager;->onCustomizationLoaded(Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonyericsson/home/GlobalCustomizationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    sget-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->sInstance:Lcom/sonyericsson/home/GlobalCustomizationManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/sonyericsson/home/GlobalCustomizationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/home/GlobalCustomizationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->sInstance:Lcom/sonyericsson/home/GlobalCustomizationManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/sonyericsson/home/GlobalCustomizationManager;->sInstance:Lcom/sonyericsson/home/GlobalCustomizationManager;

    return-object v0
.end method

.method private onCustomizationLoaded(Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;)V
    .locals 4
    .parameter "customization"

    .prologue
    .line 112
    iget-boolean v3, p1, Lcom/sonyericsson/home/GlobalCustomizationManager$GlobalCustomization;->mIsAppShareEnabled:Z

    iput-boolean v3, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mIsAppShareEnabled:Z

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    .line 114
    .local v1, callbacks:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    .line 116
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 117
    .local v0, callback:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 119
    .end local v0           #callback:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomizationCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/home/GlobalCustomizationManager;->isCustomizationAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isAppShareEnabled()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mIsAppShareEnabled:Z

    return v0
.end method

.method public isCustomizationAvailable()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/home/GlobalCustomizationManager;->mCallbacks:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
