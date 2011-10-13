.class public Lcom/sonyericsson/home/customization/CustomizationUtils;
.super Ljava/lang/Object;
.source "CustomizationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFolderIcon([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "categories"
    .parameter "category"

    .prologue
    .line 18
    if-eqz p1, :cond_1

    .line 19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 20
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 25
    .end local v0           #i:I
    :goto_1
    return v1

    .line 19
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
