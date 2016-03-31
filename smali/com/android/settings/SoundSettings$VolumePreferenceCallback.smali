.class final Lcom/android/settings/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SoundSettings;Lcom/android/settings/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SoundSettings;
    .param p2, "x1"    # Lcom/android/settings/SoundSettings$1;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 205
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Lcom/android/settings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$300(Lcom/android/settings/SoundSettings;)Lcom/android/settings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/IncreasingRingVolumePreference;->stopSample()V

    .line 211
    :cond_1
    iput-object p1, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 212
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings$H;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 216
    :cond_2
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    const/4 v2, 0x4

    .line 220
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/SoundSettings$H;->removeMessages(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/settings/SoundSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    :cond_0
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 230
    :cond_0
    return-void
.end method
