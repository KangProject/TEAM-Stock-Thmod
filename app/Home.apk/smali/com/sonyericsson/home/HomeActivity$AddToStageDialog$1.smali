.class Lcom/sonyericsson/home/HomeActivity$AddToStageDialog$1;
.super Landroid/widget/BaseAdapter;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog$1;->this$1:Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1684
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1651
    move-object v2, p2

    .line 1653
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 1654
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog$1;->this$1:Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;

    iget-object v3, v3, Lcom/sonyericsson/home/HomeActivity$AddToStageDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1658
    :cond_0
    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1659
    .local v0, icon:Landroid/widget/ImageView;
    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1661
    .local v1, label:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 1680
    :goto_0
    return-object v2

    .line 1664
    :pswitch_0
    const v3, 0x7f020008

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1665
    const v3, 0x7f070007

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1669
    :pswitch_1
    const v3, 0x7f020007

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1670
    const v3, 0x7f070009

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1674
    :pswitch_2
    const v3, 0x7f020009

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1675
    const v3, 0x7f07000a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
