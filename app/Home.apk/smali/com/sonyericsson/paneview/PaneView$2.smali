.class Lcom/sonyericsson/paneview/PaneView$2;
.super Lcom/sonyericsson/util/Dynamics;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/paneview/PaneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/paneview/PaneView;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sonyericsson/paneview/PaneView$2;->this$0:Lcom/sonyericsson/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonyericsson/util/Dynamics;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUpdate(I)V
    .locals 0
    .parameter "dt"

    .prologue
    .line 409
    return-void
.end method

.method public setState(FFJ)V
    .locals 0
    .parameter "position"
    .parameter "velocity"
    .parameter "now"

    .prologue
    .line 404
    return-void
.end method
