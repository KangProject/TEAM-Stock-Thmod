.class Lcom/android/browser/SemcBrowserCustomization$2;
.super Ljava/lang/Object;
.source "SemcBrowserCustomization.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SemcBrowserCustomization;->doFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SemcBrowserCustomization;


# direct methods
.method constructor <init>(Lcom/android/browser/SemcBrowserCustomization;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/browser/SemcBrowserCustomization$2;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$2;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$1400(Lcom/android/browser/SemcBrowserCustomization;)Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/browser/SemcBrowserCustomization$2;->this$0:Lcom/android/browser/SemcBrowserCustomization;

    invoke-static {v0}, Lcom/android/browser/SemcBrowserCustomization;->access$1400(Lcom/android/browser/SemcBrowserCustomization;)Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/SemcBrowserCustomization$CustomizationResultListener;->onFinish()V

    .line 332
    :cond_0
    return-void
.end method
