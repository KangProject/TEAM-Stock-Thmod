.class Lcom/android/settings/deviceinfo/Memory$3;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Memory;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$3;->this$0:Lcom/android/settings/deviceinfo/Memory;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;Z)V

    .line 197
    return-void
.end method
