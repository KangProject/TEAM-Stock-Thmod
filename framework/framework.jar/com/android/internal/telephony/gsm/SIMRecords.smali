.class public final Lcom/android/internal/telephony/gsm/SIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SIMRecords$1;,
        Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field static final CSP_TAG:Ljava/lang/String; = "CSP SIM Records"

.field private static final DBG:Z = true

.field static final EONS_ALG:I = 0x1

.field static EONS_DISABLED:I = 0x0

.field static final EONS_TAG:Ljava/lang/String; = "EONS"

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x12c

.field private static final EVENT_GET_ACTINGHPLMN_DONE:I = 0x24

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_OPL_RECORDS_DONE:I = 0x21

.field private static final EVENT_GET_ALL_PNN_RECORDS_DONE:I = 0x23

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x22

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String; = null

.field private static NOT_INITIALIZED:I = 0x0

.field private static ONLY_PNN_ENABLED:I = 0x0

.field private static PNN_OPL_ENABLED:I = 0x0

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field public static final UNKNOWN_VOICE_MESSAGE_COUNT:I = 0xff


# instance fields
.field actingHplmn:Ljava/lang/String;

.field callForwardingEnabled:Z

.field private cspCphsInfo:[B

.field cspPlmn:I

.field efCPHS_MWI:[B

.field efMWIS:[B

.field errorReadingOPL:Z

.field imsi:Ljava/lang/String;

.field private mCphsInfo:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

.field oplCache:Ljava/util/ArrayList;

.field oplDataLac1:I

.field oplDataLac2:I

.field oplDataPnnNum:S

.field oplDataPresent:Z

.field pnnCache:Ljava/util/ArrayList;

.field pnnDataLongName:Ljava/lang/String;

.field pnnDataPresent:Z

.field pnnDataShortName:Ljava/lang/String;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

.field sstPlmnOplValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    sput v2, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    .line 181
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NOT_INITIALIZED:I

    .line 182
    sput v3, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    .line 183
    sput v4, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    .line 187
    const/16 v0, 0x6b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "405025"

    aput-object v1, v0, v2

    const-string v1, "405026"

    aput-object v1, v0, v3

    const-string v1, "405027"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405932"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 100
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 101
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    .line 102
    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 114
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->actingHplmn:Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 211
    new-instance v0, Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    .line 212
    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    .line 214
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 217
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 219
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->errorReadingOPL:Z

    .line 221
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 225
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V

    .line 230
    return-void
.end method

.method private displayEonsName(I)V
    .locals 14
    .parameter "flag"

    .prologue
    .line 1884
    const/4 v2, 0x0

    .line 1886
    .local v2, count:I
    const/4 v6, 0x0

    .line 1887
    .local v6, ind:I
    const/4 v11, 0x6

    new-array v10, v11, [I

    fill-array-data v10, :array_0

    .line 1888
    .local v10, simPlmn:[I
    const/4 v11, 0x6

    new-array v0, v11, [I

    fill-array-data v0, :array_1

    .line 1889
    .local v0, bcchPlmn:[I
    const/4 v1, 0x0

    .line 1892
    .local v1, bcchPlmnLength:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    if-nez v11, :cond_2

    .line 1895
    const-string v11, "EONS"

    const-string v12, "oplCache is null."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->errorReadingOPL:Z

    if-eqz v11, :cond_1

    .line 1897
    iget v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v12, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    if-ne v11, v12, :cond_0

    .line 1898
    const-string v11, "EONS"

    const-string v12, "Disabling OPL"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    sget v11, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    iput v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 1901
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPnnFirstRecord(I)V

    .line 2004
    :cond_1
    :goto_0
    return-void

    .line 1905
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1906
    const/4 v11, 0x1

    if-ne p1, v11, :cond_4

    .line 1907
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 1913
    .local v9, regOperator:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 1914
    :cond_3
    const-string v11, "EONS"

    const-string v12, "Registered operator is null or empty."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->useMEName()V

    goto :goto_0

    .line 1909
    .end local v9           #regOperator:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v11, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #regOperator:Ljava/lang/String;
    goto :goto_1

    .line 1919
    :cond_5
    const-string v11, "EONS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Number of OPL records = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 1921
    const/4 v5, -0x1

    .line 1922
    .local v5, hLac:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v8

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    .line 1923
    .local v8, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    .line 1924
    :cond_6
    const/4 v11, -0x1

    if-ne v5, v11, :cond_7

    .line 1925
    const-string v11, "EONS"

    const-string v12, "Registered Lac is -1."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1930
    :cond_7
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_9

    .line 1931
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    .line 1934
    .local v3, data:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-byte v12, v3, v12

    and-int/lit8 v12, v12, 0xf

    aput v12, v10, v11

    .line 1935
    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-byte v12, v3, v12

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    aput v12, v10, v11

    .line 1936
    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-byte v12, v3, v12

    and-int/lit8 v12, v12, 0xf

    aput v12, v10, v11

    .line 1937
    const/4 v11, 0x3

    const/4 v12, 0x2

    aget-byte v12, v3, v12

    and-int/lit8 v12, v12, 0xf

    aput v12, v10, v11

    .line 1938
    const/4 v11, 0x4

    const/4 v12, 0x2

    aget-byte v12, v3, v12

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    aput v12, v10, v11

    .line 1939
    const/4 v11, 0x5

    const/4 v12, 0x1

    aget-byte v12, v3, v12

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    aput v12, v10, v11

    .line 1942
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    .line 1943
    const/4 v7, 0x0

    .local v7, ind1:I
    :goto_3
    if-ge v7, v1, :cond_8

    .line 1944
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    sub-int/2addr v11, v12

    aput v11, v0, v7

    .line 1943
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1948
    :cond_8
    const/4 v11, 0x3

    aget-byte v11, v3, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    const/4 v12, 0x4

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iput v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    .line 1949
    const/4 v11, 0x5

    aget-byte v11, v3, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    const/4 v12, 0x6

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iput v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    .line 1950
    const/4 v11, 0x7

    aget-byte v11, v3, v11

    and-int/lit16 v11, v11, 0xff

    int-to-short v11, v11

    iput-short v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    .line 1951
    const-string v11, "EONS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lac1="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " lac2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hLac="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pnn rec="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-short v13, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-virtual {p0, v10, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->matchSimPlmn([I[II)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1956
    iget v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    if-gt v11, v5, :cond_b

    iget v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    if-gt v5, v11, :cond_b

    .line 1957
    iget-short v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    if-lez v11, :cond_a

    iget-short v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    const/16 v12, 0xff

    if-ge v11, v12, :cond_a

    .line 1960
    const-string v11, "EONS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " lac1="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " lac2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hLac="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pnn rec="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-short v13, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-short v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPnnNum:S

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/SIMRecords;->getNameFromPnnRecord(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1989
    .end local v3           #data:[B
    .end local v7           #ind1:I
    :cond_9
    :goto_4
    if-lt v6, v2, :cond_1

    .line 1993
    const-string v11, "EONS"

    const-string v12, "No matching OPL record found, checking HPLMN"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const-string v11, "config_use_firstPnnRecord"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1997
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 1998
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPnnFirstRecord(I)V

    goto/16 :goto_0

    .line 1965
    .restart local v3       #data:[B
    .restart local v7       #ind1:I
    :cond_a
    const/4 v11, 0x0

    :try_start_1
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 1966
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 1967
    const-string v11, "LOG_TAG"

    const-string v12, "PNN record number in EF_OPL is not valid"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1985
    .end local v3           #data:[B
    .end local v7           #ind1:I
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 1986
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "EONS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while processing OPL data "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1972
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #data:[B
    .restart local v7       #ind1:I
    :cond_b
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 1973
    const-string v11, "EONS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HLAC is not with in range of EF_OPL\'s LACs,ignoring pnn data, hLac="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " lac1="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " lac2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataLac2:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1978
    :cond_c
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 1979
    const-string v11, "EONS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plmn in EF_OPL doesnot match reg plmn,ignoring pnn data sim plmn "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x5

    aget v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",bcch plmn "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x5

    aget v13, v0, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 2001
    .end local v3           #data:[B
    .end local v7           #ind1:I
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPnnFirstRecord(I)V

    goto/16 :goto_0

    .line 1887
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1888
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private fetchSimRecords()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1422
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 1423
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 1425
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 1428
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1430
    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1431
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1435
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1437
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1440
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1441
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1443
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1444
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1447
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1448
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1455
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1458
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1462
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1463
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1464
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1465
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1468
    const/4 v1, 0x0

    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 1470
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1471
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1473
    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1475
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1478
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1479
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1482
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateOplCache()V

    .line 1485
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updatePnnCache()V

    .line 1487
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1488
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1490
    const/16 v1, 0x4f34

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1491
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1493
    const/16 v1, 0x6f15

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1495
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1515
    return-void
.end method

.method private getEonsNameFromPnn(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "plmn"

    .prologue
    .line 2155
    const/4 v12, 0x0

    .line 2156
    .local v12, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2157
    .local v6, count:I
    const/4 v10, 0x0

    .line 2158
    .local v10, ind:I
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v15, v0

    fill-array-data v15, :array_0

    .line 2159
    .local v15, simPlmn:[I
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v4, v0

    fill-array-data v4, :array_1

    .line 2160
    .local v4, bcchPlmn:[I
    const/4 v5, 0x0

    .line 2161
    .local v5, bcchPlmnLength:I
    const/4 v14, 0x0

    .line 2162
    .local v14, recNum:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 2163
    const-string v16, "EONS"

    const-string v17, "getEonsNameFromPnn() oplCache is null."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 2207
    .end local v12           #name:Ljava/lang/String;
    .end local p0
    .local v13, name:Ljava/lang/String;
    :goto_0
    return-object v13

    .line 2166
    .end local v13           #name:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    .restart local p0
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2167
    const-string v16, "EONS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getEonsNameFromPnn() Number of OPL records = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_3

    .line 2170
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    .line 2172
    .local v7, data:[B
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-byte v17, v7, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 2173
    const/16 v16, 0x1

    const/16 v17, 0x0

    aget-byte v17, v7, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 2174
    const/16 v16, 0x2

    const/16 v17, 0x1

    aget-byte v17, v7, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 2175
    const/16 v16, 0x3

    const/16 v17, 0x2

    aget-byte v17, v7, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 2176
    const/16 v16, 0x4

    const/16 v17, 0x2

    aget-byte v17, v7, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 2177
    const/16 v16, 0x5

    const/16 v17, 0x1

    aget-byte v17, v7, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    .line 2179
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 2180
    const/4 v11, 0x0

    .local v11, ind1:I
    :goto_2
    if-ge v11, v5, :cond_1

    .line 2181
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x30

    sub-int v16, v16, v17

    aput v16, v4, v11

    .line 2180
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2184
    :cond_1
    const/16 v16, 0x7

    aget-byte v16, v7, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move v14, v0

    .line 2185
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->matchSimPlmn([I[II)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move v0, v14

    move/from16 v1, v16

    if-gt v0, v1, :cond_2

    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 2187
    :cond_2
    const-string v16, "EONS"

    const-string v17, "getEonsNameFromPnn(), pnnCache is null/Invalid PNN Rec"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    .end local v7           #data:[B
    .end local v11           #ind1:I
    .end local p0
    :cond_3
    :goto_3
    if-lt v10, v6, :cond_4

    .line 2200
    const-string v16, "EONS"

    const-string v17, "getEonsNameFromPnn(),No matching OPL record found"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/4 v12, 0x0

    :cond_4
    :goto_4
    move-object v13, v12

    .line 2207
    .end local v12           #name:Ljava/lang/String;
    .restart local v13       #name:Ljava/lang/String;
    goto/16 :goto_0

    .line 2189
    .end local v13           #name:Ljava/lang/String;
    .restart local v7       #data:[B
    .restart local v11       #ind1:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local p0
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    sub-int v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object/from16 v0, p0

    check-cast v0, [B

    move-object v8, v0

    .line 2190
    .local v8, data1:[B
    const/16 v16, 0x0

    aget-byte v16, v8, v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v16, 0x1

    aget-byte v16, v8, v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 2191
    const/16 v16, 0x2

    const/16 v17, 0x1

    aget-byte v17, v8, v17

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v12

    .line 2192
    const-string v16, "EONS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getEonsNameFromPnn() Long Name: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2203
    .end local v7           #data:[B
    .end local v8           #data1:[B
    .end local v11           #ind1:I
    :catch_0
    move-exception v16

    move-object/from16 v9, v16

    .line 2204
    .local v9, e:Ljava/lang/Exception;
    const-string v16, "EONS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getEonsNameFromPnn(),Exception while processing OPL data "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/4 v12, 0x0

    goto :goto_4

    .line 2169
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #data:[B
    .restart local v11       #ind1:I
    .restart local p0
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2158
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 2159
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 13
    .parameter "start"
    .parameter "ar"

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xc

    const-string v11, "gsm.sim.operator.alpha"

    .line 1610
    if-eqz p1, :cond_2

    .line 1611
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v7, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-ne v6, v7, :cond_1

    .line 1612
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 1622
    :cond_0
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$gsm$SIMRecords$Get_Spn_Fsm_State:[I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1720
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 1722
    :goto_1
    return-void

    .line 1614
    :cond_1
    const-string v6, "Another Spn read request."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1615
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->PENDING:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_1

    .line 1618
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    sget-object v7, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->PENDING:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    if-ne v6, v7, :cond_0

    .line 1619
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 1624
    :pswitch_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1626
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v6

    const/16 v7, 0x6f46

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1628
    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1630
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto :goto_1

    .line 1633
    :pswitch_1
    if-eqz p2, :cond_5

    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    .line 1634
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 1635
    .local v1, data:[B
    aget-byte v6, v1, v9

    and-int/lit16 v6, v6, 0xff

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1636
    array-length v6, v1

    sub-int/2addr v6, v10

    invoke-static {v1, v10, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 1637
    .local v4, spnTmp:Ljava/lang/String;
    const-string v6, "ro.semc.use_cphs_if_spn_empty"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1639
    .local v5, useCphsIfSpnEmpty:Z
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-eqz v5, :cond_4

    .line 1640
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v6

    const/16 v7, 0x6f14

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1642
    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1644
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 1645
    iput v12, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto :goto_1

    .line 1647
    :cond_4
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load EF_SPN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " spnDisplayCondition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1651
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v7, "gsm.sim.operator.alpha"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v6, v11, v7}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1

    .line 1656
    .end local v1           #data:[B
    .end local v4           #spnTmp:Ljava/lang/String;
    .end local v5           #useCphsIfSpnEmpty:Z
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v6

    const/16 v7, 0x6f14

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1658
    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1660
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    .line 1664
    iput v12, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    goto/16 :goto_1

    .line 1668
    :pswitch_2
    if-eqz p2, :cond_8

    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 1669
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 1670
    .restart local v1       #data:[B
    array-length v6, v1

    invoke-static {v1, v9, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1672
    .local v2, spnCphsTmp:Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 1673
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v6

    const/16 v7, 0x6f18

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1675
    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1677
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1

    .line 1679
    :cond_7
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1680
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load EF_SPN_CPHS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " spnDisplayCondition forced to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1684
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v7, "gsm.sim.operator.alpha"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v6, v11, v7}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1

    .line 1689
    .end local v1           #data:[B
    .end local v2           #spnCphsTmp:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v6

    const/16 v7, 0x6f18

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1691
    iget v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1693
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1

    .line 1697
    :pswitch_3
    if-eqz p2, :cond_b

    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_b

    .line 1698
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 1699
    .restart local v1       #data:[B
    array-length v6, v1

    invoke-static {v1, v9, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 1702
    .local v3, spnShortCphsTmp:Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    .line 1703
    :cond_9
    const-string v6, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1704
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1717
    .end local v1           #data:[B
    .end local v3           #spnShortCphsTmp:Ljava/lang/String;
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnState:Lcom/android/internal/telephony/gsm/SIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_1

    .line 1706
    .restart local v1       #data:[B
    .restart local v3       #spnShortCphsTmp:Ljava/lang/String;
    :cond_a
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1707
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 1709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " spnDisplayCondition forced to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1711
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v7, "gsm.sim.operator.alpha"

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v6, v11, v7}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1714
    .end local v1           #data:[B
    .end local v3           #spnShortCphsTmp:Ljava/lang/String;
    :cond_b
    const-string v6, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    const/4 v4, 0x1

    const-string v1, "EONS"

    .line 1209
    sparse-switch p1, :sswitch_data_0

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1264
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1267
    :goto_0
    return-void

    .line 1211
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1212
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1216
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1217
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1221
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOnsAlg()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1223
    const-string v0, "EONS"

    const-string v0, "SIM Refresh called for EF_OPL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updateOplCache()V

    goto :goto_0

    .line 1226
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_0

    .line 1230
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOnsAlg()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1232
    const-string v0, "EONS"

    const-string v0, "SIM Refresh called for EF_PNN"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->updatePnnCache()V

    goto :goto_0

    .line 1235
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_0

    .line 1241
    :sswitch_4
    const-string v0, "CSP SIM Records"

    const-string v1, "SIM Refresh called for EF_CSP_CPHS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f15

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1244
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0

    .line 1247
    :sswitch_5
    const-string v0, "EONS"

    const-string v0, "SIM Refresh called for EF_SST"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1250
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 1254
    :sswitch_6
    const-string v0, "EONS"

    const-string v0, "SIM Refresh called for EF_ACTING_HPLMN"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x4f34

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1257
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto/16 :goto_0

    .line 1209
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f34 -> :sswitch_6
        0x6f15 -> :sswitch_4
        0x6f17 -> :sswitch_1
        0x6f38 -> :sswitch_5
        0x6fc5 -> :sswitch_3
        0x6fc6 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimRefresh([I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1270
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1271
    :cond_0
    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1298
    :goto_0
    return-void

    .line 1275
    :cond_1
    const/4 v1, 0x0

    aget v1, p1, v1

    packed-switch v1, :pswitch_data_0

    .line 1295
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :pswitch_0
    const-string v1, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1279
    const/4 v1, 0x1

    aget v0, p1, v1

    .line 1280
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 1283
    .end local v0           #efid:I
    :pswitch_1
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1285
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1286
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    goto :goto_0

    .line 1289
    :pswitch_2
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1290
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1291
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onIccRefreshReset()V

    goto :goto_0

    .line 1275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms([B)V
    .locals 8
    .parameter "ba"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1301
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 1302
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1307
    array-length v1, p1

    .line 1311
    .local v1, n:I
    sub-int v3, v1, v7

    new-array v2, v3, [B

    .line 1312
    .local v2, pdu:[B
    sub-int v3, v1, v7

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1313
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 1315
    .local v0, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 1317
    .end local v0           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 12
    .parameter "messages"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1321
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1323
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1324
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 1326
    .local v1, ba:[B
    aget-byte v7, v1, v10

    if-eqz v7, :cond_0

    .line 1327
    const-string v7, "ENF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v1, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    aget-byte v7, v1, v10

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 1333
    array-length v5, v1

    .line 1337
    .local v5, n:I
    sub-int v7, v5, v11

    new-array v6, v7, [B

    .line 1338
    .local v6, pdu:[B
    sub-int v7, v5, v11

    invoke-static {v1, v11, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1339
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v4

    .line 1341
    .local v4, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 1346
    aput-byte v11, v1, v10

    .line 1323
    .end local v4           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v5           #n:I
    .end local v6           #pdu:[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1354
    .end local v1           #ba:[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    if-nez v0, :cond_0

    move v0, v2

    .line 1812
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1567
    if-nez p1, :cond_0

    move v2, v3

    .line 1580
    :goto_0
    return v2

    .line 1569
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->plmnMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 1570
    goto :goto_0

    .line 1573
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1574
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1575
    .local v1, spdiNet:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->plmnMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 1576
    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #spdiNet:Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 1580
    goto :goto_0
.end method

.method private onSimReady()V
    .locals 3

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 1419
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 1773
    new-instance v3, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v3, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1775
    .local v3, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v2, 0x0

    .line 1777
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1779
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0xa3

    if-ne v5, v6, :cond_0

    .line 1780
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v4, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .end local v3           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .local v4, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v3, v4

    .line 1783
    .end local v4           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v3       #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_3

    .line 1784
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 1789
    :cond_1
    if-nez v2, :cond_4

    .line 1805
    :cond_2
    return-void

    .line 1777
    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 1793
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 1795
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v5, v0, 0x2

    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 1797
    const/4 v5, 0x3

    invoke-static {v2, v0, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 1800
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 1801
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1802
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private plmnMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "plmn1"
    .parameter "plmn2"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const-string v5, "0"

    .line 1552
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1553
    .local v0, len1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1554
    .local v1, len2:I
    if-ne v0, v3, :cond_0

    if-ne v1, v4, :cond_0

    .line 1555
    const-string v2, "0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1557
    :cond_0
    if-ne v1, v3, :cond_1

    if-ne v0, v4, :cond_1

    .line 1558
    const-string v2, "0"

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1560
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private processEFCspData()V
    .locals 8

    .prologue
    const-string v7, "CSP SIM Records"

    .line 1824
    const/4 v0, 0x0

    .line 1830
    .local v0, i:I
    const/16 v2, 0xd

    .line 1835
    .local v2, used_csp_groups:I
    const/16 v3, -0x40

    .line 1836
    .local v3, value_added_services_group:B
    const/16 v4, 0x12c

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1838
    .local v1, msg:Landroid/os/Message;
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 1839
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    mul-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    if-ne v4, v3, :cond_1

    .line 1840
    const-string v4, "CSP SIM Records"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sevice group 0xC0,value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    if-gez v4, :cond_0

    .line 1848
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 1859
    :goto_1
    return-void

    .line 1850
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    .line 1853
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_1

    .line 1838
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1858
    :cond_2
    const-string v4, "CSP SIM Records"

    const-string v4, "sevice group 0xC0,Not founf in EF CSP"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    .line 1400
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .parameter "spn"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1407
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/gsm/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1409
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccRefresh(Landroid/os/Handler;)V

    .line 237
    return-void
.end method

.method fetchPnnFirstRecord(I)V
    .locals 6
    .parameter "flag"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "EONS"

    .line 2007
    if-ne p1, v4, :cond_0

    .line 2008
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2011
    .local v0, regOperator:Ljava/lang/String;
    :goto_0
    const-string v1, "EONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparing hplmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with reg plmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 2015
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2017
    const-string v1, "EONS"

    const-string v1, "Fetching EF_PNN\'s first record"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getNameFromPnnRecord(I)V

    .line 2023
    .end local p0
    :goto_1
    return-void

    .line 2010
    .end local v0           #regOperator:Ljava/lang/String;
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #regOperator:Ljava/lang/String;
    goto :goto_0

    .line 2020
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 2021
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "GSM"

    const-string v1, "SIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public getCspPlmn()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspPlmn:I

    return v0
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1528
    :cond_0
    const/4 v0, 0x2

    .line 1542
    .local v0, rule:I
    :cond_1
    :goto_0
    return v0

    .line 1529
    .end local v0           #rule:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1530
    const/4 v0, 0x1

    .line 1531
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1533
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1536
    .end local v0           #rule:I
    :cond_3
    const/4 v0, 0x2

    .line 1537
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1539
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getEonsAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, avlNetworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    const-string v10, "EONS"

    .line 2132
    const/4 v6, 0x0

    .line 2133
    .local v6, eonsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOnsAlg()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_1

    .line 2134
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2135
    .local v9, size:I
    const/4 v1, 0x0

    .line 2137
    .local v1, pnnName:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #eonsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2138
    .restart local v6       #eonsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    const-string v0, "EONS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available Networks List Size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 2140
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/NetworkInfo;

    .line 2141
    .local v8, ni:Lcom/android/internal/telephony/gsm/NetworkInfo;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEonsNameFromPnn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2142
    const-string v0, "EONS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLMN="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ME Name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " PNN Name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    if-nez v1, :cond_0

    .line 2145
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 2147
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getRAT()Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;Lcom/android/internal/telephony/gsm/NetworkInfo$RAT;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2139
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2151
    .end local v1           #pnnName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #ni:Lcom/android/internal/telephony/gsm/NetworkInfo;
    .end local v9           #size:I
    :cond_1
    return-object v6
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method getNameFromPnnRecord(I)V
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x1

    const-string v7, "EONS"

    .line 2087
    const/4 v3, 0x0

    .line 2088
    .local v3, length:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p1, v4, :cond_0

    if-ge p1, v6, :cond_1

    .line 2091
    :cond_0
    const-string v4, "EONS"

    const-string v4, "pnnCache is null/Invalid PNN Rec, using default method"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->useMEName()V

    .line 2129
    .end local p0
    :goto_0
    return-void

    .line 2095
    .restart local p0
    :cond_1
    const-string v4, "EONS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of PNN records = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    sub-int v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 2099
    .local v1, data:[B
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN record number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hex data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 2105
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    if-eq v4, v8, :cond_3

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    if-eq v4, v8, :cond_3

    .line 2107
    const/4 v4, 0x1

    aget-byte v3, v1, v4

    .line 2108
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN longname length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    const/4 v4, 0x2

    invoke-static {v1, v4, v3}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataLongName:Ljava/lang/String;

    .line 2110
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN longname : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataLongName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v1, v4

    if-eq v4, v8, :cond_2

    add-int/lit8 v4, v3, 0x3

    aget-byte v4, v1, v4

    if-eq v4, v8, :cond_2

    .line 2112
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN shortname length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v1, v5

    invoke-static {v1, v4, v5}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataShortName:Ljava/lang/String;

    .line 2115
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN shortname : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataShortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    .end local v1           #data:[B
    :goto_1
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 2118
    .restart local v1       #data:[B
    .restart local p0
    :cond_2
    :try_start_1
    const-string v4, "EONS"

    const-string v5, "EF_PNN: No short Name"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2125
    .end local v1           #data:[B
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2126
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EONS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while processing PNN data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2122
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #data:[B
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 2123
    const-string v4, "EONS"

    const-string v5, "EF_PNN: Invalid EF_PNN Data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method getOnsAlg()I
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->NOT_INITIALIZED:I

    if-ne v0, v1, :cond_1

    .line 340
    :cond_0
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    .line 343
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getPnnLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataLongName:Ljava/lang/String;

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    if-nez v0, :cond_1

    .line 570
    :cond_0
    const/4 v0, 0x0

    .line 575
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSstPlmnOplValue()I
    .locals 1

    .prologue
    .line 2211
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 585
    const/16 v20, 0x0

    .line 587
    .local v20, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    .line 1202
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v20, :cond_1

    .line 1203
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 1206
    :cond_1
    return-void

    .line 589
    .restart local p1
    :pswitch_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1197
    .end local p1
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .line 1199
    .local v16, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "GSM"

    const-string v5, "Exception parsing SIM record"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1202
    if-eqz v20, :cond_1

    goto :goto_1

    .line 593
    .end local v16           #exc:Ljava/lang/RuntimeException;
    .restart local p1
    :pswitch_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1202
    .end local p1
    :catchall_0
    move-exception v4

    if-eqz v20, :cond_2

    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    .line 1202
    :cond_2
    throw v4

    .line 598
    .restart local p1
    :pswitch_3
    const/16 v20, 0x1

    .line 600
    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 602
    .local v12, ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 603
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    :cond_3
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_5

    .line 612
    :cond_4
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    .line 616
    :cond_5
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "xxxxxxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_7

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 621
    .local v25, mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v13, arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v24, v13, v17

    .line 622
    .local v24, mccmnc:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 623
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 629
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v4, :cond_8

    .line 633
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 634
    .local v23, mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 641
    .end local v23           #mcc:I
    :cond_8
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 645
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    move-object v4, v0

    const-string v5, "IMSI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 621
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v22       #len$:I
    .restart local v24       #mccmnc:Ljava/lang/String;
    .restart local v25       #mccmncCode:Ljava/lang/String;
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 635
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v15, v4

    .line 636
    .local v15, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 637
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 651
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local p1
    :pswitch_4
    const/16 v20, 0x1

    .line 653
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 654
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 656
    .local v14, data:[B
    const/16 v21, 0x0

    .line 657
    .local v21, isValidMbdn:Z
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_b

    .line 659
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v4, 0x0

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v4, v0

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v4, v0

    const/16 v5, 0xff

    if-eq v4, v5, :cond_b

    .line 667
    const-string v4, "GSM"

    const-string v5, "Got valid mailbox number for MBDN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/16 v21, 0x1

    .line 673
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 675
    if-eqz v21, :cond_c

    .line 677
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6fc7

    const/16 v6, 0x6fc8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    move v7, v0

    const/4 v8, 0x6

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 682
    :cond_c
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 690
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v21           #isValidMbdn:Z
    .restart local p1
    :pswitch_5
    const/16 v20, 0x1

    .line 692
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 694
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e

    .line 696
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    const/16 v7, 0xb

    if-ne v6, v7, :cond_d

    const-string v6, "[MAILBOX]"

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 707
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 696
    :cond_d
    const-string v6, "[MBDN]"

    goto :goto_4

    .line 714
    :cond_e
    iget-object v5, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .line 716
    .local v5, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0xb

    if-ne v7, v8, :cond_f

    const-string v7, " EF[MAILBOX]"

    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    const/4 v6, 0x6

    if-ne v4, v6, :cond_10

    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 724
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v4, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v5, 0x6f17

    const/16 v6, 0x6f4a

    const/4 v7, 0x1

    const/16 v8, 0xb

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 716
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_f
    const-string v7, " EF[MBDN]"

    goto :goto_5

    .line 731
    :cond_10
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 732
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 736
    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const/16 v20, 0x1

    .line 738
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 740
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_11

    .line 741
    const-string v4, "GSM"

    const-string v5, "Invalid or missing EF[MSISDN]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 745
    :cond_11
    iget-object v5, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .line 747
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 748
    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 750
    const-string v4, "GSM"

    const-string v5, "MSISDN: xxxxxxx"

    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const/16 v20, 0x0

    .line 755
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 757
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 758
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 760
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 765
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_8
    const/16 v20, 0x1

    .line 767
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 768
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 770
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 774
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 779
    const/4 v4, 0x0

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_12

    .line 780
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Uninitialized record MWIS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 785
    :cond_12
    const/4 v4, 0x0

    aget-byte v4, v14, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    move/from16 v28, v4

    .line 786
    .local v28, voiceMailWaiting:Z
    :goto_6
    const/4 v4, 0x1

    aget-byte v4, v14, v4

    and-int/lit16 v4, v4, 0xff

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 788
    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    move v4, v0

    const/16 v5, 0xff

    if-ne v4, v5, :cond_13

    .line 790
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 793
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .line 785
    .end local v28           #voiceMailWaiting:Z
    :cond_14
    const/4 v4, 0x0

    move/from16 v28, v4

    goto :goto_6

    .line 797
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_9
    const/16 v20, 0x1

    .line 799
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 800
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 802
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 806
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    move-object v4, v0

    if-nez v4, :cond_0

    .line 812
    const/4 v4, 0x0

    aget-byte v4, v14, v4

    and-int/lit8 v19, v4, 0xf

    .line 815
    .local v19, indicator:I
    const/16 v4, 0xa

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_16

    .line 817
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 822
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto/16 :goto_0

    .line 818
    :cond_16
    const/4 v4, 0x5

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_15

    .line 819
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    goto :goto_7

    .line 827
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v19           #indicator:I
    .restart local p1
    :pswitch_a
    const/16 v20, 0x1

    .line 829
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 830
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 832
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 836
    const/4 v4, 0x0

    array-length v5, v14

    invoke-static {v14, v4, v5}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 838
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 845
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_b
    const/16 v20, 0x1

    .line 847
    :try_start_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 848
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 850
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_1b

    .line 873
    :try_start_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_18

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 876
    .restart local v25       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    .restart local v22       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_18

    aget-object v24, v13, v17

    .line 877
    .restart local v24       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 878
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 884
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    .line 885
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v4, :cond_40

    .line 887
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 889
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 901
    .end local v23           #mcc:I
    :cond_1a
    :goto_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_0

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 854
    :cond_1b
    :try_start_b
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    array-length v4, v14

    const/4 v5, 0x3

    if-ge v4, v5, :cond_20

    .line 858
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt AD data on SIM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 873
    :try_start_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_1d

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 876
    .restart local v25       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    .restart local v22       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_1d

    aget-object v24, v13, v17

    .line 877
    .restart local v24       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 878
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 884
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    .line 885
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v4, :cond_42

    .line 887
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 889
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 901
    .end local v23           #mcc:I
    :cond_1f
    :goto_b
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_0

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 862
    :cond_20
    :try_start_f
    array-length v4, v14

    const/4 v5, 0x3

    if-ne v4, v5, :cond_25

    .line 863
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 873
    :try_start_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_22

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 876
    .restart local v25       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    .restart local v22       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_c
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_22

    aget-object v24, v13, v17

    .line 877
    .restart local v24       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 878
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 884
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 885
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v4, :cond_44

    .line 887
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 889
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 901
    .end local v23           #mcc:I
    :cond_24
    :goto_d
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_0

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_0

    .line 867
    :cond_25
    const/4 v4, 0x3

    :try_start_13
    aget-byte v4, v14, v4

    and-int/lit8 v4, v4, 0xf

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 869
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/16 v5, 0xf

    if-ne v4, v5, :cond_26

    .line 870
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 873
    :cond_26
    :try_start_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_28

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 876
    .restart local v25       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    .restart local v22       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_e
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_28

    aget-object v24, v13, v17

    .line 877
    .restart local v24       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 878
    const/4 v4, 0x3

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 884
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2a

    .line 885
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v4, :cond_46

    .line 887
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 889
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .line 901
    .end local v23           #mcc:I
    :cond_2a
    :goto_f
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v4, v0

    if-eqz v4, :cond_0

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v7, v0

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 873
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_2c

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 876
    .restart local v25       #mccmncCode:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/gsm/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13       #arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    .restart local v22       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_10
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_2c

    aget-object v24, v13, v17

    .line 877
    .restart local v24       #mccmnc:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 878
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 884
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2e

    .line 885
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v5, :cond_3e

    .line 887
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 889
    .restart local v23       #mcc:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 901
    .end local v23           #mcc:I
    :cond_2e
    :goto_11
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v5, v0

    if-eqz v5, :cond_2f

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    move v8, v0

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 873
    :cond_2f
    throw v4

    .line 910
    .restart local p1
    :pswitch_c
    const/16 v20, 0x1

    .line 911
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 912
    .restart local v12       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 916
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    const/16 v20, 0x1

    .line 918
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 919
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 921
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 925
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    move-object v4, v0

    if-nez v4, :cond_0

    .line 930
    const/4 v4, 0x0

    aget-byte v4, v14, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0xa

    if-ne v4, v5, :cond_30

    const/4 v4, 0x1

    :goto_12
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 930
    :cond_30
    const/4 v4, 0x0

    goto :goto_12

    .line 938
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_e
    const/16 v20, 0x1

    .line 940
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 941
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 943
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 947
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_0

    .line 951
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 952
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 953
    const-string v4, "GSM"

    const-string v5, "SIMRecords update failed"

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 958
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const/16 v20, 0x1

    .line 960
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 961
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 963
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 967
    new-instance v27, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v14

    move-object/from16 v0, v27

    move-object v1, v14

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 969
    .local v27, tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_13
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 970
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_31

    .line 971
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_0

    .line 969
    :cond_31
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_13

    .line 980
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .end local v27           #tlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local p1
    :pswitch_11
    const/16 v20, 0x1

    .line 981
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 982
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 984
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 987
    const/4 v4, 0x3

    new-array v11, v4, [B

    fill-array-data v11, :array_0

    .line 988
    .local v11, actingHplmndata:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v14, v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xf0

    const/4 v6, 0x0

    aget-byte v6, v14, v6

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v11, v4

    .line 989
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-byte v5, v14, v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xf0

    const/4 v6, 0x2

    aget-byte v6, v14, v6

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v11, v4

    .line 990
    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xf0

    const/4 v6, 0x1

    aget-byte v6, v14, v6

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v11, v4

    .line 992
    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->actingHplmn:Ljava/lang/String;

    goto/16 :goto_0

    .line 996
    .end local v11           #actingHplmndata:[B
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_12
    const/16 v20, 0x1

    .line 998
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 999
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1002
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1006
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_13
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "marked read: sms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1011
    :pswitch_14
    const/16 v20, 0x0

    .line 1013
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1015
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 1017
    .local v18, index:[I
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_32

    move-object/from16 v0, v18

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    .line 1018
    :cond_32
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1021
    :cond_33
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v18, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    const/16 v5, 0x6f3c

    const/4 v6, 0x0

    aget v6, v18, v6

    const/16 v7, 0x16

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1028
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v18           #index:[I
    .restart local p1
    :pswitch_15
    const/16 v20, 0x0

    .line 1029
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1030
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_34

    .line 1031
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSms([B)V

    goto/16 :goto_0

    .line 1033
    .restart local p1
    :cond_34
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1038
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_16
    sget v4, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 1039
    const/16 v20, 0x1

    .line 1041
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1042
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 1044
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1048
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSstData([B)V

    goto/16 :goto_0

    .line 1053
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_17
    const/16 v20, 0x1

    .line 1055
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1057
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1061
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iCPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->mCphsInfo:[B

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1067
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_18
    const-string v4, "CSP SIM Records"

    const-string v5, "Got Response for GET CSP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/16 v20, 0x1

    .line 1070
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1072
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_35

    .line 1073
    const-string v4, "CSP SIM Records"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1077
    :cond_35
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    .line 1079
    const-string v4, "CSP SIM Records"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->cspCphsInfo:[B

    move-object v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->processEFCspData()V

    goto/16 :goto_0

    .line 1084
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_19
    const/16 v20, 0x0

    .line 1085
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1087
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_36

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1092
    :cond_36
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1093
    new-instance v5, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v5, v4, v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .restart local v5       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Message;

    .line 1103
    .local v26, onCphsCompleted:Landroid/os/Message;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_37

    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_37

    .line 1104
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    const/4 v6, 0x0

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1106
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    .line 1108
    const-string v4, "Callback with MBDN successful."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1110
    const/16 v26, 0x0

    .line 1113
    :cond_37
    new-instance v4, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v6, v0

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x19

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1118
    .end local v5           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v26           #onCphsCompleted:Landroid/os/Message;
    .restart local p1
    :cond_38
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1119
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1121
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1126
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_1a
    const/16 v20, 0x0

    .line 1127
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1128
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_39

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailTag:Ljava/lang/String;

    .line 1135
    :goto_14
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1136
    const-string v4, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1137
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    invoke-static/range {p1 .. p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1139
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Landroid/os/Message;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1132
    .restart local p1
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set CPHS MailBox with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_14

    .line 1143
    .end local v12           #ar:Landroid/os/AsyncResult;
    :pswitch_1b
    const/16 v20, 0x0

    .line 1144
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1145
    .restart local v12       #ar:Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sim REFRESH with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 1146
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1147
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_0

    .line 1151
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_1c
    const/16 v20, 0x1

    .line 1153
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1154
    .restart local v12       #ar:Landroid/os/AsyncResult;
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v14, v0

    .line 1156
    .restart local v14       #data:[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1160
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    .line 1166
    const/4 v4, 0x1

    aget-byte v4, v14, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3a

    const/4 v4, 0x1

    :goto_15
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 1166
    :cond_3a
    const/4 v4, 0x0

    goto :goto_15

    .line 1172
    .end local v12           #ar:Landroid/os/AsyncResult;
    .end local v14           #data:[B
    .restart local p1
    :pswitch_1d
    const/16 v20, 0x1

    .line 1173
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1174
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3b

    .line 1175
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching OPL Records "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    .line 1177
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->errorReadingOPL:Z

    goto/16 :goto_0

    .line 1180
    :cond_3b
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    .line 1181
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->errorReadingOPL:Z

    .line 1182
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->displayEonsName(I)V

    goto/16 :goto_0

    .line 1186
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local p1
    :pswitch_1e
    const/16 v20, 0x1

    .line 1187
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/AsyncResult;

    .line 1188
    .restart local v12       #ar:Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3c

    .line 1189
    const-string v4, "EONS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching PNN Records "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1193
    :cond_3c
    move-object v0, v12

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    .line 1194
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->displayEonsName(I)V

    goto/16 :goto_0

    .line 876
    .end local v12           #ar:Landroid/os/AsyncResult;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v22       #len$:I
    .restart local v24       #mccmnc:Ljava/lang/String;
    .restart local v25       #mccmncCode:Ljava/lang/String;
    :cond_3d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_10

    .line 896
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_3e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 898
    const-string v5, "GSM"

    const-string v6, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 890
    :catch_2
    move-exception v5

    move-object v15, v5

    .line 891
    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 892
    const-string v5, "GSM"

    const-string v6, "SIMRecords: Corrupt IMSI!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 876
    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v12       #ar:Landroid/os/AsyncResult;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v14       #data:[B
    .restart local v17       #i$:I
    .restart local v22       #len$:I
    .restart local v24       #mccmnc:Ljava/lang/String;
    .restart local v25       #mccmncCode:Ljava/lang/String;
    :cond_3f
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 896
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_40
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 898
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 890
    :catch_3
    move-exception v4

    move-object v15, v4

    .line 891
    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 892
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 876
    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v22       #len$:I
    .restart local v24       #mccmnc:Ljava/lang/String;
    .restart local v25       #mccmncCode:Ljava/lang/String;
    :cond_41
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    .line 896
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_42
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 898
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 890
    :catch_4
    move-exception v4

    move-object v15, v4

    .line 891
    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 892
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 876
    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v22       #len$:I
    .restart local v24       #mccmnc:Ljava/lang/String;
    .restart local v25       #mccmncCode:Ljava/lang/String;
    :cond_43
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_c

    .line 896
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_44
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 898
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 890
    :catch_5
    move-exception v4

    move-object v15, v4

    .line 891
    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 892
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 876
    .end local v15           #e:Ljava/lang/NumberFormatException;
    .restart local v13       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v22       #len$:I
    .restart local v24       #mccmnc:Ljava/lang/String;
    .restart local v25       #mccmncCode:Ljava/lang/String;
    :cond_45
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_e

    .line 896
    .end local v13           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v22           #len$:I
    .end local v24           #mccmnc:Ljava/lang/String;
    .end local v25           #mccmncCode:Ljava/lang/String;
    :cond_46
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 898
    const-string v4, "GSM"

    const-string v5, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 890
    :catch_6
    move-exception v4

    move-object v15, v4

    .line 891
    .restart local v15       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 892
    const-string v4, "GSM"

    const-string v5, "SIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_f

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_16
        :pswitch_12
        :pswitch_13
        :pswitch_19
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_d
        :pswitch_1a
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_18
        :pswitch_1e
        :pswitch_11
    .end packed-switch

    .line 987
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method handleSstData([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const-string v5, "EONS"

    .line 2027
    :try_start_0
    const-string v2, "ril.icctype"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2029
    .local v1, iccType:I
    const-string v2, "EONS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: ril.icctype value:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    if-ne v1, v6, :cond_3

    .line 2035
    const/16 v2, 0xc

    aget-byte v2, p1, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2036
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 2037
    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2038
    const-string v2, "EONS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: 2G Sim,PNN and OPL services enabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v3, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    if-ne v2, v3, :cond_0

    .line 2069
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 2074
    .end local v1           #iccType:I
    :cond_0
    :goto_1
    return-void

    .line 2039
    .restart local v1       #iccType:I
    .restart local p0
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    if-ne v2, v7, :cond_2

    .line 2040
    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2041
    const-string v2, "EONS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: 2G Sim,PNN enabled, OPL disabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2071
    .end local v1           #iccType:I
    .end local p0
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2072
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EONS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in processing SST Data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2043
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #iccType:I
    .restart local p0
    :cond_2
    :try_start_1
    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2044
    const-string v2, "EONS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: 2G Sim,PNN disabled, disabling EONS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2046
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 2051
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2052
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    if-ne v2, v7, :cond_4

    .line 2053
    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2054
    const-string v2, "EONS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: 3G Sim,PNN and OPL services enabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2055
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    if-ne v2, v6, :cond_5

    .line 2056
    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2057
    const-string v2, "EONS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: 3G Sim,PNN enabled, OPL disabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2059
    :cond_5
    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2060
    const-string v2, "EONS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SST: 3G Sim,PNN disabled, disabling EONS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2063
    :cond_6
    sget v2, Lcom/android/internal/telephony/gsm/SIMRecords;->EONS_DISABLED:I

    iput v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 2064
    const-string v2, "EONS"

    const-string v3, "SST: Unhandled ICC type, disabling EONS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public isCallForwardStatusStored()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnMatchingActingHPlmn(Ljava/lang/String;)Z
    .locals 4
    .parameter "hplmn"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 2215
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->actingHplmn:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 2218
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->actingHplmn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1816
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    return-void
.end method

.method matchSimPlmn([I[II)Z
    .locals 10
    .parameter "simPlmn"
    .parameter "bcchPlmn"
    .parameter "length"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 1732
    const/16 v2, 0xd

    .line 1733
    .local v2, wildCardDigit:I
    const/4 v1, 0x0

    .line 1736
    .local v1, match:Z
    aget v3, p1, v6

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 1737
    aput v5, p1, v6

    .line 1742
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 1743
    aget v3, p1, v0

    if-ne v3, v2, :cond_1

    .line 1744
    aget v3, p2, v0

    aput v3, p1, v0

    .line 1742
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1749
    :cond_2
    aget v3, p1, v5

    aget v4, p2, v5

    if-ne v3, v4, :cond_3

    aget v3, p1, v7

    aget v4, p2, v7

    if-ne v3, v4, :cond_3

    aget v3, p1, v8

    aget v4, p2, v8

    if-ne v3, v4, :cond_3

    aget v3, p1, v9

    aget v4, p2, v9

    if-ne v3, v4, :cond_3

    const/4 v3, 0x4

    aget v3, p1, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    if-ne v3, v4, :cond_3

    .line 1754
    const/4 v3, 0x6

    if-ne p3, v3, :cond_5

    .line 1757
    aget v3, p1, v6

    aget v4, p2, v6

    if-ne v3, v4, :cond_4

    move v1, v7

    .line 1763
    :cond_3
    :goto_1
    return v1

    :cond_4
    move v1, v5

    .line 1757
    goto :goto_1

    .line 1760
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected onAllRecordsLoaded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1369
    const-string v1, "GSM"

    const-string v2, "SIMRecords: record load complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1375
    .local v0, operator:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.numeric"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.iso-country"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 1386
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 1388
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1390
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    const-string v2, "LOADED"

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    return-void

    .line 1382
    .restart local p0
    :cond_0
    const-string v1, "SIM"

    const-string v2, "[SIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 244
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->voiceMailNum:Ljava/lang/String;

    .line 245
    iput v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 246
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mncLength:I

    .line 247
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    .line 249
    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spnDisplayCondition:I

    .line 250
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    .line 251
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    .line 252
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 253
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 254
    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->NOT_INITIALIZED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    .line 255
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplCache:Ljava/util/ArrayList;

    .line 256
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnCache:Ljava/util/ArrayList;

    .line 257
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->errorReadingOPL:Z

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.numeric"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.operator.iso-country"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "ril.icctype"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    .line 270
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1359
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1360
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_1

    .line 1361
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onAllRecordsLoaded()V

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 1363
    const-string v0, "GSM"

    const-string v1, "SIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchSimRecords()V

    .line 563
    :cond_0
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 302
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "xxxxxxx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 308
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 312
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 507
    if-eq p1, v0, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->callForwardingEnabled:Z

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 516
    if-eqz p2, :cond_3

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 525
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 531
    if-eqz p2, :cond_4

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 539
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 544
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 519
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 395
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 398
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 424
    :goto_0
    return-void

    .line 402
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 405
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 409
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 420
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 422
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 440
    if-eq p1, v5, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    if-ltz p2, :cond_2

    const/16 v0, 0xff

    if-lt p2, v0, :cond_3

    .line 449
    :cond_2
    const/4 p2, -0x1

    .line 452
    :cond_3
    iput p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    if-eqz v0, :cond_4

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xfe

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v3, :cond_5

    move v3, v4

    :goto_1
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 465
    if-gez p2, :cond_6

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 473
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    iget v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->countVoiceMessages:I

    if-nez v3, :cond_7

    const/4 v3, 0x5

    :goto_3
    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 488
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "GSM"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    move v3, v5

    .line 461
    goto :goto_1

    .line 470
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 480
    :cond_7
    const/16 v3, 0xa

    goto :goto_3
.end method

.method updateEonsRecords(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 352
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->PNN_OPL_ENABLED:I

    if-ne v0, v1, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->displayEonsName(I)V

    .line 362
    :goto_0
    return-void

    .line 357
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    sget v1, Lcom/android/internal/telephony/gsm/SIMRecords;->ONLY_PNN_ENABLED:I

    if-ne v0, v1, :cond_1

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->fetchPnnFirstRecord(I)V

    goto :goto_0

    .line 360
    :cond_1
    const-string v0, "EONS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sstPlmnOplValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateOplCache()V
    .locals 3

    .prologue
    .line 1865
    const-string v0, "EONS"

    const-string v1, "Updating OPL Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc6

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1868
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1869
    return-void
.end method

.method updatePnnCache()V
    .locals 3

    .prologue
    .line 1875
    const-string v0, "EONS"

    const-string v1, "Updating PNN Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc5

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1878
    iget v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->recordsToLoad:I

    .line 1879
    return-void
.end method

.method useMEName()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2077
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->oplDataPresent:Z

    .line 2078
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->pnnDataPresent:Z

    .line 2079
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 2080
    return-void
.end method
