.class Lcom/android/systemui/statusbar/SignalText$1;
.super Landroid/telephony/PhoneStateListener;
.source "SignalText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalText;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalText$1;->this$0:Lcom/android/systemui/statusbar/SignalText;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalText$1;->this$0:Lcom/android/systemui/statusbar/SignalText;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/SignalText;->access$102(Lcom/android/systemui/statusbar/SignalText;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalText$1;->this$0:Lcom/android/systemui/statusbar/SignalText;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalText;->access$100(Lcom/android/systemui/statusbar/SignalText;)Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalText$1;->this$0:Lcom/android/systemui/statusbar/SignalText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalText$1;->this$0:Lcom/android/systemui/statusbar/SignalText;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalText;->access$100(Lcom/android/systemui/statusbar/SignalText;)Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalText$1;->this$0:Lcom/android/systemui/statusbar/SignalText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalText$1;->this$0:Lcom/android/systemui/statusbar/SignalText;

    iget v1, v1, Lcom/android/systemui/statusbar/SignalText;->ASU:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    iput v1, v0, Lcom/android/systemui/statusbar/SignalText;->dBm:I

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalText$1;->this$0:Lcom/android/systemui/statusbar/SignalText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SignalText;->updateSettings()V

    .line 208
    return-void
.end method
