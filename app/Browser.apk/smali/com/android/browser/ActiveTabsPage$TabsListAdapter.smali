.class Lcom/android/browser/ActiveTabsPage$TabsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiveTabsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ActiveTabsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsListAdapter"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNotified:Z

.field private mReturnedCount:I

.field final synthetic this$0:Lcom/android/browser/ActiveTabsPage;


# direct methods
.method private constructor <init>(Lcom/android/browser/ActiveTabsPage;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ActiveTabsPage;Lcom/android/browser/ActiveTabsPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 100
    .local v0, count:I
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 112
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    if-eq v0, v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->notifyChange()V

    .line 114
    iget v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    .line 118
    :goto_0
    return v1

    .line 116
    :cond_1
    iput v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    move v1, v0

    .line 118
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 130
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v0}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    add-int/lit8 p1, p1, -0x1

    .line 134
    :cond_0
    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, -0x1

    .line 137
    iget-object v8, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v8}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v5

    .line 138
    .local v5, tabCount:I
    iget-object v8, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v8}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 139
    add-int/lit8 p1, p1, -0x1

    .line 142
    :cond_0
    if-nez p2, :cond_1

    .line 143
    iget-object v8, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v8}, Lcom/android/browser/ActiveTabsPage;->access$300(Lcom/android/browser/ActiveTabsPage;)Landroid/view/LayoutInflater;

    move-result-object v8

    if-ne p1, v11, :cond_3

    const v9, 0x7f030016

    :goto_0
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 147
    :cond_1
    if-eq p1, v11, :cond_2

    .line 148
    const v8, 0x7f0c0002

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 150
    .local v6, title:Landroid/widget/TextView;
    const v8, 0x7f0c0003

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 151
    .local v7, url:Landroid/widget/TextView;
    const v8, 0x7f0c0001

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 153
    .local v2, favicon:Landroid/widget/ImageView;
    const v8, 0x7f0c004e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, close:Landroid/view/View;
    iget-object v8, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v8}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    .line 155
    .local v4, tab:Lcom/android/browser/Tab;
    invoke-virtual {v4}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 156
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 159
    .local v3, icon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 160
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    :goto_1
    move v1, p1

    .line 165
    .local v1, closePosition:I
    new-instance v8, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;

    invoke-direct {v8, p0, v1, v5}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;-><init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;II)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .end local v0           #close:Landroid/view/View;
    .end local v1           #closePosition:I
    .end local v2           #favicon:Landroid/widget/ImageView;
    .end local v3           #icon:Landroid/graphics/Bitmap;
    .end local v4           #tab:Lcom/android/browser/Tab;
    .end local v6           #title:Landroid/widget/TextView;
    .end local v7           #url:Landroid/widget/TextView;
    :cond_2
    return-object p2

    .line 143
    :cond_3
    const v9, 0x7f030015

    goto :goto_0

    .line 162
    .restart local v0       #close:Landroid/view/View;
    .restart local v2       #favicon:Landroid/widget/ImageView;
    .restart local v3       #icon:Landroid/graphics/Bitmap;
    .restart local v4       #tab:Lcom/android/browser/Tab;
    .restart local v6       #title:Landroid/widget/TextView;
    .restart local v7       #url:Landroid/widget/TextView;
    :cond_4
    const/high16 v8, 0x7f02

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    return v0
.end method

.method notifyChange()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;-><init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method
