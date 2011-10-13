.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 79
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 84
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 69
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 74
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 99
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 100
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 4
    .parameter "headers"

    .prologue
    .line 1742
    if-nez p0, :cond_0

    .line 1743
    const/4 p0, 0x0

    .line 1949
    .end local p0
    :goto_0
    return p0

    .line 1747
    .restart local p0
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 1750
    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1751
    .local v1, mmsVersion:I
    if-nez v1, :cond_1

    .line 1753
    const/4 p0, 0x0

    goto :goto_0

    .line 1757
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 1946
    const/4 p0, 0x0

    goto :goto_0

    .line 1760
    :pswitch_0
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1761
    .local v0, srContentType:[B
    if-nez v0, :cond_2

    .line 1762
    const/4 p0, 0x0

    goto :goto_0

    .line 1766
    :cond_2
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #srContentType:[B
    move-result-object v0

    .line 1767
    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_3

    .line 1768
    const/4 p0, 0x0

    goto :goto_0

    .line 1772
    :cond_3
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p0

    .line 1773
    .local p0, srTransactionId:[B
    if-nez p0, :cond_15

    .line 1774
    const/4 p0, 0x0

    goto :goto_0

    .line 1780
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_1
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1781
    .local v0, scResponseStatus:I
    if-nez v0, :cond_4

    .line 1782
    const/4 p0, 0x0

    goto :goto_0

    .line 1786
    :cond_4
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #scResponseStatus:I
    move-result-object p0

    .line 1787
    .local p0, scTransactionId:[B
    if-nez p0, :cond_15

    .line 1788
    const/4 p0, 0x0

    goto :goto_0

    .line 1794
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_2
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1795
    .local v0, niContentLocation:[B
    if-nez v0, :cond_5

    .line 1796
    const/4 p0, 0x0

    goto :goto_0

    .line 1800
    :cond_5
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niContentLocation:[B
    move-result-wide v0

    .line 1801
    .end local v1           #mmsVersion:I
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 1802
    .end local v0           #niExpiry:J
    const/4 p0, 0x0

    goto :goto_0

    .line 1806
    :cond_6
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1807
    .local v0, niMessageClass:[B
    if-nez v0, :cond_7

    .line 1808
    const/4 p0, 0x0

    goto :goto_0

    .line 1812
    :cond_7
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #niMessageClass:[B
    move-result-wide v0

    .line 1813
    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_8

    .line 1814
    .end local v0           #niMessageSize:J
    const/4 p0, 0x0

    goto :goto_0

    .line 1818
    :cond_8
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1819
    .local p0, niTransactionId:[B
    if-nez p0, :cond_15

    .line 1820
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1826
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_3
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #messageType:I
    move-result v0

    .line 1827
    .local v0, nriStatus:I
    if-nez v0, :cond_9

    .line 1828
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1832
    :cond_9
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #nriStatus:I
    move-result-object p0

    .line 1833
    .local p0, nriTransactionId:[B
    if-nez p0, :cond_15

    .line 1834
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1840
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object v0

    .line 1841
    .local v0, rcContentType:[B
    if-nez v0, :cond_a

    .line 1842
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1846
    :cond_a
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #rcContentType:[B
    move-result-wide v0

    .line 1847
    .end local v1           #mmsVersion:I
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_15

    .line 1848
    .end local p0           #headers:Lcom/google/android/mms/pdu/PduHeaders;
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1854
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_5
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1855
    .end local v1           #mmsVersion:I
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_b

    .line 1856
    .end local v0           #diDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1860
    :cond_b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1861
    .local v0, diMessageId:[B
    if-nez v0, :cond_c

    .line 1862
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1866
    :cond_c
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #diMessageId:[B
    move-result v0

    .line 1867
    .local v0, diStatus:I
    if-nez v0, :cond_d

    .line 1868
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1872
    :cond_d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #diStatus:I
    move-result-object p0

    .line 1873
    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1874
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1880
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #messageType:I
    move-result-object p0

    .line 1881
    .local p0, aiTransactionId:[B
    if-nez p0, :cond_15

    .line 1882
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1888
    .restart local v0       #messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0           #messageType:I
    move-result-wide v0

    .line 1889
    .end local v1           #mmsVersion:I
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_e

    .line 1890
    .end local v0           #roDate:J
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1894
    :cond_e
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1895
    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_f

    .line 1896
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1900
    :cond_f
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1901
    .local v0, roMessageId:[B
    if-nez v0, :cond_10

    .line 1902
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1906
    :cond_10
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #roMessageId:[B
    move-result v0

    .line 1907
    .local v0, roReadStatus:I
    if-nez v0, :cond_11

    .line 1908
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1912
    :cond_11
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #roReadStatus:I
    move-result-object p0

    .line 1913
    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1914
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1920
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_8
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #messageType:I
    move-result-object v0

    .line 1921
    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_12

    .line 1922
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1926
    :cond_12
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object v0

    .line 1927
    .local v0, rrMessageId:[B
    if-nez v0, :cond_13

    .line 1928
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1932
    :cond_13
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0           #rrMessageId:[B
    move-result v0

    .line 1933
    .local v0, rrReadStatus:I
    if-nez v0, :cond_14

    .line 1934
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1938
    :cond_14
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0           #rrReadStatus:I
    move-result-object p0

    .line 1939
    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_15

    .line 1940
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1949
    .end local v1           #mmsVersion:I
    .end local p0           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 1757
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .parameter "part"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1706
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1707
    :cond_0
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_1

    move v2, v3

    .line 1732
    :goto_0
    return v2

    .line 1713
    :cond_1
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2

    .line 1714
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1715
    .local v0, contentId:[B
    if-eqz v0, :cond_2

    .line 1716
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2

    move v2, v4

    .line 1717
    goto :goto_0

    .line 1723
    .end local v0           #contentId:[B
    :cond_2
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_3

    .line 1724
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1725
    .local v1, contentType:[B
    if-eqz v1, :cond_3

    .line 1726
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_3

    move v2, v4

    .line 1727
    goto :goto_0

    .end local v1           #contentType:[B
    :cond_3
    move v2, v3

    .line 1732
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1126
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1127
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1128
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1129
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1092
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1093
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1094
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1095
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1096
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1098
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1099
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1100
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1108
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1109
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1103
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1104
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1112
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1113
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1116
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 1076
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-gt p0, v0, :cond_2

    :cond_1
    move v0, v1

    .line 1087
    :goto_0
    return v0

    .line 1080
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1087
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1084
    goto :goto_0

    .line 1080
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    .line 1032
    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    :cond_0
    move v0, v1

    .line 1057
    :goto_0
    return v0

    .line 1036
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1057
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 1054
    goto :goto_0

    .line 1036
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 850
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 7
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1430
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1432
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .line 1433
    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1434
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1435
    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v2, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1436
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1438
    and-int/lit16 v1, v2, 0xff

    .line 1440
    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_8

    .line 1441
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1442
    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1443
    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1444
    .end local v1           #cur:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1445
    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-ne v1, v4, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1446
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1447
    and-int/lit16 v1, v4, 0xff

    .line 1449
    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_4

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_4

    .line 1450
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #contentType:[B
    move-result-object v0

    .line 1465
    .end local v1           #first:I
    .restart local v0       #contentType:[B
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1466
    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .line 1467
    .local v1, parameterLen:I
    if-lez v1, :cond_3

    .line 1468
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2           #length:I
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1471
    :cond_3
    if-gez v1, :cond_7

    .line 1472
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt MMS message"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .local v6, contentType:[B
    move-object v0, p0

    move-object p0, v6

    .line 1482
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .end local v6           #contentType:[B
    .local p0, contentType:[B
    :goto_1
    return-object v0

    .line 1451
    .restart local v0       #contentType:[B
    .local v1, first:I
    .restart local v2       #length:I
    .restart local v3       #startPos:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_4
    const/16 v5, 0x7f

    if-le v1, v5, :cond_6

    .line 1452
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1454
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #first:I
    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1455
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_0

    .line 1457
    .local v0, index:I
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1458
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #index:I
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_0

    .line 1461
    .restart local v1       #first:I
    :cond_6
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt content-type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object v6, v0

    .end local v0           #contentType:[B
    .restart local v6       #contentType:[B
    move-object v0, p0

    move-object p0, v6

    .end local v6           #contentType:[B
    .local p0, contentType:[B
    goto :goto_1

    .end local v2           #length:I
    .restart local v0       #contentType:[B
    .local v1, parameterLen:I
    .restart local v4       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_7
    move p1, v4

    .end local v4           #temp:I
    .local p1, temp:I
    move-object p0, v0

    .end local v0           #contentType:[B
    .end local v1           #parameterLen:I
    .end local v3           #startPos:I
    .local p0, contentType:[B
    :goto_2
    move-object v0, p0

    .line 1482
    goto :goto_1

    .line 1475
    .restart local v0       #contentType:[B
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_8
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_9

    .line 1476
    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .local p1, temp:I
    goto :goto_2

    .line 1478
    .end local p1           #temp:I
    .restart local v0       #contentType:[B
    .restart local v2       #temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_9
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local v0           #contentType:[B
    .local p0, contentType:[B
    move p1, v2

    .end local v2           #temp:I
    .restart local p1       #temp:I
    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 5
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1260
    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1262
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1263
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1264
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v3, v1

    .line 1265
    .end local v1           #tempPos:I
    .local v3, tempPos:I
    :goto_0
    if-lez v0, :cond_c

    .line 1266
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1267
    .local v1, param:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const/4 v4, -0x1

    if-ne v4, v1, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1268
    .restart local p0
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 1270
    sparse-switch v1, :sswitch_data_0

    .line 1401
    const/4 v1, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v1           #param:I
    move-result v4

    if-ne v1, v4, :cond_b

    .line 1402
    const-string v1, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .end local v3           #tempPos:I
    .local v1, tempPos:I
    :goto_1
    move v3, v1

    .line 1408
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    goto :goto_0

    .line 1286
    .local v1, param:I
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1287
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1288
    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1289
    const/16 v1, 0x7f

    if-le v0, v1, :cond_4

    .line 1291
    .end local v1           #param:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1293
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1294
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0           #index:I
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1295
    .local v0, type:[B
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    .end local v0           #type:[B
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1308
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1309
    .local v0, lastLen:I
    goto :goto_1

    .line 1301
    .end local v1           #tempPos:I
    .local v0, first:I
    .restart local v3       #tempPos:I
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .line 1302
    .local v0, type:[B
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1303
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1326
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1327
    .local v0, start:[B
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 1328
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1332
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #start:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1333
    .local v0, lastLen:I
    goto :goto_1

    .line 1350
    .local v1, param:I
    .restart local v3       #tempPos:I
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1351
    .end local v0           #lastLen:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1352
    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1354
    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    .end local v1           #param:I
    const/16 v1, 0x7f

    if-lt v0, v1, :cond_7

    :cond_6
    if-nez v0, :cond_9

    .line 1357
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #firstValue:I
    move-result-object v1

    .line 1359
    .local v1, charsetStr:[B
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .line 1361
    .local v0, charsetInt:I
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3           #tempPos:I
    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charsetInt:I
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    .end local v1           #charsetStr:[B
    :cond_8
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1376
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1377
    .local v0, lastLen:I
    goto/16 :goto_1

    .line 1362
    .end local v0           #lastLen:I
    .local v1, charsetStr:[B
    :catch_0
    move-exception v0

    .line 1364
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PduParser"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1           #charsetStr:[B
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1365
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1369
    .local v0, firstValue:I
    .restart local v3       #tempPos:I
    :cond_9
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0           #firstValue:I
    long-to-int v0, v0

    .line 1370
    .local v0, charset:I
    if-eqz p1, :cond_8

    .line 1371
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #charset:I
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1389
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #lastLen:I
    move-result-object v0

    .line 1390
    .local v0, name:[B
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 1391
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #param:I
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1395
    .end local v3           #tempPos:I
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0           #name:[B
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1396
    .local v0, lastLen:I
    goto/16 :goto_1

    .line 1404
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_b
    const/4 v0, 0x0

    move v1, v3

    .end local v3           #tempPos:I
    .restart local v1       #tempPos:I
    goto/16 :goto_1

    .line 1410
    .end local v1           #tempPos:I
    .restart local v3       #tempPos:I
    :cond_c
    if-eqz v0, :cond_d

    .line 1411
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Content-Type"

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_d
    return-void

    .line 1270
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .parameter "pduDataStream"

    .prologue
    .line 926
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 927
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 928
    const/4 v3, 0x0

    .line 929
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 930
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 931
    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/4 v7, -0x1

    if-ne v7, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 932
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 935
    .local v2, first:I
    if-nez v2, :cond_2

    .line 936
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 958
    :goto_0
    return-object v7

    .line 939
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 940
    const/16 v7, 0x20

    if-ge v2, v7, :cond_3

    .line 941
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 943
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 946
    :cond_3
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 949
    .local v6, textString:[B
    if-eqz v0, :cond_4

    .line 950
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 958
    goto :goto_0

    .line 952
    :cond_4
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 954
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 955
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .parameter "pduDataStream"

    .prologue
    .line 1201
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1202
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1203
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1204
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1205
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1206
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1207
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1209
    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1169
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1170
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1171
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1172
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1174
    .local v0, count:I
    if-le v0, v8, :cond_2

    .line 1175
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1178
    :cond_2
    const-wide/16 v2, 0x0

    .line 1180
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1181
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1182
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1183
    :cond_3
    shl-long/2addr v2, v8

    .line 1184
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1187
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 6
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1495
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1496
    .restart local p0
    :cond_0
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1497
    .restart local p0
    :cond_1
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gtz p2, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1515
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1516
    .local v3, startPos:I
    const/4 v1, 0x0

    .line 1517
    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v2, v1

    .end local v1           #tempPos:I
    .local v2, tempPos:I
    move v1, v0

    .line 1518
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    :goto_0
    if-lez v1, :cond_16

    .line 1519
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1520
    .local v0, header:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-ne v4, v0, :cond_3

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1521
    .restart local p0
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 1523
    const/16 v4, 0x7f

    if-le v0, v4, :cond_12

    .line 1525
    sparse-switch v0, :sswitch_data_0

    .line 1657
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_11

    .line 1658
    const-string p0, "PduParser"

    .end local p0
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .line 1695
    .end local v1           #lastLen:I
    .local p0, lastLen:I
    :goto_1
    return p1

    .line 1531
    .restart local v0       #header:I
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1532
    .local v0, contentLocation:[B
    if-eqz v0, :cond_4

    .line 1533
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1536
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1537
    .end local v2           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    :goto_2
    move v2, v1

    .end local v1           #tempPos:I
    .restart local v2       #tempPos:I
    move v1, v0

    .line 1688
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    goto :goto_0

    .line 1544
    .local v0, header:I
    :sswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1545
    .local v0, contentId:[B
    if-eqz v0, :cond_5

    .line 1546
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1549
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1550
    .end local v2           #tempPos:I
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1551
    .local v0, lastLen:I
    goto :goto_2

    .line 1563
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v2       #tempPos:I
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1564
    .end local v0           #header:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1565
    .local v0, tempValue:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .end local v1           #lastLen:I
    if-nez v1, :cond_6

    const/4 v1, -0x1

    if-ne v1, v0, :cond_6

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1566
    .restart local p0       #pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_6
    and-int/lit16 v0, v0, 0xff

    .line 1567
    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1569
    const/16 v1, 0x20

    if-lt v0, v1, :cond_b

    .line 1571
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #first:I
    move-result-object v0

    .line 1572
    .local v0, dispStr:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 1574
    .local v4, str:Ljava/lang/String;
    const-string v0, ";"

    .end local v0           #dispStr:[B
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1575
    .local v1, i:I
    const/4 v0, -0x1

    if-ne v0, v1, :cond_8

    .line 1576
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    move v0, v1

    .line 1601
    .end local v1           #i:I
    .end local v2           #tempPos:I
    .local v0, i:I
    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1602
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1603
    .local v0, lastLen:I
    goto :goto_2

    .line 1578
    .end local v0           #lastLen:I
    .local v1, i:I
    .restart local v2       #tempPos:I
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1579
    const-string v0, "filename"

    .line 1580
    .local v0, comp:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .end local v1           #i:I
    move-result v1

    .line 1581
    .restart local v1       #i:I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_9

    .line 1583
    .end local v2           #tempPos:I
    const-string v2, "="

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1584
    .local v2, j:I
    const/4 v5, -0x1

    if-eq v5, v2, :cond_9

    .line 1585
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #comp:Ljava/lang/String;
    add-int/2addr v0, v1

    .end local v1           #i:I
    .local v0, i:I
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1586
    .local v1, tmp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .end local v1           #tmp:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1587
    move v1, v2

    .line 1588
    .end local v0           #i:I
    .local v1, i:I
    const-string v0, ";"

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1590
    .end local v2           #j:I
    .local v0, j:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 1591
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v0           #j:I
    move-result-object v0

    .line 1595
    .local v0, fileTempName:Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1596
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .end local v0           #fileName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    :cond_9
    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_3

    .line 1593
    .local v0, j:I
    .restart local v1       #i:I
    :cond_a
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, fileTempName:Ljava/lang/String;
    goto :goto_4

    .line 1615
    .end local v1           #i:I
    .end local v4           #str:Ljava/lang/String;
    .local v0, first:I
    .local v2, tempPos:I
    :cond_b
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1616
    .local v0, len:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1617
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1618
    .local v4, thisStartPos:I
    const/4 v1, 0x0

    .line 1619
    .local v1, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1621
    .local v2, value:I
    const/16 v1, 0x80

    if-ne v2, v1, :cond_e

    .line 1622
    .end local v1           #thisEndPos:I
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1634
    :goto_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1635
    .restart local v1       #thisEndPos:I
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_18

    .line 1636
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1637
    .end local v2           #value:I
    .local v5, value:I
    const/16 v1, 0x98

    if-ne v5, v1, :cond_c

    .line 1638
    .end local v1           #thisEndPos:I
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1642
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1643
    .local v2, thisEndPos:I
    sub-int v1, v4, v2

    if-ge v1, v0, :cond_d

    .line 1644
    sub-int v1, v4, v2

    sub-int/2addr v0, v1

    .line 1645
    .local v0, last:I
    new-array v1, v0, [B

    .line 1646
    .local v1, temp:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0           #last:I
    .end local v1           #temp:[B
    .end local v4           #thisStartPos:I
    :cond_d
    move v1, v5

    .end local v5           #value:I
    .local v1, value:I
    move v0, v2

    .line 1650
    .end local v2           #thisEndPos:I
    .local v0, thisEndPos:I
    :goto_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1651
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1652
    .local v0, lastLen:I
    goto/16 :goto_2

    .line 1623
    .end local v1           #tempPos:I
    .local v0, len:I
    .local v2, value:I
    .restart local v4       #thisStartPos:I
    :cond_e
    const/16 v1, 0x81

    if-ne v2, v1, :cond_f

    .line 1624
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_5

    .line 1625
    :cond_f
    const/16 v1, 0x82

    if-ne v2, v1, :cond_10

    .line 1626
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_5

    .line 1628
    :cond_10
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1630
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_5

    .line 1661
    .end local v0           #len:I
    .end local v4           #thisStartPos:I
    .local v1, lastLen:I
    .local v2, tempPos:I
    :cond_11
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v2

    .end local v2           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .line 1664
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v2       #tempPos:I
    :cond_12
    const/16 v4, 0x20

    if-lt v0, v4, :cond_14

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_14

    .line 1666
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0           #header:I
    move-result-object v0

    .line 1667
    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1           #lastLen:I
    move-result-object v1

    .line 1670
    .local v1, tempValue:[B
    const/4 v2, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v2           #tempPos:I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #tempHeader:[B
    if-ne v2, v0, :cond_13

    .line 1672
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1675
    :cond_13
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1676
    .local v1, tempPos:I
    sub-int v0, v3, v1

    sub-int v0, p2, v0

    .line 1677
    .local v0, lastLen:I
    goto/16 :goto_2

    .line 1682
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v2       #tempPos:I
    :cond_14
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0           #header:I
    move-result v4

    if-ne v0, v4, :cond_15

    .line 1683
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .line 1686
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_15
    const/4 v0, 0x0

    .end local v1           #lastLen:I
    .local v0, lastLen:I
    move v1, v2

    .end local v2           #tempPos:I
    .local v1, tempPos:I
    goto/16 :goto_2

    .line 1690
    .end local v0           #lastLen:I
    .local v1, lastLen:I
    .restart local v2       #tempPos:I
    :cond_16
    if-eqz v1, :cond_17

    .line 1691
    const-string p0, "PduParser"

    .end local p0           #pduDataStream:Ljava/io/ByteArrayInputStream;
    const-string p1, "Corrupt Part headers"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .line 1695
    .restart local v1       #lastLen:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1
    :cond_17
    const/4 p0, 0x1

    move p1, p0

    move p0, v1

    .end local v1           #lastLen:I
    .local p0, lastLen:I
    goto/16 :goto_1

    .local v0, len:I
    .local v1, thisEndPos:I
    .local v2, value:I
    .restart local v4       #thisStartPos:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_18
    move v0, v1

    .end local v1           #thisEndPos:I
    .local v0, thisEndPos:I
    move v1, v2

    .end local v2           #value:I
    .local v1, value:I
    goto/16 :goto_6

    .line 1525
    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 10
    .parameter "pduDataStream"

    .prologue
    .line 733
    if-nez p0, :cond_0

    .line 734
    const/4 p0, 0x0

    .line 838
    .end local p0
    :goto_0
    return-object p0

    .line 737
    .restart local p0
    :cond_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 738
    .local v2, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 740
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_d

    .line 741
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 742
    .local v4, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 743
    .local v3, dataLength:I
    new-instance v7, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 744
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 745
    .local v8, startPos:I
    if-gtz v8, :cond_1

    .line 747
    const/4 p0, 0x0

    goto :goto_0

    .line 751
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 752
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v1

    .line 753
    .local v1, contentType:[B
    if-eqz v1, :cond_4

    .line 754
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 760
    .end local v1           #contentType:[B
    :goto_2
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    .line 761
    .local v1, name:[B
    if-eqz v1, :cond_2

    .line 762
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 766
    :cond_2
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1           #name:[B
    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 767
    .local v1, charset:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 768
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #charset:Ljava/lang/Integer;
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 772
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 773
    .local v1, endPos:I
    sub-int v1, v8, v1

    sub-int v1, v4, v1

    .line 774
    .local v1, partHeaderLen:I
    if-lez v1, :cond_5

    .line 775
    invoke-static {p0, v7, v1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v1

    .end local v1           #partHeaderLen:I
    if-nez v1, :cond_6

    .line 777
    const/4 p0, 0x0

    goto :goto_0

    .line 756
    .local v1, contentType:[B
    :cond_4
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1           #contentType:[B
    const/4 v9, 0x0

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 779
    .local v1, partHeaderLen:I
    :cond_5
    if-gez v1, :cond_6

    .line 781
    const/4 p0, 0x0

    goto :goto_0

    .line 787
    .end local v1           #partHeaderLen:I
    :cond_6
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-nez v1, :cond_7

    .line 791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .end local v8           #startPos:I
    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 796
    :cond_7
    if-lez v3, :cond_b

    .line 797
    new-array v4, v3, [B

    .line 798
    .local v4, partData:[B
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    .end local v6           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 799
    .local v1, partContentType:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 800
    const-string v3, "application/vnd.wap.multipart.alternative"

    .end local v3           #dataLength:I
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #partContentType:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 802
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 804
    .local v1, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 829
    .end local v4           #partData:[B
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v3

    if-nez v3, :cond_c

    .line 831
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 740
    :goto_4
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto/16 :goto_1

    .line 807
    .restart local v4       #partData:[B
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_8
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v3

    .line 808
    .local v3, partDataEncoding:[B
    if-eqz v3, :cond_e

    .line 809
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 810
    .local v1, encoding:Ljava/lang/String;
    const-string v3, "base64"

    .end local v3           #partDataEncoding:[B
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 812
    invoke-static {v4}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 820
    .end local v4           #partData:[B
    .local v1, partData:[B
    :goto_5
    if-nez v1, :cond_a

    .line 821
    const-string p0, "Decode part data error!"

    .end local p0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 822
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 813
    .local v1, encoding:Ljava/lang/String;
    .restart local v4       #partData:[B
    .restart local p0
    :cond_9
    const-string v3, "quoted-printable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #encoding:Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 815
    invoke-static {v4}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v1

    .end local v4           #partData:[B
    .local v1, partData:[B
    goto :goto_5

    .line 824
    :cond_a
    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .end local v1           #partData:[B
    :cond_b
    move-object v1, v7

    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_3

    .line 834
    :cond_c
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4

    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_d
    move-object p0, v0

    .line 838
    goto/16 :goto_0

    .restart local v4       #partData:[B
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_e
    move-object v1, v4

    .end local v4           #partData:[B
    .local v1, partData:[B
    goto :goto_5
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1146
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1147
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1148
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1149
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 864
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 865
    :cond_0
    const/4 v0, 0x0

    .line 866
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 867
    .local v1, temp:I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 883
    :goto_0
    return v2

    .line 871
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 872
    shl-int/lit8 v0, v0, 0x7

    .line 873
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 874
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 875
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 876
    goto :goto_0

    .line 880
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 881
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 883
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    .line 901
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 902
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 903
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 904
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 906
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    move v2, v0

    .line 909
    :goto_0
    return v2

    .line 908
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 909
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_0

    .line 912
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 970
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 988
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 991
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 992
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 993
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 996
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1011
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 997
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1000
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1003
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1221
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1222
    :cond_0
    new-array v0, p1, [B

    .line 1223
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1224
    .local v1, readLen:I
    if-ge v1, p1, :cond_1

    .line 1225
    const/4 v2, -0x1

    .line 1227
    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 109
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v12, :cond_0

    move-object v12, v14

    .line 190
    :goto_0
    return-object v12

    .line 114
    :cond_0
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 115
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v12, :cond_1

    move-object v12, v14

    .line 117
    goto :goto_0

    .line 121
    :cond_1
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 124
    .local v4, messageType:I
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 125
    const-string v12, "check mandatory headers failed!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v12, v14

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    const/16 v12, 0x80

    if-eq v12, v4, :cond_3

    const/16 v12, 0x84

    if-ne v12, v4, :cond_4

    .line 132
    :cond_3
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 133
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v12, :cond_4

    move-object v12, v14

    .line 135
    goto :goto_0

    .line 139
    :cond_4
    packed-switch v4, :pswitch_data_0

    .line 189
    const-string v12, "Parser doesn\'t support this message type in this version!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v12, v14

    .line 190
    goto :goto_0

    .line 141
    :pswitch_0
    new-instance v11, Lcom/google/android/mms/pdu/SendReq;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11, v12, v13}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v11, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v11

    .line 142
    goto :goto_0

    .line 144
    .end local v11           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v10, Lcom/google/android/mms/pdu/SendConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v12}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v10

    .line 145
    goto :goto_0

    .line 147
    .end local v10           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v5, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v12}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v5

    .line 149
    goto :goto_0

    .line 151
    .end local v5           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v6, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v6, v12}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v6, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v6

    .line 153
    goto :goto_0

    .line 155
    .end local v6           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v9, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9, v12, v13}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 158
    .local v9, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 159
    .local v1, contentType:[B
    if-nez v1, :cond_5

    move-object v12, v14

    .line 160
    goto :goto_0

    .line 162
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 163
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    move-object v12, v9

    .line 169
    goto/16 :goto_0

    :cond_7
    move-object v12, v14

    .line 171
    goto/16 :goto_0

    .line 173
    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local v9           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3, v12}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v3

    .line 175
    goto/16 :goto_0

    .line 177
    .end local v3           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v0

    .line 179
    goto/16 :goto_0

    .line 181
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v7, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v7, v12}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v7

    .line 183
    goto/16 :goto_0

    .line 185
    .end local v7           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v8, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v12}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v8

    .line 187
    goto/16 :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 32
    .parameter "pduDataStream"

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    const/16 v28, 0x0

    .line 723
    .end local p0
    :goto_0
    return-object v28

    .line 205
    .restart local p0
    :cond_0
    const/4 v13, 0x1

    .line 206
    .local v13, keepParsing:Z
    new-instance v12, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 208
    .end local p0
    .local v12, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_1
    :goto_1
    if-eqz v13, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v28

    if-lez v28, :cond_e

    .line 209
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 210
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 212
    .local v11, headerField:I
    const/16 v28, 0x20

    move v0, v11

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    const/16 v28, 0x7f

    move v0, v11

    move/from16 v1, v28

    if-gt v0, v1, :cond_2

    .line 213
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 214
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 219
    .local v5, bVal:[B
    goto :goto_1

    .line 221
    .end local v5           #bVal:[B
    :cond_2
    packed-switch v11, :pswitch_data_0

    .line 718
    :pswitch_0
    const-string v28, "Unknown header"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 225
    .local v17, messageType:I
    packed-switch v17, :pswitch_data_1

    .line 245
    :try_start_0
    move-object v0, v12

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 246
    :catch_0
    move-exception v7

    .line 247
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 249
    const/16 v28, 0x0

    goto :goto_0

    .line 242
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/16 v28, 0x0

    goto :goto_0

    .line 250
    :catch_1
    move-exception v7

    .line 251
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 252
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 285
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v17           #messageType:I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 288
    .local v25, value:I
    :try_start_1
    move-object v0, v12

    move/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 289
    :catch_2
    move-exception v7

    .line 290
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 292
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 293
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v7

    .line 294
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 295
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 306
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .line 307
    .local v25, value:J
    move-object v0, v12

    move-wide/from16 v1, v25

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 308
    .end local v25           #value:J
    :catch_4
    move-exception v28

    move-object/from16 v7, v28

    .line 309
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 310
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 321
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .line 322
    .restart local v25       #value:J
    move-object v0, v12

    move-wide/from16 v1, v25

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 323
    .end local v25           #value:J
    :catch_5
    move-exception v28

    move-object/from16 v7, v28

    .line 324
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 325
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 351
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v25

    .line 352
    .local v25, value:[B
    if-eqz v25, :cond_1

    .line 354
    :try_start_4
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 355
    :catch_6
    move-exception v7

    .line 356
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 357
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_7
    move-exception v7

    .line 358
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 359
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 375
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 377
    .local v25, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_1

    .line 379
    :try_start_5
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 380
    :catch_8
    move-exception v7

    .line 381
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 382
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v7

    .line 383
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 384
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 395
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 397
    .restart local v25       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_1

    .line 398
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 399
    .local v4, address:[B
    if-eqz v4, :cond_4

    .line 400
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 401
    .local v21, str:Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 402
    .local v8, endIndex:I
    if-lez v8, :cond_3

    .line 403
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 406
    :cond_3
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 414
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_4
    :try_start_7
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 415
    :catch_a
    move-exception v7

    .line 416
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v8       #endIndex:I
    .restart local v21       #str:Ljava/lang/String;
    :catch_b
    move-exception v28

    move-object/from16 v7, v28

    .line 408
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 409
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 417
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :catch_c
    move-exception v7

    .line 418
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 419
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 432
    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 435
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 440
    .local v24, token:I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v22

    .line 445
    .local v22, timeValue:J
    const/16 v28, 0x81

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    add-long v22, v22, v28

    .line 452
    :cond_5
    :try_start_9
    move-object v0, v12

    move-wide/from16 v1, v22

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 453
    :catch_d
    move-exception v7

    .line 454
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 455
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 441
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v22           #timeValue:J
    :catch_e
    move-exception v7

    .line 442
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 443
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 465
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v24           #token:I
    :pswitch_a
    const/4 v9, 0x0

    .line 466
    .local v9, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 469
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 472
    .local v10, fromToken:I
    const/16 v28, 0x80

    move/from16 v0, v28

    move v1, v10

    if-ne v0, v1, :cond_8

    .line 474
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 475
    if-eqz v9, :cond_7

    .line 476
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 477
    .restart local v4       #address:[B
    if-eqz v4, :cond_7

    .line 478
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 479
    .restart local v21       #str:Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 480
    .restart local v8       #endIndex:I
    if-lez v8, :cond_6

    .line 481
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 484
    :cond_6
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 502
    .end local v4           #address:[B
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_7
    :goto_2
    const/16 v28, 0x89

    :try_start_b
    move-object v0, v12

    move-object v1, v9

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 503
    :catch_f
    move-exception v7

    .line 504
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 485
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v4       #address:[B
    .restart local v8       #endIndex:I
    .restart local v21       #str:Ljava/lang/String;
    :catch_10
    move-exception v28

    move-object/from16 v7, v28

    .line 486
    .restart local v7       #e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 487
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 493
    .end local v4           #address:[B
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v8           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_8
    :try_start_c
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v28, "insert-address-token"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .line 495
    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_11
    move-exception v28

    move-object/from16 v7, v28

    .line 496
    .restart local v7       #e:Ljava/lang/NullPointerException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 497
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 505
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v7

    .line 506
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 507
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 514
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v9           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v10           #fromToken:I
    :pswitch_b
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 515
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .line 517
    .local v15, messageClass:I
    const/16 v28, 0x80

    move v0, v15

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    .line 520
    const/16 v28, 0x80

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_9

    .line 521
    :try_start_d
    const-string v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 537
    :catch_13
    move-exception v28

    move-object/from16 v7, v28

    .line 538
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 524
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_9
    const/16 v28, 0x81

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_a

    .line 525
    :try_start_e
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 539
    :catch_14
    move-exception v28

    move-object/from16 v7, v28

    .line 540
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 541
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 528
    .end local v7           #e:Ljava/lang/RuntimeException;
    :cond_a
    const/16 v28, 0x82

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_b

    .line 529
    :try_start_f
    const-string v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 532
    :cond_b
    const/16 v28, 0x83

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_1

    .line 533
    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    .line 545
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 546
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 547
    .local v16, messageClassString:[B
    if-eqz v16, :cond_1

    .line 549
    const/16 v28, 0x8a

    :try_start_10
    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    .line 550
    :catch_15
    move-exception v7

    .line 551
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 552
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_16
    move-exception v7

    .line 553
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 554
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 562
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v15           #messageClass:I
    .end local v16           #messageClassString:[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v27

    .line 565
    .local v27, version:I
    const/16 v28, 0x8d

    :try_start_11
    move-object v0, v12

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    .line 566
    :catch_17
    move-exception v7

    .line 567
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 569
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 570
    .end local v7           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v7

    .line 571
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 572
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 581
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v27           #version:I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 585
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 592
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 594
    .local v20, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_1

    .line 596
    const/16 v28, 0xa0

    :try_start_13
    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    .line 598
    :catch_19
    move-exception v7

    .line 599
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 586
    .end local v7           #e:Ljava/lang/NullPointerException;
    .end local v20           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1a
    move-exception v7

    .line 587
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 588
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 600
    .end local v7           #e:Ljava/lang/RuntimeException;
    .restart local v20       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v7

    .line 601
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 602
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 612
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v20           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 616
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 624
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .line 625
    .local v18, perviouslySentDate:J
    const/16 v28, 0xa1

    move-object v0, v12

    move-wide/from16 v1, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .line 627
    .end local v18           #perviouslySentDate:J
    :catch_1c
    move-exception v28

    move-object/from16 v7, v28

    .line 628
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 629
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 617
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v7

    .line 618
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 619
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 642
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 645
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 648
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 661
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 664
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 668
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    .line 669
    :catch_1e
    move-exception v7

    .line 670
    .restart local v7       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 671
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 680
    .end local v7           #e:Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 688
    :pswitch_12
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 690
    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 693
    .local v6, contentType:[B
    if-eqz v6, :cond_d

    .line 695
    const/16 v28, 0x84

    :try_start_17
    move-object v0, v12

    move-object v1, v6

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    .line 705
    :cond_d
    :goto_3
    const/16 v28, 0x99

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 708
    const/16 v28, 0x83

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 710
    const/4 v13, 0x0

    .line 711
    goto/16 :goto_1

    .line 696
    :catch_1f
    move-exception v7

    .line 697
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 698
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_20
    move-exception v7

    .line 699
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 700
    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v6           #contentType:[B
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local v11           #headerField:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_e
    move-object/from16 v28, v12

    .line 723
    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
