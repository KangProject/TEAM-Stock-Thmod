.class Lcom/sonyericsson/home/HomeActivity$AddDialog$1;
.super Landroid/widget/BaseAdapter;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/HomeActivity$AddDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/HomeActivity$AddDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$1;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1567
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1563
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1559
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1521
    move-object v2, p2

    .line 1523
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 1524
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$1;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    iget-object v3, v3, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1528
    :cond_0
    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1529
    .local v0, icon:Landroid/widget/ImageView;
    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1531
    .local v1, label:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 1555
    :goto_0
    return-object v2

    .line 1534
    :pswitch_0
    const v3, 0x7f020008

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1535
    const v3, 0x7f070007

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1539
    :pswitch_1
    const v3, 0x7f02000a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1540
    const v3, 0x7f070008

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1544
    :pswitch_2
    const v3, 0x7f020007

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1545
    const v3, 0x7f070009

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1549
    :pswitch_3
    const v3, 0x7f020009

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1550
    const v3, 0x7f07000a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1531
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
