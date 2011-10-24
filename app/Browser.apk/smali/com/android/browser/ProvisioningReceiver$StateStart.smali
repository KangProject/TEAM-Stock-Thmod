.class Lcom/android/browser/ProvisioningReceiver$StateStart;
.super Lcom/android/browser/ProvisioningReceiver$State;
.source "ProvisioningReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ProvisioningReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateStart"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/browser/ProvisioningReceiver$State;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/ProvisioningReceiver$State;-><init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/browser/ProvisioningReceiver$StateStart;-><init>(Lcom/android/browser/ProvisioningReceiver$State;)V

    return-void
.end method


# virtual methods
.method eventStartpage()Z
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/browser/ProvisioningReceiver$StateStart;->mContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;

    new-instance v1, Lcom/android/browser/ProvisioningReceiver$StateStartpage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/ProvisioningReceiver$StateStartpage;-><init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V

    invoke-static {v0, v1}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$600(Lcom/android/browser/ProvisioningReceiver$ParseContext;Lcom/android/browser/ProvisioningReceiver$State;)V

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method eventURI(Ljava/lang/String;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/browser/ProvisioningReceiver$StateStart;->mContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;

    invoke-static {v0, p1}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$100(Lcom/android/browser/ProvisioningReceiver$ParseContext;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/browser/ProvisioningReceiver$StateStart;->mContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;

    new-instance v1, Lcom/android/browser/ProvisioningReceiver$StateURI;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/ProvisioningReceiver$StateURI;-><init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V

    invoke-static {v0, v1}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$600(Lcom/android/browser/ProvisioningReceiver$ParseContext;Lcom/android/browser/ProvisioningReceiver$State;)V

    .line 229
    const/4 v0, 0x1

    return v0
.end method
