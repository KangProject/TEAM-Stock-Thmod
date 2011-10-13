.class Landroid/text/Layout$SpanList;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanList"
.end annotation


# instance fields
.field public mCount:[I

.field public mSpanArray:[Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2152
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/Layout$SpanList;->mCount:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/Layout$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2150
    invoke-direct {p0}, Landroid/text/Layout$SpanList;-><init>()V

    return-void
.end method
