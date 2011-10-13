.class Lcom/sonyericsson/home/BadgeService$1;
.super Ljava/lang/Object;
.source "BadgeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/BadgeService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/BadgeService;

.field final synthetic val$badgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/BadgeService;Lcom/sonyericsson/home/badge/BadgeManager;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sonyericsson/home/BadgeService$1;->this$0:Lcom/sonyericsson/home/BadgeService;

    iput-object p2, p0, Lcom/sonyericsson/home/BadgeService$1;->val$badgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    iput-object p3, p0, Lcom/sonyericsson/home/BadgeService$1;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/sonyericsson/home/BadgeService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonyericsson/home/BadgeService$1;->val$badgeManager:Lcom/sonyericsson/home/badge/BadgeManager;

    iget-object v1, p0, Lcom/sonyericsson/home/BadgeService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/badge/BadgeManager;->onReceive(Landroid/content/Intent;)V

    .line 23
    iget-object v0, p0, Lcom/sonyericsson/home/BadgeService$1;->this$0:Lcom/sonyericsson/home/BadgeService;

    iget v1, p0, Lcom/sonyericsson/home/BadgeService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/BadgeService;->stopSelfResult(I)Z

    .line 24
    return-void
.end method
