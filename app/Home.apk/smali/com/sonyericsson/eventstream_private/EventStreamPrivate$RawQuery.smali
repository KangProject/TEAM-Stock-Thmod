.class public interface abstract Lcom/sonyericsson/eventstream_private/EventStreamPrivate$RawQuery;
.super Ljava/lang/Object;
.source "EventStreamPrivate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/eventstream_private/EventStreamPrivate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RawQuery"
.end annotation


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "eventstream-rawquery"

.field public static final RAW_QUERY_PATH:Ljava/lang/String; = "rawquery"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/sonyericsson/eventstream_private/EventStreamPrivate;->BASE_URI:Landroid/net/Uri;

    const-string v1, "rawquery"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/eventstream_private/EventStreamPrivate$RawQuery;->URI:Landroid/net/Uri;

    return-void
.end method
