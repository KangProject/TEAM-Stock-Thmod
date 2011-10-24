.class Lcom/android/browser/ProvisioningReceiver$StateBegin;
.super Lcom/android/browser/ProvisioningReceiver$State;
.source "ProvisioningReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ProvisioningReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateBegin"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/browser/ProvisioningReceiver$ParseContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/ProvisioningReceiver$State;-><init>(Lcom/android/browser/ProvisioningReceiver$ParseContext;Lcom/android/browser/ProvisioningReceiver$1;)V

    .line 204
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ProvisioningReceiver$ParseContext;Lcom/android/browser/ProvisioningReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/browser/ProvisioningReceiver$StateBegin;-><init>(Lcom/android/browser/ProvisioningReceiver$ParseContext;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/browser/ProvisioningReceiver$State;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/ProvisioningReceiver$State;-><init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/browser/ProvisioningReceiver$StateBegin;-><init>(Lcom/android/browser/ProvisioningReceiver$State;)V

    return-void
.end method


# virtual methods
.method eventStart()Z
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/browser/ProvisioningReceiver$StateBegin;->mContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;

    new-instance v1, Lcom/android/browser/ProvisioningReceiver$StateStart;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/ProvisioningReceiver$StateStart;-><init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V

    invoke-static {v0, v1}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$600(Lcom/android/browser/ProvisioningReceiver$ParseContext;Lcom/android/browser/ProvisioningReceiver$State;)V

    .line 214
    const/4 v0, 0x1

    return v0
.end method
