.class Lcom/android/browser/ActiveTabsPage$1;
.super Ljava/lang/Object;
.source "ActiveTabsPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ActiveTabsPage;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ActiveTabsPage;


# direct methods
.method constructor <init>(Lcom/android/browser/ActiveTabsPage;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    .local v0, needToAttach:Z
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 69
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$1;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method
