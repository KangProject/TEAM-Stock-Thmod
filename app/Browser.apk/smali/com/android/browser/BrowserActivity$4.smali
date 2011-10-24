.class Lcom/android/browser/BrowserActivity$4;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;


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

.field final synthetic val$t:Lcom/android/browser/Tab;

.field final synthetic val$urlData:Lcom/android/browser/BrowserActivity$UrlData;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$UrlData;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$4;->val$urlData:Lcom/android/browser/BrowserActivity$UrlData;

    iput-object p3, p0, Lcom/android/browser/BrowserActivity$4;->val$t:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$300(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$300(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 376
    .local v0, w:Landroid/webkit/WebView;
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOMIZATION onFinish homepage= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz v0, :cond_1

    .line 378
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->val$urlData:Lcom/android/browser/BrowserActivity$UrlData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->val$urlData:Lcom/android/browser/BrowserActivity$UrlData;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/browser/BrowserActivity;->access$500(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 385
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_1
    :goto_0
    return-void

    .line 381
    .restart local v0       #w:Landroid/webkit/WebView;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$4;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$4;->val$t:Lcom/android/browser/Tab;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$4;->val$urlData:Lcom/android/browser/BrowserActivity$UrlData;

    invoke-static {v1, v2, v3}, Lcom/android/browser/BrowserActivity;->access$600(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto :goto_0
.end method
