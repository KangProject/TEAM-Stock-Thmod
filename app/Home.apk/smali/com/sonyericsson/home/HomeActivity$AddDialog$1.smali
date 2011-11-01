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
    .line 2181
    iput-object p1, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$1;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$1;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    iget-object v0, v0, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/HomeActivity;->access$4700(Lcom/sonyericsson/home/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2236
    const/4 v0, 0x5

    .line 2238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2227
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2184
    move-object v2, p2

    .line 2186
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 2187
    iget-object v3, p0, Lcom/sonyericsson/home/HomeActivity$AddDialog$1;->this$1:Lcom/sonyericsson/home/HomeActivity$AddDialog;

    iget-object v3, v3, Lcom/sonyericsson/home/HomeActivity$AddDialog;->this$0:Lcom/sonyericsson/home/HomeActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2191
    :cond_0
    const v3, 0x7f0e0017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2192
    .local v0, icon:Landroid/widget/ImageView;
    const v3, 0x7f0e0018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2194
    .local v1, label:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 2223
    :goto_0
    return-object v2

    .line 2197
    :pswitch_0
    const v3, 0x7f02000b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2198
    const v3, 0x7f070007

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2202
    :pswitch_1
    const v3, 0x7f02000e

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2203
    const v3, 0x7f070008

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2207
    :pswitch_2
    const v3, 0x7f02000a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2208
    const v3, 0x7f070009

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2212
    :pswitch_3
    const v3, 0x7f02000d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2213
    const v3, 0x7f07000a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2217
    :pswitch_4
    const v3, 0x7f02000c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2218
    const v3, 0x7f07000b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
