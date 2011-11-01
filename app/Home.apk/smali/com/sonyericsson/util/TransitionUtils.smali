.class public final Lcom/sonyericsson/util/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# static fields
.field static final scaleUpTransitions:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 20
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/util/TransitionUtils;->scaleUpTransitions:[[I

    return-void

    :array_0
    .array-data 0x4
        0xbt 0x0t 0x4t 0x7ft
        0xct 0x0t 0x4t 0x7ft
        0xdt 0x0t 0x4t 0x7ft
        0xet 0x0t 0x4t 0x7ft
        0xft 0x0t 0x4t 0x7ft
        0x10t 0x0t 0x4t 0x7ft
        0x11t 0x0t 0x4t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x12t 0x0t 0x4t 0x7ft
        0x13t 0x0t 0x4t 0x7ft
        0x14t 0x0t 0x4t 0x7ft
        0x15t 0x0t 0x4t 0x7ft
        0x16t 0x0t 0x4t 0x7ft
        0x17t 0x0t 0x4t 0x7ft
        0x18t 0x0t 0x4t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x19t 0x0t 0x4t 0x7ft
        0x1at 0x0t 0x4t 0x7ft
        0x1bt 0x0t 0x4t 0x7ft
        0x1ct 0x0t 0x4t 0x7ft
        0x1dt 0x0t 0x4t 0x7ft
        0x1et 0x0t 0x4t 0x7ft
        0x1ft 0x0t 0x4t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x20t 0x0t 0x4t 0x7ft
        0x21t 0x0t 0x4t 0x7ft
        0x22t 0x0t 0x4t 0x7ft
        0x23t 0x0t 0x4t 0x7ft
        0x24t 0x0t 0x4t 0x7ft
        0x25t 0x0t 0x4t 0x7ft
        0x26t 0x0t 0x4t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x27t 0x0t 0x4t 0x7ft
        0x28t 0x0t 0x4t 0x7ft
        0x29t 0x0t 0x4t 0x7ft
        0x2at 0x0t 0x4t 0x7ft
        0x2bt 0x0t 0x4t 0x7ft
        0x2ct 0x0t 0x4t 0x7ft
        0x2dt 0x0t 0x4t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x2et 0x0t 0x4t 0x7ft
        0x2ft 0x0t 0x4t 0x7ft
        0x30t 0x0t 0x4t 0x7ft
        0x31t 0x0t 0x4t 0x7ft
        0x32t 0x0t 0x4t 0x7ft
        0x33t 0x0t 0x4t 0x7ft
        0x34t 0x0t 0x4t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x35t 0x0t 0x4t 0x7ft
        0x36t 0x0t 0x4t 0x7ft
        0x37t 0x0t 0x4t 0x7ft
        0x38t 0x0t 0x4t 0x7ft
        0x39t 0x0t 0x4t 0x7ft
        0x3at 0x0t 0x4t 0x7ft
        0x3bt 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaleUpTransition(IIII)I
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v4, v5

    .line 90
    :goto_0
    return v4

    .line 73
    :cond_1
    sget-object v4, Lcom/sonyericsson/util/TransitionUtils;->scaleUpTransitions:[[I

    array-length v2, v4

    .line 74
    .local v2, tableResX:I
    sget-object v4, Lcom/sonyericsson/util/TransitionUtils;->scaleUpTransitions:[[I

    aget-object v4, v4, v5

    array-length v3, v4

    .line 76
    .local v3, tableResY:I
    mul-int v4, p2, v2

    div-int v0, v4, p0

    .line 77
    .local v0, indexX:I
    mul-int v4, p3, v3

    div-int v1, v4, p1

    .line 79
    .local v1, indexY:I
    if-lt v0, v2, :cond_4

    .line 80
    sub-int v0, v2, v6

    .line 84
    :cond_2
    :goto_1
    if-lt v1, v3, :cond_5

    .line 85
    sub-int v1, v3, v6

    .line 90
    :cond_3
    :goto_2
    sget-object v4, Lcom/sonyericsson/util/TransitionUtils;->scaleUpTransitions:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    goto :goto_0

    .line 81
    :cond_4
    if-gez v0, :cond_2

    .line 82
    const/4 v0, 0x0

    goto :goto_1

    .line 86
    :cond_5
    if-gez v1, :cond_3

    .line 87
    const/4 v1, 0x0

    goto :goto_2
.end method
