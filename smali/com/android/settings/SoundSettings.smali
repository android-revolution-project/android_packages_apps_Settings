.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SoundSettings$H;,
        Lcom/android/settings/SoundSettings$SettingsObserver;,
        Lcom/android/settings/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/SoundSettings$H;

.field private mIncreasingRing:Landroid/preference/TwoStatePreference;

.field private mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

.field private final mIncreasingRingVolumeCallback:Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DefaultRingtonePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRingPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private final mSettingsObserver:Lcom/android/settings/SoundSettings$SettingsObserver;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

.field private mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    .line 511
    new-instance v0, Lcom/android/settings/SoundSettings$4;

    invoke-direct {v0}, Lcom/android/settings/SoundSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/SoundSettings;Lcom/android/settings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    .line 85
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;

    .line 93
    new-instance v0, Lcom/android/settings/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SoundSettings$H;-><init>(Lcom/android/settings/SoundSettings;Lcom/android/settings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;

    .line 94
    new-instance v0, Lcom/android/settings/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$SettingsObserver;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mSettingsObserver:Lcom/android/settings/SoundSettings$SettingsObserver;

    .line 271
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 476
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateNotificationPreferenceState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/SoundSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateRingIcon(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;)Lcom/android/settings/notification/IncreasingRingVolumePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SoundSettings;)Lcom/android/settings/SoundSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Lcom/android/settings/SoundSettings$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SoundSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/settings/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method private initIncreasingRing(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v1, 0x0

    .line 342
    const-string v0, "increasing_ring"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 344
    const-string v0, "increasing_ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/IncreasingRingVolumePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    .line 347
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolume:Lcom/android/settings/notification/IncreasingRingVolumePreference;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/IncreasingRingVolumePreference;->setCallback(Lcom/android/settings/notification/IncreasingRingVolumePreference$Callback;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 12
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 237
    const-string v6, "ringtone"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    .line 239
    .local v1, "phoneRingtonePreference":Lcom/android/settings/DefaultRingtonePreference;
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-nez v6, :cond_1

    .line 240
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    iput-object v11, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 264
    :cond_0
    :goto_0
    const-string v6, "notification_ringtone"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 265
    return-void

    .line 243
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 244
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 246
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    const-string v6, "sounds"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 249
    .local v3, "soundCategory":Landroid/preference/PreferenceCategory;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 250
    new-instance v2, Lcom/android/settings/DefaultRingtonePreference;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v11}, Lcom/android/settings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 252
    .local v2, "ringtonePreference":Lcom/android/settings/DefaultRingtonePreference;
    const v6, 0x7f090325

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/SoundSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/android/settings/DefaultRingtonePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v2, v0}, Lcom/android/settings/DefaultRingtonePreference;->setSubId(I)V

    .line 255
    invoke-virtual {v2, v9}, Lcom/android/settings/DefaultRingtonePreference;->setOrder(I)V

    .line 256
    invoke-virtual {v2, v10}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 257
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    .end local v2    # "ringtonePreference":Lcom/android/settings/DefaultRingtonePreference;
    .end local v3    # "soundCategory":Landroid/preference/PreferenceCategory;
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 366
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 367
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateVibrateWhenRinging()V

    .line 378
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/SoundSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;I)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 186
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 189
    .end local v0    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :goto_0
    return-object v0

    .line 187
    .restart local v0    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 188
    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 415
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 417
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 420
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 421
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 422
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090c71

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNotificationPreferenceState()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 396
    const-string v3, "notification_volume"

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/android/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 399
    iget-boolean v3, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volume_link_notification"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 403
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 410
    .end local v0    # "enabled":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 400
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v1, v2

    .line 404
    goto :goto_1
.end method

.method private updateRingIcon(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_0

    const v0, 0x7f020044

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 198
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    const v0, 0x7f02011e

    goto :goto_0

    :cond_1
    const v0, 0x7f02011f

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 296
    if-nez p0, :cond_1

    .line 297
    sget-object v0, Lcom/android/settings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    :goto_0
    return-object v7

    .line 301
    :cond_1
    if-ne p1, v0, :cond_2

    if-gtz p2, :cond_3

    .line 302
    :cond_2
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 306
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_1
    const v0, 0x104057c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    .line 309
    const v0, 0x104057a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 304
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_1

    .line 311
    .restart local v7    # "summary":Ljava/lang/CharSequence;
    :cond_4
    const/4 v6, 0x0

    .line 313
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 322
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 323
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 331
    :cond_6
    if-eqz v6, :cond_0

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 317
    :cond_7
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 326
    :catch_0
    move-exception v0

    .line 331
    if-eqz v6, :cond_0

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    .line 331
    if-eqz v6, :cond_0

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    .line 115
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 116
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    .line 118
    const v6, 0x7f06004c

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 122
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v6, "volumes"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 123
    .local v5, "volumes":Landroid/preference/PreferenceCategory;
    const-string v6, "sounds"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 124
    .local v3, "sounds":Landroid/preference/PreferenceCategory;
    const-string v6, "vibrate"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 125
    .local v4, "vibrate":Landroid/preference/PreferenceCategory;
    const-string v6, "media_volume"

    const/4 v7, 0x3

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 126
    const-string v6, "alarm_volume"

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 128
    iget-boolean v6, p0, Lcom/android/settings/SoundSettings;->mVoiceCapable:Z

    if-eqz v6, :cond_3

    .line 129
    const-string v6, "ring_volume"

    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SoundSettings;->initVolumePreference(Ljava/lang/String;I)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mRingPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 131
    const-string v6, "volume_link_notification"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "vibrator"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 139
    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_1

    .line 140
    :cond_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 141
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_1
    const-string v6, "cmhw"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/CmHardwareManager;

    .line 146
    .local v0, "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    const/16 v6, 0x400

    invoke-virtual {v0, v6}, Landroid/hardware/CmHardwareManager;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 147
    const-string v6, "vibration_intensity"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 148
    .local v2, "preference":Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 154
    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->initIncreasingRing(Landroid/preference/PreferenceCategory;)V

    .line 155
    invoke-direct {p0, v4}, Lcom/android/settings/SoundSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 157
    const-string v6, "manage_notification_access"

    invoke-virtual {p0, v6}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 158
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->refreshNotificationListeners()V

    .line 159
    return-void

    .line 134
    .end local v0    # "cmHardwareManager":Landroid/hardware/CmHardwareManager;
    :cond_3
    const-string v6, "ring_volume"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    const-string v6, "volume_link_notification"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mVolumeCallback:Lcom/android/settings/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 174
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSettingsObserver:Lcom/android/settings/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings$SettingsObserver;->register(Z)V

    .line 175
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->refreshNotificationListeners()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateNotificationPreferenceState()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mSettingsObserver:Lcom/android/settings/SoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings$SettingsObserver;->register(Z)V

    .line 168
    return-void
.end method
