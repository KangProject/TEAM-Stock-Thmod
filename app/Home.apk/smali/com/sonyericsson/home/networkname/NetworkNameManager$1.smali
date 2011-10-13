.class Lcom/sonyericsson/home/networkname/NetworkNameManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkNameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/networkname/NetworkNameManager;-><init>(Lcom/sonyericsson/home/networkname/NetworkNameView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/networkname/NetworkNameManager;

.field final synthetic val$extraPlmn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/networkname/NetworkNameManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager$1;->this$0:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    iput-object p2, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager$1;->val$extraPlmn:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager$1;->this$0:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    invoke-static {v1}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->access$000(Lcom/sonyericsson/home/networkname/NetworkNameManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager$1;->this$0:Lcom/sonyericsson/home/networkname/NetworkNameManager;

    invoke-static {v1}, Lcom/sonyericsson/home/networkname/NetworkNameManager;->access$100(Lcom/sonyericsson/home/networkname/NetworkNameManager;)Lcom/sonyericsson/home/networkname/NetworkNameView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/home/networkname/NetworkNameManager$1;->val$extraPlmn:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/home/networkname/NetworkNameView;->setText(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
