.class Lcom/android/browser/AddBookmarkPage$2;
.super Ljava/lang/Object;
.source "AddBookmarkPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/AddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/AddBookmarkPage;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/browser/AddBookmarkPage$2;->this$0:Lcom/android/browser/AddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/AddBookmarkPage;->finish()V

    .line 72
    return-void
.end method
