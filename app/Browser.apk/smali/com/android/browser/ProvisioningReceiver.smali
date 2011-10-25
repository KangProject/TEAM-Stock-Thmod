.class public Lcom/android/browser/ProvisioningReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProvisioningReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ProvisioningReceiver$1;,
        Lcom/android/browser/ProvisioningReceiver$StateEnd;,
        Lcom/android/browser/ProvisioningReceiver$StateStartpageAndURI;,
        Lcom/android/browser/ProvisioningReceiver$StateStartpage;,
        Lcom/android/browser/ProvisioningReceiver$StateURI;,
        Lcom/android/browser/ProvisioningReceiver$StateStart;,
        Lcom/android/browser/ProvisioningReceiver$StateBegin;,
        Lcom/android/browser/ProvisioningReceiver$State;,
        Lcom/android/browser/ProvisioningReceiver$ParseContext;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 291
    return-void
.end method

.method public static getHomepageFromIntent(Lcom/android/browser/ProvisioningReceiver$ParseContext;Landroid/content/Intent;)Z
    .locals 7
    .parameter "c"
    .parameter "intent"

    .prologue
    const-string v6, "RESOURCE/URI="

    .line 78
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 79
    :cond_0
    const/4 v4, 0x0

    .line 118
    :goto_0
    return v4

    .line 82
    :cond_1
    const/4 v2, 0x0

    .line 84
    .local v2, returnValue:Z
    const-string v4, "com.sonyericsson.android.omacp.EXTRA_CONFIG"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, provisioningData:[Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, i:I
    const/4 v2, 0x1

    .line 93
    :goto_1
    if-eqz v2, :cond_8

    array-length v4, v1

    if-ge v0, v4, :cond_8

    .line 94
    aget-object v3, v1, v0

    .line 95
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 96
    const/4 v2, 0x0

    .line 114
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 115
    goto :goto_1

    .line 101
    :cond_3
    const-string v4, "APPID="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "APPID=w2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 102
    const/4 v2, 0x0

    goto :goto_2

    .line 103
    :cond_4
    const-string v4, "RESOURCE/START"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    invoke-static {p0}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$000(Lcom/android/browser/ProvisioningReceiver$ParseContext;)Lcom/android/browser/ProvisioningReceiver$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/ProvisioningReceiver$State;->eventStart()Z

    move-result v2

    goto :goto_2

    .line 105
    :cond_5
    const-string v4, "RESOURCE/URI="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 106
    invoke-static {p0}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$000(Lcom/android/browser/ProvisioningReceiver$ParseContext;)Lcom/android/browser/ProvisioningReceiver$State;

    move-result-object v4

    const-string v5, "RESOURCE/URI="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/ProvisioningReceiver$State;->eventURI(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    .line 107
    :cond_6
    const-string v4, "RESOURCE/STARTPAGE="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 108
    invoke-static {p0}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$000(Lcom/android/browser/ProvisioningReceiver$ParseContext;)Lcom/android/browser/ProvisioningReceiver$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/ProvisioningReceiver$State;->eventStartpage()Z

    move-result v2

    goto :goto_2

    .line 109
    :cond_7
    const-string v4, "RESOURCE/END"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    invoke-static {p0}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$000(Lcom/android/browser/ProvisioningReceiver$ParseContext;)Lcom/android/browser/ProvisioningReceiver$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/ProvisioningReceiver$State;->eventEnd()Z

    move-result v2

    goto :goto_2

    .line 118
    .end local v0           #i:I
    .end local v3           #s:Ljava/lang/String;
    :cond_8
    invoke-static {v2, p0}, Lcom/android/browser/ProvisioningReceiver;->isValid(ZLcom/android/browser/ProvisioningReceiver$ParseContext;)Z

    move-result v4

    goto :goto_0
.end method

.method private static isValid(ZLcom/android/browser/ProvisioningReceiver$ParseContext;)Z
    .locals 3
    .parameter "result"
    .parameter "c"

    .prologue
    const-string v2, ""

    .line 123
    if-nez p0, :cond_1

    .line 124
    const-string v0, ""

    invoke-static {p1, v2}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$100(Lcom/android/browser/ProvisioningReceiver$ParseContext;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return p0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :cond_2
    const-string v0, ""

    invoke-static {p1, v2}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->access$100(Lcom/android/browser/ProvisioningReceiver$ParseContext;Ljava/lang/String;)V

    .line 131
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private saveHomepage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "homepage"

    .prologue
    .line 137
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 138
    .local v0, s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v0, p1, p2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    new-instance v0, Lcom/android/browser/ProvisioningReceiver$ParseContext;

    invoke-direct {v0}, Lcom/android/browser/ProvisioningReceiver$ParseContext;-><init>()V

    .line 58
    .local v0, pContext:Lcom/android/browser/ProvisioningReceiver$ParseContext;
    invoke-static {v0, p2}, Lcom/android/browser/ProvisioningReceiver;->getHomepageFromIntent(Lcom/android/browser/ProvisioningReceiver$ParseContext;Landroid/content/Intent;)Z

    move-result v1

    .line 60
    .local v1, result:Z
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/android/browser/ProvisioningReceiver$ParseContext;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/browser/ProvisioningReceiver;->saveHomepage(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/ProvisioningReceiver;->setResultCode(I)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/browser/ProvisioningReceiver;->setResultCode(I)V

    goto :goto_0
.end method
