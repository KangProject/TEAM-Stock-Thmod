.class Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
.super Ljava/lang/Object;
.source "ComprehensionTlv.java"


# static fields
.field private static sPrevTag:I


# instance fields
.field private mCr:Z

.field private mLength:I

.field private mRawValue:[B

.field private mTag:I

.field private mValueIndex:I


# direct methods
.method protected constructor <init>(IZI[BI)V
    .locals 0
    .parameter "tag"
    .parameter "cr"
    .parameter "length"
    .parameter "data"
    .parameter "valueIndex"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mTag:I

    .line 56
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mCr:Z

    .line 57
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mLength:I

    .line 58
    iput p5, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mValueIndex:I

    .line 59
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mRawValue:[B

    .line 60
    return-void
.end method

.method public static decode([BI)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .locals 13
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 117
    move v5, p1

    .line 118
    .local v5, curIndex:I
    :try_start_0
    array-length v8, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .local v8, endIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #curIndex:I
    .local v6, curIndex:I
    :try_start_1
    aget-byte v0, p0, v5

    and-int/lit16 v9, v0, 0xff

    .line 124
    .local v9, temp:I
    sparse-switch v9, :sswitch_data_0

    .line 144
    move v1, v9

    .line 145
    .local v1, tag:I
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_3

    move v2, v11

    .line 146
    .local v2, cr:Z
    :goto_0
    and-int/lit16 v1, v1, -0x81

    .line 149
    :goto_1
    sput v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->sPrevTag:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    add-int/lit8 v5, v6, 0x1

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    :try_start_2
    aget-byte v0, p0, v6

    and-int/lit16 v9, v0, 0xff

    .line 154
    if-ge v9, v12, :cond_4

    .line 155
    move v3, v9

    .line 183
    .local v3, length:I
    :cond_0
    :goto_2
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;-><init>(IZI[BI)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    :goto_3
    return-object v0

    .line 128
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    :sswitch_0
    :try_start_3
    sget v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->sPrevTag:I

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->NEXT_ACTION_INDICATOR:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 129
    const/4 v0, 0x0

    move v5, v6

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    goto :goto_3

    .line 133
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    :cond_1
    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 185
    .end local v9           #temp:I
    :catch_0
    move-exception v0

    move-object v7, v0

    move v5, v6

    .line 186
    .end local v6           #curIndex:I
    .end local v8           #endIndex:I
    .restart local v5       #curIndex:I
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 136
    .end local v5           #curIndex:I
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #curIndex:I
    .restart local v8       #endIndex:I
    .restart local v9       #temp:I
    :sswitch_2
    :try_start_4
    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v6, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v1, v0, v4

    .line 138
    .restart local v1       #tag:I
    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move v2, v11

    .line 139
    .restart local v2       #cr:Z
    :goto_5
    const v0, -0x8001

    and-int/2addr v1, v0

    .line 140
    add-int/lit8 v5, v6, 0x2

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    move v6, v5

    .line 141
    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    goto :goto_1

    .end local v2           #cr:Z
    :cond_2
    move v2, v10

    .line 138
    goto :goto_5

    :cond_3
    move v2, v10

    .line 145
    goto :goto_0

    .line 156
    .end local v6           #curIndex:I
    .restart local v2       #cr:Z
    .restart local v5       #curIndex:I
    :cond_4
    const/16 v0, 0x81

    if-ne v9, v0, :cond_5

    .line 157
    add-int/lit8 v6, v5, 0x1

    .end local v5           #curIndex:I
    .restart local v6       #curIndex:I
    aget-byte v0, p0, v5

    and-int/lit16 v3, v0, 0xff

    .line 158
    .restart local v3       #length:I
    if-ge v3, v12, :cond_8

    .line 159
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 162
    .end local v3           #length:I
    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    :cond_5
    const/16 v0, 0x82

    if-ne v9, v0, :cond_6

    .line 163
    :try_start_5
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 165
    .restart local v3       #length:I
    add-int/lit8 v5, v5, 0x2

    .line 166
    const/16 v0, 0x100

    if-ge v3, v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 185
    .end local v1           #tag:I
    .end local v2           #cr:Z
    .end local v3           #length:I
    .end local v8           #endIndex:I
    .end local v9           #temp:I
    :catch_1
    move-exception v0

    move-object v7, v0

    goto :goto_4

    .line 170
    .restart local v1       #tag:I
    .restart local v2       #cr:Z
    .restart local v8       #endIndex:I
    .restart local v9       #temp:I
    :cond_6
    const/16 v0, 0x83

    if-ne v9, v0, :cond_7

    .line 171
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v3, v0, v4

    .line 174
    .restart local v3       #length:I
    add-int/lit8 v5, v5, 0x3

    .line 175
    const/high16 v0, 0x1

    if-ge v3, v0, :cond_0

    .line 176
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 180
    .end local v3           #length:I
    :cond_7
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v5           #curIndex:I
    .restart local v3       #length:I
    .restart local v6       #curIndex:I
    :cond_8
    move v5, v6

    .end local v6           #curIndex:I
    .restart local v5       #curIndex:I
    goto/16 :goto_2

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7f -> :sswitch_2
        0x80 -> :sswitch_1
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeMany([BI)Ljava/util/List;
    .locals 5
    .parameter "data"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    array-length v1, p0

    .line 94
    .local v1, endIndex:I
    :goto_0
    if-ge p1, v1, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->decode([BI)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 96
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-nez v0, :cond_1

    .line 103
    .end local v0           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_0
    return-object v2

    .line 99
    .restart local v0       #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget v3, v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mValueIndex:I

    iget v4, v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mLength:I

    add-int p1, v3, v4

    .line 101
    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mLength:I

    return v0
.end method

.method public getRawValue()[B
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mRawValue:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mTag:I

    return v0
.end method

.method public getValueIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mValueIndex:I

    return v0
.end method

.method public isComprehensionRequired()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->mCr:Z

    return v0
.end method
