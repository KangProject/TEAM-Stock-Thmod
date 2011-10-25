.class public Lcom/android/browser/ProvisioningReceiver$ParseContext;
.super Ljava/lang/Object;
.source "ProvisioningReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ProvisioningReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseContext"
.end annotation


# instance fields
.field private mHomepage:Ljava/lang/String;

.field private mObjState:Lcom/android/browser/ProvisioningReceiver$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/ProvisioningReceiver$ParseContext;->mHomepage:Ljava/lang/String;

    .line 149
    invoke-static {p0}, Lcom/android/browser/ProvisioningReceiver$State;->initialState(Lcom/android/browser/ProvisioningReceiver$ParseContext;)Lcom/android/browser/ProvisioningReceiver$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ProvisioningReceiver$ParseContext;->mObjState:Lcom/android/browser/ProvisioningReceiver$State;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ProvisioningReceiver$ParseContext;)Lcom/android/browser/ProvisioningReceiver$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->getState()Lcom/android/browser/ProvisioningReceiver$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ProvisioningReceiver$ParseContext;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->setUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/ProvisioningReceiver$ParseContext;Lcom/android/browser/ProvisioningReceiver$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->setState(Lcom/android/browser/ProvisioningReceiver$State;)V

    return-void
.end method

.method private getState()Lcom/android/browser/ProvisioningReceiver$State;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/browser/ProvisioningReceiver$ParseContext;->mObjState:Lcom/android/browser/ProvisioningReceiver$State;

    return-object v0
.end method

.method private setState(Lcom/android/browser/ProvisioningReceiver$State;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/browser/ProvisioningReceiver$ParseContext;->mObjState:Lcom/android/browser/ProvisioningReceiver$State;

    .line 156
    return-void
.end method

.method private setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "homepage"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/browser/ProvisioningReceiver$ParseContext;->mHomepage:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/browser/ProvisioningReceiver$ParseContext;->mHomepage:Ljava/lang/String;

    return-object v0
.end method
