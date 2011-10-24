.class Lcom/android/browser/ProvisioningReceiver$StateEnd;
.super Lcom/android/browser/ProvisioningReceiver$State;
.source "ProvisioningReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ProvisioningReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEnd"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/browser/ProvisioningReceiver$State;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/ProvisioningReceiver$State;-><init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V

    .line 297
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ProvisioningReceiver$State;Lcom/android/browser/ProvisioningReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/browser/ProvisioningReceiver$StateEnd;-><init>(Lcom/android/browser/ProvisioningReceiver$State;)V

    return-void
.end method


# virtual methods
.method eventEnd()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method eventStart()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method eventStartpage()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method eventURI(Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method
