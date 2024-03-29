.class public Landroid/drm/DrmInfoEvent;
.super Landroid/drm/DrmEvent;
.source "DrmInfoEvent.java"


# static fields
.field public static final TYPE_ACCOUNT_ALREADY_REGISTERED:I = 0x5

.field public static final TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT:I = 0x1

.field public static final TYPE_NOT_SUPPORTED:I = 0x8

.field public static final TYPE_NO_INTERNET_CONNECTION:I = 0xa

.field public static final TYPE_OUT_OF_MEMORY:I = 0x9

.field public static final TYPE_REMOVE_RIGHTS:I = 0x2

.field public static final TYPE_RIGHTS_INSTALLED:I = 0x3

.field public static final TYPE_RIGHTS_NOT_INSTALLED:I = 0x6

.field public static final TYPE_RIGHTS_RENEWAL_NOT_ALLOWED:I = 0x7

.field public static final TYPE_WAIT_FOR_RIGHTS:I = 0x4


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "uniqueId"
    .parameter "type"
    .parameter "message"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    .line 85
    return-void
.end method
