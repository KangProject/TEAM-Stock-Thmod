.class Lcom/android/browser/BrowserActivity$Copy;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Copy"
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "toCopy"

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$Copy;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1878
    iput-object p2, p0, Lcom/android/browser/BrowserActivity$Copy;->mText:Ljava/lang/CharSequence;

    .line 1879
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$Copy;->this$0:Lcom/android/browser/BrowserActivity;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$Copy;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$800(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    .line 1874
    const/4 v0, 0x1

    return v0
.end method
