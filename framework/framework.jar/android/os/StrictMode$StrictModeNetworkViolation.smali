.class Landroid/os/StrictMode$StrictModeNetworkViolation;
.super Ldalvik/system/BlockGuard$BlockGuardPolicyException;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrictModeNetworkViolation"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "policyMask"

    .prologue
    .line 554
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(II)V

    .line 555
    return-void
.end method
