.class Lcom/android/browser/BrowserBookmarksPage$2;
.super Landroid/os/Handler;
.source "BrowserBookmarksPage.java"


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
    .line 407
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 410
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 412
    :pswitch_0
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$100(Lcom/android/browser/BrowserBookmarksPage;)V

    goto :goto_0

    .line 415
    :pswitch_1
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-static {v2, v1}, Lcom/android/browser/BrowserBookmarksPage;->access$202(Lcom/android/browser/BrowserBookmarksPage;Lcom/android/browser/BrowserBookmarksAdapter;)Lcom/android/browser/BrowserBookmarksAdapter;

    .line 416
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v2}, Lcom/android/browser/BrowserBookmarksPage;->access$300(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BookmarkViewMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserBookmarksAdapter;->switchViewMode(Lcom/android/browser/BookmarkViewMode;)V

    .line 417
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$400(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$400(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/GridView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v2}, Lcom/android/browser/BrowserBookmarksPage;->access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$500(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$500(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v2}, Lcom/android/browser/BrowserBookmarksPage;->access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$600(Lcom/android/browser/BrowserBookmarksPage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$2$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$2$1;-><init>(Lcom/android/browser/BrowserBookmarksPage$2;)V

    .line 437
    .local v0, listener:Landroid/webkit/WebIconDatabase$IconListener;
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->addListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
