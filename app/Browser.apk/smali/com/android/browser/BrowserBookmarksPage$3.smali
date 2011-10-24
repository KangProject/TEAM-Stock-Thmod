.class Lcom/android/browser/BrowserBookmarksPage$3;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$700(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const-string v1, "browser"

    const-string v2, "item clicked when dismissing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$800(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 454
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$600(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$000(Lcom/android/browser/BrowserBookmarksPage;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->access$900(Lcom/android/browser/BrowserBookmarksPage;I)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1, p3}, Lcom/android/browser/BrowserBookmarksPage;->access$1000(Lcom/android/browser/BrowserBookmarksPage;I)Landroid/content/Intent;

    move-result-object v0

    .line 462
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/android/browser/BrowserBookmarksPage;->access$1100(Lcom/android/browser/BrowserBookmarksPage;ILandroid/content/Intent;)V

    .line 463
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$3;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v1}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    goto :goto_0
.end method
