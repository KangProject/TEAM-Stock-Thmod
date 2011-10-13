.class Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity$SortDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortAdapter"
.end annotation


# instance fields
.field icons:[I

.field labels:[I

.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$SortDialog;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/home/HomeActivity$SortDialog;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 2592
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->this$1:Lcom/sonyericsson/home/HomeActivity$SortDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2594
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->labels:[I

    .line 2601
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->icons:[I

    return-void

    .line 2594
    nop

    :array_0
    .array-data 0x4
        0x12t 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x7t 0x7ft
    .end array-data

    .line 2601
    :array_1
    .array-data 0x4
        0x44t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/home/HomeActivity$SortDialog;Lcom/sonyericsson/home/HomeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2592
    invoke-direct {p0, p1}, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;-><init>(Lcom/sonyericsson/home/HomeActivity$SortDialog;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->labels:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->labels:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2615
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2619
    move-object v3, p2

    .line 2620
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 2621
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->this$1:Lcom/sonyericsson/home/HomeActivity$SortDialog;

    iget-object v4, v4, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030014

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2625
    :cond_0
    const v4, 0x7f0e0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2626
    .local v0, icon:Landroid/widget/ImageView;
    const v4, 0x7f0e0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2627
    .local v1, label:Landroid/widget/TextView;
    const v4, 0x7f0e0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/home/FakeRadioButton;

    .line 2629
    .local v2, radioButton:Lcom/sonyericsson/home/FakeRadioButton;
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->icons:[I

    aget v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2630
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->labels:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2631
    iget-object v4, p0, Lcom/sonyericsson/home/HomeActivity$SortDialog$SortAdapter;->this$1:Lcom/sonyericsson/home/HomeActivity$SortDialog;

    iget-object v4, v4, Lcom/sonyericsson/home/HomeActivity$SortDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v4}, Lcom/sonyericsson/home/HomeActivity;->access$3000(Lcom/sonyericsson/home/HomeActivity;)I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/sonyericsson/home/FakeRadioButton;->setChecked(Z)V

    .line 2633
    return-object v3

    .line 2631
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
