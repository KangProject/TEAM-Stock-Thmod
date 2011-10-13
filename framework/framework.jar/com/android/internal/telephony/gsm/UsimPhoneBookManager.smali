.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_EF_FILE_LOAD_DONE:I = 0x8

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x6

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_RECORD_DONE:I = 0x7

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEfFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 2
    .parameter "phone"
    .parameter "cache"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 68
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 107
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 108
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method private addAnrToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V
    .locals 5
    .parameter
    .parameter "anrIndex"
    .parameter
    .parameter "adnIndex"
    .parameter "ext1EfId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .local p3, adnContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 639
    .local v0, adnContact:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 642
    .local v2, anrRecord:[B
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 643
    const/4 v4, 0x0

    aget-byte v4, v2, v4

    and-int/lit16 v3, v4, 0xff

    .line 645
    .local v3, anrUsed:I
    const/16 v4, 0xff

    if-eq v3, v4, :cond_1

    .line 646
    new-instance v1, Lcom/android/internal/telephony/AnrRecord;

    add-int/lit8 v4, p4, 0x1

    invoke-direct {v1, v2, v4, p5}, Lcom/android/internal/telephony/AnrRecord;-><init>([BII)V

    .line 648
    .local v1, anr:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v1}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readExt1RecordAndWait(Lcom/android/internal/telephony/AnrRecord;)V

    .line 652
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/AnrRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/AdnRecord;->addAnr(Ljava/lang/String;)V

    .line 655
    .end local v1           #anr:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #anrUsed:I
    :cond_1
    return-void
.end method

.method private addEmailToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "emailIndex"
    .parameter
    .parameter "adnIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p1, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .local p3, adnContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 670
    .local v0, adnContact:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 673
    .local v2, emailRecord:[B
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 674
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord([B)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, email:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 676
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->addEmail(Ljava/lang/String;)V

    .line 679
    .end local v1           #email:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 245
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V
    .locals 17
    .parameter "pbrRecord"
    .parameter "efType"

    .prologue
    .line 847
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 848
    .local v11, efFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    const/4 v6, 0x0

    .line 850
    .local v6, pin2:Ljava/lang/String;
    const/4 v12, 0x0

    .line 852
    .local v12, fileRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-eqz v11, :cond_3

    .line 854
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local p1
    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 855
    .local v8, currentEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting in file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getRawFile(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Ljava/util/ArrayList;

    move-result-object v12

    .line 860
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 862
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 863
    .local v16, recordLength:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 864
    .local v14, numberOfRecords:I
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfType()I

    move-result v2

    move/from16 v0, v16

    move v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getRawEmptyRecord(II)[B

    move-result-object v5

    .line 867
    .local v5, emptyRecord:[B
    if-eqz v5, :cond_0

    .line 869
    const/4 v9, 0x0

    .line 870
    .local v9, currentRecord:[B
    const/4 v15, 0x0

    .local v15, recordIndex:I
    :goto_1
    if-ge v15, v14, :cond_0

    .line 871
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #currentRecord:[B
    check-cast v9, [B

    .line 872
    .restart local v9       #currentRecord:[B
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->isRecordEmpty([B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v3

    add-int/lit8 v4, v15, 0x1

    const/4 v7, 0x7

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 880
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 881
    :catch_0
    move-exception v2

    move-object v10, v2

    .line 882
    .local v10, e:Ljava/lang/InterruptedException;
    const-string v2, "GSM"

    const-string v3, "Interrupted Exception in deleteSimPhonebook: updating"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 888
    .end local v5           #emptyRecord:[B
    .end local v9           #currentRecord:[B
    .end local v10           #e:Ljava/lang/InterruptedException;
    .end local v14           #numberOfRecords:I
    .end local v15           #recordIndex:I
    .end local v16           #recordLength:I
    :cond_2
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Could not read EF file for delete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 892
    .end local v8           #currentEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private getRawFile(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Ljava/util/ArrayList;
    .locals 4
    .parameter "efFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 903
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfFileRecord:Ljava/util/ArrayList;

    .line 904
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v2

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 907
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfFileRecord:Ljava/util/ArrayList;

    return-object v1

    .line 908
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 909
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in getRawFile"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 427
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method

.method private processType1AnrFile(Ljava/util/ArrayList;I)V
    .locals 7
    .parameter
    .parameter "ext1EfId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 617
    .local v6, numAdnRecs:I
    if-eqz p1, :cond_0

    .line 619
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 620
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addAnrToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private processType2AnrFile(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 11
    .parameter
    .parameter "anrEfFile"
    .parameter "ext1EfId"
    .parameter "pbrRecord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            "I",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/16 v10, 0xff

    .line 582
    invoke-virtual {p4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getIAPIndex(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v7

    .line 584
    .local v7, iapIndex:I
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eq v7, v10, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 586
    .local v9, numIapRecs:I
    const/4 v8, 0x0

    .line 589
    .local v8, iapRecord:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #iapRecord:[B
    check-cast v8, [B

    .line 593
    .restart local v8       #iapRecord:[B
    array-length v0, v8

    if-ge v7, v0, :cond_0

    .line 594
    aget-byte v0, v8, v7

    and-int/lit16 v6, v0, 0xff

    .line 597
    .local v6, anrIndex:I
    if-eq v6, v10, :cond_0

    if-eqz v6, :cond_0

    .line 598
    const/4 v0, 0x1

    sub-int v2, v6, v0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addAnrToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;II)V

    .line 589
    .end local v6           #anrIndex:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 604
    .end local v4           #i:I
    .end local v8           #iapRecord:[B
    .end local v9           #numIapRecs:I
    :cond_1
    return-void
.end method

.method private processType2EmailFile(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 8
    .parameter
    .parameter "emailEfFile"
    .parameter "pbrRecord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/16 v7, 0xff

    .line 497
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getIAPIndex(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I

    move-result v2

    .line 499
    .local v2, iapIndex:I
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    if-eq v2, v7, :cond_1

    .line 500
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 501
    .local v4, numIapRecs:I
    const/4 v3, 0x0

    .line 504
    .local v3, iapRecord:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 505
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #iapRecord:[B
    check-cast v3, [B

    .line 508
    .restart local v3       #iapRecord:[B
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 509
    aget-byte v5, v3, v2

    and-int/lit16 v0, v5, 0xff

    .line 512
    .local v0, emailIndex:I
    if-eq v0, v7, :cond_0

    if-eqz v0, :cond_0

    .line 513
    const/4 v5, 0x1

    sub-int v5, v0, v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v6, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addEmailToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    .line 504
    .end local v0           #emailIndex:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v1           #i:I
    .end local v3           #iapRecord:[B
    .end local v4           #numIapRecs:I
    :cond_1
    return-void
.end method

.method private readAdnFileAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 9
    .parameter "pbrRecord"

    .prologue
    const/4 v7, 0x0

    const-string v8, "GSM"

    .line 218
    const/16 v5, 0xa8

    const/16 v6, 0xc0

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    .local v1, adnFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    const/16 v5, 0xaa

    const/16 v6, 0xc2

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 222
    .local v4, ext1Files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 223
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v0

    .line 224
    .local v0, adnEfId:I
    const/4 v3, 0x0

    .line 227
    .local v3, ext1EfId:I
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 228
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v3

    .line 230
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v0, v3, v6}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 233
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0           #adnEfId:I
    .end local v3           #ext1EfId:I
    :goto_0
    return-void

    .line 234
    .restart local v0       #adnEfId:I
    .restart local v3       #ext1EfId:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 235
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v5, "GSM"

    const-string v5, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v0           #adnEfId:I
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #ext1EfId:I
    :cond_1
    const-string v5, "GSM"

    const-string v5, "ADN file not found on usim."

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAnrFilesAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 11
    .parameter "pbrRecord"

    .prologue
    const/4 v9, 0x0

    const-string v10, "GSM"

    .line 528
    const/16 v6, 0xc4

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 529
    .local v1, anrFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    const/16 v6, 0xaa

    const/16 v7, 0xc2

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 530
    .local v4, ext1Files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    const/4 v3, 0x0

    .line 532
    .local v3, ext1EfId:I
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 533
    if-eqz v1, :cond_4

    .line 535
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 536
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v3

    .line 541
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 544
    .local v0, anrEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    iput-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 545
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 548
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 555
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v6

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_2

    .line 556
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->processType1AnrFile(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 549
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 550
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "GSM"

    const-string v6, "Interrupted Exception in readAnrFilesAndWait"

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 557
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v6

    const/16 v7, 0xa9

    if-ne v6, v7, :cond_1

    .line 558
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->processType2AnrFile(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    goto :goto_0

    .line 561
    :cond_3
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Could not read ANR file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    .end local v0           #anrEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private readEmailFilesAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 9
    .parameter "pbrRecord"

    .prologue
    const/4 v7, 0x0

    const-string v8, "GSM"

    .line 460
    const/16 v4, 0xca

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getAllFilesOfEfType(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 462
    .local v2, emailFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 463
    if-eqz v2, :cond_3

    .line 467
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    .line 470
    .local v1, emailEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 471
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 474
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 481
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v4

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_1

    .line 482
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->processType1EmailFile(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 475
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 476
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "GSM"

    const-string v4, "Interrupted Exception in readEmailFilesAndWait"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 483
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getFileType()I

    move-result v4

    const/16 v5, 0xa9

    if-ne v4, v5, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->processType2EmailFile(Ljava/util/ArrayList;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    goto :goto_0

    .line 487
    :cond_2
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Could not read EMAIL file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    .end local v1           #emailEfFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 7
    .parameter "recNum"

    .prologue
    .line 202
    const/4 v3, 0x0

    .line 204
    .local v3, emailRec:[B
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/4 v4, 0x0

    array-length v5, v3

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .local v2, email:Ljava/lang/String;
    move-object v4, v2

    .line 210
    .end local v2           #email:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 205
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 206
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static readEmailRecord([B)Ljava/lang/String;
    .locals 3
    .parameter "record"

    .prologue
    .line 214
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readExt1RecordAndWait(Lcom/android/internal/telephony/AnrRecord;)V
    .locals 5
    .parameter "anr"

    .prologue
    .line 688
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AnrRecord;->getExt1EfId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/AnrRecord;->getExt1RecordIndex()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 691
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 693
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readFilesForPbrRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 1
    .parameter "pbrRecord"

    .prologue
    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 438
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 452
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFilesAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 455
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFilesAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 457
    :cond_0
    return-void
.end method

.method private readIapFileAndWait(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V
    .locals 6
    .parameter "pbrRecord"

    .prologue
    const-string v5, "GSM"

    .line 167
    const/16 v3, 0xa9

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->filesExist(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const/16 v3, 0xa8

    const/16 v4, 0xc1

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 171
    .local v2, iapFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 172
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v1

    .line 174
    .local v1, iapEfId:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1           #iapEfId:I
    .end local v2           #iapFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v1       #iapEfId:I
    .restart local v2       #iapFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 179
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v3, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #iapEfId:I
    :cond_1
    const-string v3, "GSM"

    const-string v3, "Type2 files exist but IAP not found on usim."

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public deleteSimPhonebook()V
    .locals 8

    .prologue
    .line 915
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 916
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v6, :cond_1

    .line 918
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 919
    .local v2, numRecs:I
    const/4 v3, 0x0

    .local v3, pbrIndex:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 920
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start delete PBR#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 921
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getRecord(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v4

    .line 923
    .local v4, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    const-string v6, "Start delete ANR"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 924
    const/16 v6, 0xc4

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    .line 926
    const-string v6, "Start delete EMAIL"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 927
    const/16 v6, 0xca

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    .line 929
    const-string v6, "Start delete EXT1"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 930
    const/16 v6, 0xc2

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    .line 932
    const-string v6, "Start delete IAP"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 933
    const/16 v6, 0xc1

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->deleteAllRecordsInEfFiles(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)V

    .line 919
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 936
    .end local v4           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 937
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 938
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 939
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->deleteAllAnr()V

    .line 940
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->deleteAllEmail()V

    .line 941
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->deleteExt1()V

    goto :goto_1

    .line 944
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v2           #numRecs:I
    .end local v3           #pbrIndex:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    return-void
.end method

.method public getExt1EfId(I)I
    .locals 10
    .parameter "efId"

    .prologue
    const/4 v9, 0x0

    .line 809
    const/4 v2, -0x1

    .line 810
    .local v2, ext1EfId:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v7, :cond_0

    .line 812
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 814
    .local v5, numRecs:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 815
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getRecord(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v6

    .line 817
    .local v6, pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    const/16 v7, 0xa8

    const/16 v8, 0xc0

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 818
    .local v1, adnFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 819
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v0

    .line 821
    .local v0, adnEfId:I
    if-ne v0, p1, :cond_2

    .line 823
    const/16 v7, 0xaa

    const/16 v8, 0xc2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->getFiles(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 825
    .local v3, ext1Files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 826
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->getEfId()I

    move-result v2

    .line 836
    .end local v0           #adnEfId:I
    .end local v1           #adnFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    .end local v3           #ext1Files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    .end local v4           #i:I
    .end local v5           #numRecs:I
    .end local v6           #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    :cond_0
    :goto_1
    return v2

    .line 829
    .restart local v0       #adnEfId:I
    .restart local v1       #adnFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    .restart local v3       #ext1Files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    .restart local v4       #i:I
    .restart local v5       #numRecs:I
    .restart local v6       #pbrRecord:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
    .restart local p0
    :cond_1
    const v2, 0xffff

    .line 831
    goto :goto_1

    .line 814
    .end local v0           #adnEfId:I
    .end local v3           #ext1Files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getRecordAt(I)Lcom/android/internal/telephony/AdnRecord;
    .locals 1
    .parameter "i"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/AdnRecord;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 256
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 259
    .local v2, ar:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 260
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 264
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 267
    .end local v2           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    const-string v3, "Loading USIM ADN records done"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 268
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 269
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 270
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 273
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 274
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 277
    .end local v2           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v3, "Loading USIM IAP records done"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 278
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 279
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 280
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 282
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 283
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 284
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v4

    .line 287
    .end local v2           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v3, "Loading USIM Email records done"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 288
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 289
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    .line 290
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 293
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 294
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 295
    monitor-exit v3

    goto :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v4

    .line 298
    .end local v2           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v3, "Loading USIM ANR records done"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 299
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 300
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 301
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 304
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 305
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 306
    monitor-exit v3

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v4

    .line 309
    .end local v2           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v3, "Loading USIM EXT1 record done"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 310
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 311
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AnrRecord;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    move-object v1, v0

    .line 312
    .local v1, anr:Lcom/android/internal/telephony/AnrRecord;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 313
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/AnrRecord;->appendExtRecord([B)V

    .line 316
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 317
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 318
    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v4

    .line 321
    .end local v1           #anr:Lcom/android/internal/telephony/AnrRecord;
    .end local v2           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 322
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 323
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEfFileRecord:Ljava/util/ArrayList;

    .line 325
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 326
    :try_start_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 327
    monitor-exit v3

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v4

    .line 330
    .end local v2           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 331
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 332
    const-string v3, "UsimPhonebookManager: FAILED to update record"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 334
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 335
    :try_start_7
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 336
    monitor-exit v3

    goto/16 :goto_0

    :catchall_7
    move-exception v4

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v4

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v2

    move-object v2, v3

    .line 147
    :goto_0
    return-object v2

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v2

    move-object v2, v4

    goto :goto_0

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_3

    monitor-exit v2

    move-object v2, v4

    goto :goto_0

    .line 132
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 133
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->getRecord(I)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readFilesForPbrRecord(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)V

    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 142
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0

    .line 146
    .end local v0           #i:I
    .end local v1           #numRecs:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method processType1EmailFile(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 193
    .local v1, numAdnRecs:I
    if-eqz p1, :cond_0

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addEmailToAdnRecord(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 113
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 114
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 115
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 117
    return-void
.end method

.method public setRecordAt(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 1
    .parameter "i"
    .parameter "adn"

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 788
    return-void
.end method
