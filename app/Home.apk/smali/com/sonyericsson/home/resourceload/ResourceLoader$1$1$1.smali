.class Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1$1;->this$2:Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 519
    iget v1, p1, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;->timing:I

    iget v2, p2, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;->timing:I

    sub-int v0, v1, v2

    .line 526
    .local v0, comparison:I
    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 517
    check-cast p1, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;

    .end local p1
    check-cast p2, Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/home/resourceload/ResourceLoader$1$1$1;->compare(Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;Lcom/sonyericsson/home/resourceload/ResourceLoader$TimedInfo;)I

    move-result v0

    return v0
.end method
