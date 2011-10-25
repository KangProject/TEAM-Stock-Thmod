.class Lcom/android/browser/BrowserActivity$12;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$tab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3234
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$12;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 3236
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2002(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3237
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2102(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    .line 3239
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$12;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$12;->val$tab:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->access$2200(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Z)V

    .line 3240
    return-void
.end method
