.class Lcom/android/browser/HistoryItem;
.super Lcom/android/browser/BookmarkItem;
.source "HistoryItem.java"


# instance fields
.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mStar:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 50
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/browser/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    .line 51
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 52
    new-instance v0, Lcom/android/browser/HistoryItem$1;

    invoke-direct {v0, p0}, Lcom/android/browser/HistoryItem$1;-><init>(Lcom/android/browser/HistoryItem;)V

    iput-object v0, p0, Lcom/android/browser/HistoryItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method isBookmark()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method setIsBookmark(Z)V
    .locals 2
    .parameter "isBookmark"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    return-void
.end method
