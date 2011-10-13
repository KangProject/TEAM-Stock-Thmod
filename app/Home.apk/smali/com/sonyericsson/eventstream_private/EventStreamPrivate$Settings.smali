.class public interface abstract Lcom/sonyericsson/eventstream_private/EventStreamPrivate$Settings;
.super Ljava/lang/Object;
.source "EventStreamPrivate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/eventstream_private/EventStreamPrivate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/eventstream_private/EventStreamPrivate$Settings$EnableStateSetting;,
        Lcom/sonyericsson/eventstream_private/EventStreamPrivate$Settings$SyncSetting;
    }
.end annotation


# static fields
.field public static final LAST_REFRESH_BROADCAST_TIMESTAMP:Ljava/lang/String; = "last_refresh_broadcast_timestamp"

.field public static final SETTINGS_PREF_NAME:Ljava/lang/String; = "eventstream_settings"

.field public static final SET_SETTING_INTENT:Ljava/lang/String; = "com.sonyericsson.eventstream.SET_SETTING"
