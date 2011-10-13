.class public Lcom/sonyericsson/eventstream_private/EventStreamPrivate;
.super Ljava/lang/Object;
.source "EventStreamPrivate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/eventstream_private/EventStreamPrivate$Image;,
        Lcom/sonyericsson/eventstream_private/EventStreamPrivate$RawQuery;,
        Lcom/sonyericsson/eventstream_private/EventStreamPrivate$EventColumns;,
        Lcom/sonyericsson/eventstream_private/EventStreamPrivate$FriendColumns;,
        Lcom/sonyericsson/eventstream_private/EventStreamPrivate$PluginColumns;,
        Lcom/sonyericsson/eventstream_private/EventStreamPrivate$Settings;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.eventstream"

.field protected static final BASE_URI:Landroid/net/Uri; = null

.field public static final SPLINE_PERMISSION:Ljava/lang/String; = "com.sonyericsson.eventstream.SPLINE_PERMISSION"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "content://com.sonyericsson.eventstream"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/eventstream_private/EventStreamPrivate;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method
