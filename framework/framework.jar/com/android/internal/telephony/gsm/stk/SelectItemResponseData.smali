.class Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;->id:I

    .line 44
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 49
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 50
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;->id:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    return-void
.end method
