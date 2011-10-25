.class Lcom/android/browser/BrowserActivity$10;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$fromShowSSLCertificateOnError:Z


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3128
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    iput-boolean p2, p0, Lcom/android/browser/BrowserActivity$10;->val$fromShowSSLCertificateOnError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 3131
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$1402(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3132
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$1502(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    .line 3135
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity$10;->val$fromShowSSLCertificateOnError:Z

    if-eqz v0, :cond_0

    .line 3137
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v1}, Lcom/android/browser/BrowserActivity;->access$1600(Lcom/android/browser/BrowserActivity;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->access$1700(Lcom/android/browser/BrowserActivity;)Landroid/webkit/SslErrorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$10;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v3}, Lcom/android/browser/BrowserActivity;->access$1800(Lcom/android/browser/BrowserActivity;)Landroid/net/http/SslError;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 3142
    :cond_0
    return-void
.end method
