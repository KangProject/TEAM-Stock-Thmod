.class Lcom/android/browser/BrowserActivity$14;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3330
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$14;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$14;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/android/browser/BrowserActivity$14;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p4, p0, Lcom/android/browser/BrowserActivity$14;->val$error:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 3332
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$14;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2302(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3333
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$14;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$1602(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 3334
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$14;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$1702(Lcom/android/browser/BrowserActivity;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;

    .line 3335
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$14;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$1802(Lcom/android/browser/BrowserActivity;Landroid/net/http/SslError;)Landroid/net/http/SslError;

    .line 3337
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$14;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$14;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$14;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$14;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 3339
    return-void
.end method
