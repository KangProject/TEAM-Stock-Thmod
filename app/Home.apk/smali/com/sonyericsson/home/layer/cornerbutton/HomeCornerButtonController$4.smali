.class Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$4;
.super Ljava/lang/Object;
.source "HomeCornerButtonController.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/ResourceLoader$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->loadAction(Lcom/sonyericsson/home/data/Info;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

.field final synthetic val$info:Lcom/sonyericsson/home/data/Info;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iput-object p2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$4;->val$info:Lcom/sonyericsson/home/data/Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheCallback(Lcom/sonyericsson/home/data/Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "someOtherInfo"
    .parameter "icon"
    .parameter "label"
    .parameter "badgeMessage"

    .prologue
    .line 695
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    iget-object v2, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$4;->val$info:Lcom/sonyericsson/home/data/Info;

    invoke-static {v1, v2}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->access$1500(Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;Lcom/sonyericsson/home/data/Info;)Lcom/sonyericsson/cornerbutton/Action;

    move-result-object v0

    .line 696
    .local v0, newAction:Lcom/sonyericsson/cornerbutton/Action;
    iget-object v1, p0, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController$4;->this$0:Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;

    invoke-virtual {v1, v0, v0}, Lcom/sonyericsson/home/layer/cornerbutton/HomeCornerButtonController;->replaceAction(Lcom/sonyericsson/cornerbutton/Action;Lcom/sonyericsson/cornerbutton/Action;)V

    .line 697
    return-void
.end method
