.class Lcom/sonyericsson/home/badge/BadgeManager$2;
.super Ljava/lang/Object;
.source "BadgeManager.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/badge/BadgeManager;->onReceive(Lcom/sonyericsson/home/data/ActivityInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/badge/BadgeManager;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sonyericsson/home/badge/BadgeManager$2;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    iput-object p2, p0, Lcom/sonyericsson/home/badge/BadgeManager$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "info"
    .parameter "icon"
    .parameter "label"
    .parameter "badgeMessage"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager$2;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    invoke-static {v1}, Lcom/sonyericsson/home/badge/BadgeManager;->access$200(Lcom/sonyericsson/home/badge/BadgeManager;)Lcom/sonyericsson/home/resourceload/ResourceLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/home/resourceload/ResourceLoader;->getCacheValue(Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;

    move-result-object v0

    .line 179
    .local v0, cacheValue:Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/sonyericsson/home/badge/BadgeManager$2;->this$0:Lcom/sonyericsson/home/badge/BadgeManager;

    iget-object v2, p0, Lcom/sonyericsson/home/badge/BadgeManager$2;->val$message:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0}, Lcom/sonyericsson/home/badge/BadgeManager;->access$600(Lcom/sonyericsson/home/badge/BadgeManager;Ljava/lang/String;Lcom/sonyericsson/home/data/Info;Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheValue;)V

    .line 182
    :cond_0
    return-void
.end method
