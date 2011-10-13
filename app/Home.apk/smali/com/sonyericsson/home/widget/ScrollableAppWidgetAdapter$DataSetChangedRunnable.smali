.class Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;
.super Ljava/lang/Object;
.source "ScrollableAppWidgetAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSetChangedRunnable"
.end annotation


# instance fields
.field private mNewData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

.field final synthetic this$0:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;)V
    .locals 0
    .parameter
    .parameter "newData"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;->this$0:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;->mNewData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    .line 141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;->this$0:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;

    iget-object v1, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;->mNewData:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    invoke-static {v0, v1}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->access$102(Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;)Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataCache;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter$DataSetChangedRunnable;->this$0:Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/home/widget/ScrollableAppWidgetAdapter;->notifyDataSetChanged()V

    .line 146
    return-void
.end method
