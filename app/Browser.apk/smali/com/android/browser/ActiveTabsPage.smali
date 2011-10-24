.class public Lcom/android/browser/ActiveTabsPage;
.super Landroid/widget/LinearLayout;
.source "ActiveTabsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ActiveTabsPage$TabsListAdapter;,
        Lcom/android/browser/ActiveTabsPage$CloseHolder;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

.field private final mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private final mControl:Lcom/android/browser/TabControl;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private final mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V
    .locals 2
    .parameter "context"
    .parameter "control"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 44
    iput-object p2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mListView:Landroid/widget/ListView;

    .line 48
    new-instance v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;-><init>(Lcom/android/browser/ActiveTabsPage;Lcom/android/browser/ActiveTabsPage$1;)V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    .line 49
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/browser/ActiveTabsPage$1;

    invoke-direct {v1, p0}, Lcom/android/browser/ActiveTabsPage$1;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/ActiveTabsPage;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method
