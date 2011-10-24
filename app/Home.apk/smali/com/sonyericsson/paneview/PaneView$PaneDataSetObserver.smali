.class Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaneDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/paneview/PaneView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/paneview/PaneView;Lcom/sonyericsson/paneview/PaneView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonyericsson/paneview/PaneView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;->this$0:Lcom/sonyericsson/paneview/PaneView;

    iget-object v1, p0, Lcom/sonyericsson/paneview/PaneView$PaneDataSetObserver;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-static {v1}, Lcom/sonyericsson/paneview/PaneView;->access$100(Lcom/sonyericsson/paneview/PaneView;)Lcom/sonyericsson/paneview/PaneAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/paneview/PaneAdapter;->hasStableIds()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/paneview/PaneView;->access$200(Lcom/sonyericsson/paneview/PaneView;Z)V

    .line 240
    return-void
.end method
