.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetIpForwardingDisabledErrorState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 1407
    const-string v0, "Tethering"

    const-string v1, "Error in setIpForwardingDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;->notify(I)V

    .line 1409
    return-void
.end method
