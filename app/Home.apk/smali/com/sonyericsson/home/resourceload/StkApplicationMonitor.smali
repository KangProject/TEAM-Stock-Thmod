.class public Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;
.super Ljava/lang/Object;
.source "StkApplicationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;
    }
.end annotation


# static fields
.field private static final MSG_WAIT_TIMEOUT:I = 0x0

.field private static final STK_APPLICATION_WAIT_TIME:I = 0x2710


# instance fields
.field private mCallback:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$1;-><init>(Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;)V

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;->mCallback:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;)Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;->mCallback:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;

    return-object v0
.end method


# virtual methods
.method protected finish()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;->mCallback:Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;

    .line 89
    return-void
.end method

.method protected start()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/StkApplicationMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    return-void
.end method
