.class Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;
.super Landroid/telephony/PhoneStateListener;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->getPhoneStateListener(J)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->access$200(Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->access$300(Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;)V

    .line 285
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 279
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->updateServiceState()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->access$100(Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;)V

    .line 280
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    iput-object p1, v0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 274
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus$2;->this$0:Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/msim/MSimSubscriptionStatus;->updateSignalStrength()V

    .line 275
    return-void
.end method
