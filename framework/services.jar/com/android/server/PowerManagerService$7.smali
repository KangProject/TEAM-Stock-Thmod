.class Lcom/android/server/PowerManagerService$7;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;)V

    .line 1608
    return-void
.end method
