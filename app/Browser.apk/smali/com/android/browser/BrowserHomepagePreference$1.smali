.class Lcom/android/browser/BrowserHomepagePreference$1;
.super Ljava/lang/Object;
.source "BrowserHomepagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserHomepagePreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHomepagePreference;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHomepagePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/browser/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/BrowserHomepagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/BrowserHomepagePreference;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/BrowserHomepagePreference;

    invoke-static {v1}, Lcom/android/browser/BrowserHomepagePreference;->access$000(Lcom/android/browser/BrowserHomepagePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
