.class public Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;
.super Ljava/lang/Object;
.source "AppShareIntentChooser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMarketUrl:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "marketUrl"
    .parameter "type"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->mMarketUrl:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->mType:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public show()V
    .locals 5

    .prologue
    .line 37
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->mMarketUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, chooserIntent:Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 46
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/sonyericsson/home/layer/appshare/AppShareIntentChooser;->LOG_TAG:Ljava/lang/String;

    const-string v4, "No activity found to handle app sharing"

    invoke-static {v3, v4}, Lcom/sonyericsson/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
