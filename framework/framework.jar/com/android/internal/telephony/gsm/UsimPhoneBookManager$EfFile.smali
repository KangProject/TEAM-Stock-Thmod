.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EfFile"
.end annotation


# instance fields
.field private mEfId:I

.field private mEfType:I

.field private mFileType:I

.field private mNumberOfRecords:I

.field private mRecordSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "fileType"
    .parameter "efType"
    .parameter "efId"

    .prologue
    const/4 v0, 0x0

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    .line 708
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    .line 711
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mFileType:I

    .line 712
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    .line 713
    iput p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    .line 714
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 697
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    return v0
.end method

.method public static getRawEmptyRecord(II)[B
    .locals 3
    .parameter "recordLength"
    .parameter "efType"

    .prologue
    const/4 v2, 0x0

    .line 736
    new-array v0, p0, [B

    .line 738
    .local v0, emptyRecord:[B
    if-eqz v0, :cond_0

    .line 739
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 741
    const/16 v1, 0xc2

    if-ne p1, v1, :cond_0

    .line 744
    aput-byte v2, v0, v2

    .line 747
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getEfId()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    return v0
.end method

.method public getEfType()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mFileType:I

    return v0
.end method

.method public isRecordEmpty([B)Z
    .locals 8
    .parameter "record"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 757
    const/4 v1, 0x1

    .line 758
    .local v1, isEmpty:Z
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 759
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    const/16 v4, 0xc1

    if-ne v3, v4, :cond_2

    .line 761
    array-length v2, p1

    .line 762
    .local v2, recordLength:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 763
    aget-byte v3, p1, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 764
    const/4 v1, 0x0

    .line 776
    .end local v0           #index:I
    .end local v2           #recordLength:I
    :cond_0
    :goto_1
    return v1

    .line 762
    .restart local v0       #index:I
    .restart local v2       #recordLength:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    .end local v0           #index:I
    .end local v2           #recordLength:I
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    const/16 v4, 0xc2

    if-ne v3, v4, :cond_5

    .line 770
    aget-byte v3, p1, v5

    if-eq v3, v7, :cond_3

    aget-byte v3, p1, v5

    if-nez v3, :cond_4

    :cond_3
    move v1, v6

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2

    .line 773
    :cond_5
    aget-byte v3, p1, v5

    if-ne v3, v7, :cond_6

    move v1, v6

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v5

    goto :goto_3
.end method
