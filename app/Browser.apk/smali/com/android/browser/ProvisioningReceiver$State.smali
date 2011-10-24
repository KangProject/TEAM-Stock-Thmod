.class Lcom/android/browser/ProvisioningReceiver$State;
.super Ljava/lang/Object;
.source "ProvisioningReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ProvisioningReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field mContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;


# direct methods
.method private constructor <init>(Lcom/android/browser/ProvisioningReceiver$ParseContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/browser/ProvisioningReceiver$State;->mContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ProvisioningReceiver$ParseContext;Lcom/android/browser/ProvisioningReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/browser/ProvisioningReceiver$State;-><init>(Lcom/android/browser/ProvisioningReceiver$ParseContext;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/browser/ProvisioningReceiver$State;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-direct {p1}, Lcom/android/browser/ProvisioningReceiver$State;->getContext()Lcom/android/browser/ProvisioningReceiver$ParseContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/ProvisioningReceiver$State;->setContext(Lcom/android/browser/ProvisioningReceiver$ParseContext;)V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/browser/ProvisioningReceiver$State;-><init>(Lcom/android/browser/ProvisioningReceiver$State;)V

    return-void
.end method

.method private getContext()Lcom/android/browser/ProvisioningReceiver$ParseContext;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/browser/ProvisioningReceiver$State;->mContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;

    return-object v0
.end method

.method static initialState(Lcom/android/browser/ProvisioningReceiver$ParseContext;)Lcom/android/browser/ProvisioningReceiver$State;
    .locals 2
    .parameter "context"

    .prologue
    .line 183
    new-instance v0, Lcom/android/browser/ProvisioningReceiver$StateBegin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/ProvisioningReceiver$StateBegin;-><init>(Lcom/android/browser/ProvisioningReceiver$ParseContext;Lcom/android/browser/ProvisioningReceiver$1;)V

    return-object v0
.end method

.method private setContext(Lcom/android/browser/ProvisioningReceiver$ParseContext;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/browser/ProvisioningReceiver$State;->mContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;

    .line 175
    return-void
.end method


# virtual methods
.method eventEnd()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method eventStart()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method eventStartpage()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method eventURI(Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method
