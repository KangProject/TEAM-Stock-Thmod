.class Lcom/android/browser/SemcR2RHandler$1;
.super Landroid/database/ContentObserver;
.source "SemcR2RHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SemcR2RHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SemcR2RHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/SemcR2RHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/browser/SemcR2RHandler$1;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/SemcR2RHandler$1;->this$0:Lcom/android/browser/SemcR2RHandler;

    iget-object v1, p0, Lcom/android/browser/SemcR2RHandler$1;->this$0:Lcom/android/browser/SemcR2RHandler;

    invoke-static {v1}, Lcom/android/browser/SemcR2RHandler;->access$100(Lcom/android/browser/SemcR2RHandler;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/browser/SemcR2RHandler;->access$002(Lcom/android/browser/SemcR2RHandler;Z)Z

    .line 73
    return-void
.end method
