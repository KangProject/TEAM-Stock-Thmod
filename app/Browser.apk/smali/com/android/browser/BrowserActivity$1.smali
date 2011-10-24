.class Lcom/android/browser/BrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$1;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 259
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 264
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, typeName:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, subtypeName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$1;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v3, v4, v5}, Lcom/android/browser/BrowserActivity;->access$000(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/android/browser/BrowserActivity$1;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserActivity;->onNetworkToggle(Z)V

    .line 271
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #subtypeName:Ljava/lang/String;
    .end local v2           #typeName:Ljava/lang/String;
    :cond_0
    return-void

    .line 266
    .restart local v0       #info:Landroid/net/NetworkInfo;
    .restart local v1       #subtypeName:Ljava/lang/String;
    .restart local v2       #typeName:Ljava/lang/String;
    :cond_1
    const-string v5, ""

    goto :goto_0
.end method
