.class public Lcom/sonyericsson/home/customization/PendingPackageList;
.super Ljava/lang/Object;
.source "PendingPackageList.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INSTANCE:Lcom/sonyericsson/home/customization/PendingPackageList; = null

.field private static final TAG:Ljava/lang/String; = "PendingPackageList"


# instance fields
.field private mPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/sonyericsson/home/customization/PendingPackageList;

    invoke-direct {v0}, Lcom/sonyericsson/home/customization/PendingPackageList;-><init>()V

    sput-object v0, Lcom/sonyericsson/home/customization/PendingPackageList;->INSTANCE:Lcom/sonyericsson/home/customization/PendingPackageList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/home/customization/PendingPackageList;->mPackageMap:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/home/customization/PendingPackageList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonyericsson/home/customization/PendingPackageList;->INSTANCE:Lcom/sonyericsson/home/customization/PendingPackageList;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    const-string v1, "PendingPackageList"

    const-string v2, "add failed due to parameter packageName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/home/customization/PendingPackageList;->mPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 59
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 61
    .restart local v0       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/home/customization/PendingPackageList;->mPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/sonyericsson/home/customization/PendingPackageList;->mPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 91
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 93
    .local v1, result:Z
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 98
    :cond_0
    return v1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/sonyericsson/home/customization/PendingPackageList;->mPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 78
    .local v0, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method
