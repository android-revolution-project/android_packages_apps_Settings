.class final Lcom/android/settings/SoundSettings$H;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 1

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/settings/SoundSettings$H;->this$0:Lcom/android/settings/SoundSettings;

    .line 483
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 484
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SoundSettings;Lcom/android/settings/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SoundSettings;
    .param p2, "x1"    # Lcom/android/settings/SoundSettings$1;

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings$H;-><init>(Lcom/android/settings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 488
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 490
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 491
    .local v2, "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/settings/SoundSettings$H;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$500(Lcom/android/settings/SoundSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 493
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 497
    .end local v0    # "i":I
    .end local v1    # "preference":Landroid/preference/Preference;
    .end local v2    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/SoundSettings$H;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$800(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 500
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/SoundSettings$H;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 503
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/SoundSettings$H;->this$0:Lcom/android/settings/SoundSettings;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings/SoundSettings;->updateRingIcon(I)V
    invoke-static {v3, v4}, Lcom/android/settings/SoundSettings;->access$1100(Lcom/android/settings/SoundSettings;I)V

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
