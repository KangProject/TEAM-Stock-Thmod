.class public final Landroid/os/StrictMode$ThreadPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$ThreadPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 242
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 249
    iget v0, p1, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 250
    return-void
.end method

.method private disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 2
    .parameter "bit"

    .prologue
    .line 351
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 352
    return-object p0
.end method

.method private enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1
    .parameter "bit"

    .prologue
    .line 346
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 347
    return-object p0
.end method


# virtual methods
.method public build()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    .prologue
    .line 365
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 370
    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    iget v1, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDialog()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 316
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 342
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method
