.class public Lcom/sonyericsson/storage/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/storage/StringUtil;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "base64EncodedString"

    .prologue
    .line 57
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 58
    .local v0, charsetEncodedValue:[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/storage/StringUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 59
    .local v1, string:Ljava/lang/String;
    return-object v1
.end method

.method public static encodeSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 44
    sget-object v2, Lcom/sonyericsson/storage/StringUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 45
    .local v1, charsetEncodedValue:[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, base64EncodedString:Ljava/lang/String;
    return-object v0
.end method
