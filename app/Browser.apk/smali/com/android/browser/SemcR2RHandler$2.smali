.class Lcom/android/browser/SemcR2RHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SemcR2RHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SemcR2RHandler;->startR2RIfNeeded(Lcom/android/browser/SemcR2RHandler$R2RResultListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SemcR2RHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/SemcR2RHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/browser/SemcR2RHandler$2;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sonyericsson.r2r.client.intent.action.R2R_DONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lcom/android/browser/SemcR2RHandler$2;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-static {v3, v5}, Lcom/android/browser/SemcR2RHandler;->access$202(Lcom/android/browser/SemcR2RHandler;Z)Z

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 127
    const-string v3, "r2r-result-code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, resultCode:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "r2r-success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/browser/SemcR2RHandler$2;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-static {v3, v5}, Lcom/android/browser/SemcR2RHandler;->access$002(Lcom/android/browser/SemcR2RHandler;Z)Z

    .line 130
    iget-object v3, p0, Lcom/android/browser/SemcR2RHandler$2;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-static {v3}, Lcom/android/browser/SemcR2RHandler;->access$300(Lcom/android/browser/SemcR2RHandler;)Lcom/android/browser/SemcR2RHandler$R2RResultListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/browser/SemcR2RHandler$2;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-static {v3}, Lcom/android/browser/SemcR2RHandler;->access$300(Lcom/android/browser/SemcR2RHandler;)Lcom/android/browser/SemcR2RHandler$R2RResultListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/browser/SemcR2RHandler$R2RResultListener;->onResult()V

    .line 135
    .end local v2           #resultCode:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/browser/SemcR2RHandler$2;->this$0:Lcom/android/browser/SemcR2RHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/browser/SemcR2RHandler;->access$302(Lcom/android/browser/SemcR2RHandler;Lcom/android/browser/SemcR2RHandler$R2RResultListener;)Lcom/android/browser/SemcR2RHandler$R2RResultListener;

    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/SemcR2RHandler$2;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-static {v3}, Lcom/android/browser/SemcR2RHandler;->access$500(Lcom/android/browser/SemcR2RHandler;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/SemcR2RHandler$2;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-static {v4}, Lcom/android/browser/SemcR2RHandler;->access$400(Lcom/android/browser/SemcR2RHandler;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 138
    .restart local v0       #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 139
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SemcR2RHandler"

    const-string v4, "Not possible to unregister broadcast receiver"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
