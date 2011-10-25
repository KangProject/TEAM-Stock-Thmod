.class Lcom/android/browser/FindDialog$2;
.super Ljava/lang/Object;
.source "FindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/FindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/FindDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/FindDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/browser/FindDialog$2;->this$0:Lcom/android/browser/FindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/FindDialog$2;->this$0:Lcom/android/browser/FindDialog;

    iget-object v0, v0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::onClick"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/browser/FindDialog$2;->this$0:Lcom/android/browser/FindDialog;

    iget-object v0, v0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/browser/FindDialog$2;->this$0:Lcom/android/browser/FindDialog;

    invoke-static {v0}, Lcom/android/browser/FindDialog;->access$100(Lcom/android/browser/FindDialog;)V

    .line 65
    iget-object v0, p0, Lcom/android/browser/FindDialog$2;->this$0:Lcom/android/browser/FindDialog;

    invoke-virtual {v0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    .line 66
    return-void
.end method
