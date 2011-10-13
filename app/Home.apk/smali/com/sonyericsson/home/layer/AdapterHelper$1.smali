.class Lcom/sonyericsson/home/layer/AdapterHelper$1;
.super Lcom/sonyericsson/util/Worker$Task;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/AdapterHelper;-><init>(Landroid/content/Context;Lcom/sonyericsson/home/resourceload/ResourceLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private folderDrawables:[Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/AdapterHelper;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    iput-object p3, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sonyericsson/util/Worker$Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->folderDrawables:[Landroid/graphics/drawable/Drawable;

    .line 105
    return-void
.end method

.method public postExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    iget-object v3, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->folderDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$002(Lcom/sonyericsson/home/layer/AdapterHelper;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object v4, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->folderDrawables:[Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-static {v2}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$100(Lcom/sonyericsson/home/layer/AdapterHelper;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 112
    .local v1, r:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 114
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/home/layer/AdapterHelper$1;->this$0:Lcom/sonyericsson/home/layer/AdapterHelper;

    invoke-static {v2, v4}, Lcom/sonyericsson/home/layer/AdapterHelper;->access$102(Lcom/sonyericsson/home/layer/AdapterHelper;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 115
    return-void
.end method
