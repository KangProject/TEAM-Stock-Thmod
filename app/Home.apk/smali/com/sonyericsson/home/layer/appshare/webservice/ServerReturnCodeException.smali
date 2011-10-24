.class public Lcom/sonyericsson/home/layer/appshare/webservice/ServerReturnCodeException;
.super Ljava/lang/Exception;
.source "ServerReturnCodeException.java"


# static fields
.field public static final INVALID_ANDROID_VERSION:I = 0x7

.field public static final INVALID_DENSITY:I = 0x9

.field public static final INVALID_FACEBOOK_ID:I = 0xe

.field public static final INVALID_ICON_VIEW:I = 0xd

.field public static final INVALID_LOCALE:I = 0x5

.field public static final INVALID_NBR_OF_APPS:I = 0xa

.field public static final INVALID_OFFSET:I = 0xb

.field public static final INVALID_PARAMS:I = 0x3

.field public static final INVALID_PHONE_NAME:I = 0x8

.field public static final INVALID_PKG_NAME:I = 0x4

.field public static final INVALID_REGION_CODE:I = 0x6

.field public static final INVALID_TIMESPAN:I = 0xc

.field public static final NO_INFO_FOR_REQUESTED_PKG:I = 0x1

.field public static final UNKNOWN_SERVER_ERROR:I = -0x1

.field public static final UNSUPPORTED_RECOMMENDER:I = 0x2

.field private static final serialVersionUID:J = -0x31b596421a5f2c1eL


# instance fields
.field public final errorCode:I

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 142
    iput p1, p0, Lcom/sonyericsson/home/layer/appshare/webservice/ServerReturnCodeException;->errorCode:I

    .line 143
    iput-object p2, p0, Lcom/sonyericsson/home/layer/appshare/webservice/ServerReturnCodeException;->message:Ljava/lang/String;

    .line 144
    return-void
.end method
