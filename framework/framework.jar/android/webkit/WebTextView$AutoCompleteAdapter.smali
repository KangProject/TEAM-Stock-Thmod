.class public Landroid/webkit/WebTextView$AutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCompleteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x1090061

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 648
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method private setTextView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 666
    iput-object p1, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    .line 667
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 654
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 656
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Landroid/webkit/WebTextView$AutoCompleteAdapter;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 659
    :cond_0
    return-object v0
.end method
