.class Lcom/sonyericsson/paneview/PaneView$5;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/paneview/PaneView;->onDataChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/paneview/PaneView$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView$5;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I
    .locals 2
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 1405
    iget-object v0, p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v0, v0, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    iget-object v1, p2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;->location:Lcom/sonyericsson/paneview/PaneLocation;

    iget v1, v1, Lcom/sonyericsson/paneview/PaneLocation;->zOrder:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1403
    check-cast p1, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .end local p1
    check-cast p2, Lcom/sonyericsson/paneview/PaneView$AdapterItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/paneview/PaneView$5;->compare(Lcom/sonyericsson/paneview/PaneView$AdapterItem;Lcom/sonyericsson/paneview/PaneView$AdapterItem;)I

    move-result v0

    return v0
.end method
