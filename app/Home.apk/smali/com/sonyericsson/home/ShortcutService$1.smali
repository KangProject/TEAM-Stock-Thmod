.class Lcom/sonyericsson/home/ShortcutService$1;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/ShortcutService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/ShortcutService;

.field final synthetic val$desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/ShortcutService;Landroid/content/Intent;Lcom/sonyericsson/home/layer/desktop/DesktopController;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/home/ShortcutService$1;->this$0:Lcom/sonyericsson/home/ShortcutService;

    iput-object p2, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iput p4, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v1, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->addShortcutSync(Landroid/os/Bundle;)Z

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/home/ShortcutService$1;->this$0:Lcom/sonyericsson/home/ShortcutService;

    iget v1, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/ShortcutService;->stopSelfResult(I)Z

    .line 48
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutService.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$desktopController:Lcom/sonyericsson/home/layer/desktop/DesktopController;

    iget-object v1, p0, Lcom/sonyericsson/home/ShortcutService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/home/layer/desktop/DesktopController;->removeShortcutSync(Landroid/os/Bundle;)Z

    goto :goto_0
.end method
