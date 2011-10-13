.class Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask$1;
.super Ljava/lang/Object;
.source "PackageLoader.java"

# interfaces
.implements Lcom/sonyericsson/home/resourceload/StkApplicationMonitor$OnStkApplicationPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->postExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask$1;->this$1:Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageNotAvailable()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask$1;->this$1:Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;

    iget-object v0, v0, Lcom/sonyericsson/home/resourceload/PackageLoader$LoadAllApplicationsTask;->this$0:Lcom/sonyericsson/home/resourceload/PackageLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/home/resourceload/PackageLoader;->stkPackageRemoved()V

    .line 245
    return-void
.end method
