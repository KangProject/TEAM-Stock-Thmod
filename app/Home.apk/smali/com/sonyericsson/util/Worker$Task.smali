.class public abstract Lcom/sonyericsson/util/Worker$Task;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/util/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/util/Worker$Task;->mName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public overrides(Lcom/sonyericsson/util/Worker$Task;)Z
    .locals 1
    .parameter "another"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public abstract postExecute()V
.end method

.method public preExecute()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
