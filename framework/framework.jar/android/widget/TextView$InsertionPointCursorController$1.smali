.class Landroid/widget/TextView$InsertionPointCursorController$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$InsertionPointCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$InsertionPointCursorController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$InsertionPointCursorController;)V
    .locals 0
    .parameter

    .prologue
    .line 8188
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController$1;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8190
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$1;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8191
    return-void
.end method
