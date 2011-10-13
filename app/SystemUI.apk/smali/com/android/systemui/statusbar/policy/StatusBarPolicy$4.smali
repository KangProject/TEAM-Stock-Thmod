.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 807
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 820
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 814
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/telephony/ServiceState;)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 798
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 790
    return-void
.end method
