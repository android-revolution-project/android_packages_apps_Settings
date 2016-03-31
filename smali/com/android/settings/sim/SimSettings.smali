.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mNumSlots:I

.field private static mSimEnablers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/sim/MultiSimEnablerPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCalls:Landroid/telephony/SubInfoRecord;

.field private mCellularData:Landroid/telephony/SubInfoRecord;

.field private mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mDisableAltAlwaysSmsCallSimPref:Z

.field private mHandler:Landroid/os/Handler;

.field private mNumSims:I

.field private mPrimarySubSelect:Landroid/preference/Preference;

.field private mSMS:Landroid/telephony/SubInfoRecord;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 522
    new-instance v0, Lcom/android/settings/sim/SimSettings$5;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 79
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 80
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 81
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 85
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCellularData:Landroid/telephony/SubInfoRecord;

    .line 86
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCalls:Landroid/telephony/SubInfoRecord;

    .line 87
    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSMS:Landroid/telephony/SubInfoRecord;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->mDisableAltAlwaysSmsCallSimPref:Z

    .line 130
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 539
    new-instance v0, Lcom/android/settings/sim/SimSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$6;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/sim/SimSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/settings/sim/SimSettings;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/sim/SimSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/sim/SimSettings;I)Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/sim/SimSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->isMobileDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private addDataPreferences()V
    .locals 4

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isDSDA()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateDSDAPreferences()V

    .line 210
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v3, "sim_data_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 194
    .local v0, "category":Landroid/preference/PreferenceCategory;
    new-instance v2, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/notification/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 195
    .local v2, "preference":Lcom/android/settings/notification/DropDownPreference;
    const-string v3, "sim_cellular_data"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/DropDownPreference;->setKey(Ljava/lang/String;)V

    .line 196
    const v3, 0x7f09045e

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/DropDownPreference;->setTitle(I)V

    .line 197
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    const-string v3, "sim_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 200
    .local v1, "dataToggle":Landroid/preference/SwitchPreference;
    const-string v3, "sim_cellular_data"

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 201
    new-instance v3, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/sim/SimSettings$3;-><init>(Lcom/android/settings/sim/SimSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private createPreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 232
    const v4, 0x7f06004b

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 234
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->addDataPreferences()V

    .line 236
    const-string v4, "select_primary_sub"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    .line 237
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 240
    .local v2, "simEnablers":Landroid/preference/PreferenceCategory;
    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 241
    new-instance v4, Ljava/util/ArrayList;

    sget v5, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v4, :cond_3

    .line 243
    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    .line 244
    .local v3, "sir":Landroid/telephony/SubInfoRecord;
    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-le v4, v6, :cond_2

    if-eqz v3, :cond_2

    .line 245
    new-instance v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v3, v5, v0}, Lcom/android/settings/sim/MultiSimEnablerPreference;-><init>(Landroid/content/Context;Landroid/telephony/SubInfoRecord;Landroid/os/Handler;I)V

    .line 247
    .local v1, "multiSimEnablerPreference":Lcom/android/settings/sim/MultiSimEnablerPreference;
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    iget-boolean v4, p0, Lcom/android/settings/sim/SimSettings;->mDisableAltAlwaysSmsCallSimPref:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {v1, v6}, Lcom/android/settings/sim/MultiSimEnablerPreference;->setExplicitlyDisabled(Z)V

    .line 256
    .end local v1    # "multiSimEnablerPreference":Lcom/android/settings/sim/MultiSimEnablerPreference;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/telephony/SubInfoRecord;->mStatus:I

    if-ne v4, v6, :cond_1

    .line 257
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    .line 258
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_2
    const-string v4, "sim_enablers"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    .end local v3    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_3
    return-void
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 302
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 306
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 307
    .local v2, "sir":Landroid/telephony/SubInfoRecord;
    iget v3, v2, Landroid/telephony/SubInfoRecord;->slotId:I

    if-ne v3, p1, :cond_0

    .line 314
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :goto_1
    return-object v2

    .line 305
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findRecordBySubId(J)Landroid/telephony/SubInfoRecord;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 286
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 288
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 289
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubInfoRecord;

    .line 290
    .local v2, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v2, :cond_0

    iget-wide v4, v2, Landroid/telephony/SubInfoRecord;->subId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 294
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :goto_1
    return-object v2

    .line 288
    .restart local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v2    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getPreferredNetwork(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 415
    const/4 v0, -0x1

    .line 417
    .local v0, "nwMode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 421
    :goto_0
    return v0

    .line 419
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initLTEPreference()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 371
    const-string v9, "persist.radio.primarycard"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 374
    .local v1, "isPrimarySubFeatureEnable":Z
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_primary_sub_setable"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    move v3, v7

    .line 377
    .local v3, "primarySetable":Z
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPrimarySubFeatureEnable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " primarySetable :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 380
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    .line 381
    :cond_0
    const-string v7, "sim_activities"

    invoke-virtual {p0, v7}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 383
    .local v5, "simActivities":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    .end local v5    # "simActivities":Landroid/preference/PreferenceCategory;
    :goto_1
    return-void

    .end local v3    # "primarySetable":Z
    :cond_1
    move v3, v8

    .line 374
    goto :goto_0

    .line 387
    .restart local v3    # "primarySetable":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getCurrentPrimarySlot()I

    move-result v4

    .line 389
    .local v4, "primarySlot":I
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "config_lte_sub_select_mode"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    move v0, v7

    .line 392
    .local v0, "isManualMode":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init LTE primary slot : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isManualMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/sim/SimSettings;->logd(Ljava/lang/String;)V

    .line 393
    const/4 v7, -0x1

    if-eq v7, v4, :cond_5

    .line 394
    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v6

    .line 395
    .local v6, "subInfo":Landroid/telephony/SubInfoRecord;
    if-nez v6, :cond_4

    const/4 v2, 0x0

    .line 396
    .local v2, "lteSummary":Ljava/lang/CharSequence;
    :goto_3
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    .end local v2    # "lteSummary":Ljava/lang/CharSequence;
    .end local v6    # "subInfo":Landroid/telephony/SubInfoRecord;
    :goto_4
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v0    # "isManualMode":Z
    :cond_3
    move v0, v8

    .line 389
    goto :goto_2

    .line 395
    .restart local v0    # "isManualMode":Z
    .restart local v6    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_4
    iget-object v2, v6, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    goto :goto_3

    .line 398
    .end local v6    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private isDSDA()Z
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 228
    .local v0, "configuration":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isDSDA()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v2, v3, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0

    .line 221
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method private updateActivitesCategory()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isDSDA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 274
    :cond_0
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 275
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->createDropDown(Lcom/android/settings/notification/DropDownPreference;)V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 277
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 278
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 279
    return-void
.end method

.method private updateAllOptions()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "SimSettings"

    const-string v1, "updateAllOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 266
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimEnablers()V

    .line 268
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 342
    const-string v6, "sim_calls"

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 343
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isVoicePromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 345
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 346
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v0, v1, v5}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 349
    :cond_0
    iget v6, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 350
    return-void

    .line 343
    .end local v1    # "sir":Landroid/telephony/SubInfoRecord;
    .end local v2    # "subId":J
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubInfoRecord;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 349
    goto :goto_1
.end method

.method private updateCellularDataValues()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 329
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isDSDA()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateDSDAPreferences()V

    .line 339
    :goto_0
    return-void

    .line 333
    :cond_0
    const-string v4, "sim_cellular_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 334
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 335
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {v0, v1, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 338
    :cond_1
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v4, v2, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private updateDSDAPreferences()V
    .locals 6

    .prologue
    .line 160
    const-string v4, "sim_data_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 163
    .local v0, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v4, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v4, :cond_1

    .line 167
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->findRecordBySlotId(I)Landroid/telephony/SubInfoRecord;

    move-result-object v3

    .line 168
    .local v3, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/telephony/SubInfoRecord;->mStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 169
    new-instance v2, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 170
    .local v2, "preference":Landroid/preference/SwitchPreference;
    iget v4, v3, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings;->isMobileDataEnabled(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 171
    const v4, 0x7f09045e

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v4, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/preference/SwitchPreference;Landroid/telephony/SubInfoRecord;)V

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 166
    .end local v2    # "preference":Landroid/preference/SwitchPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v3    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_1
    return-void
.end method

.method private updateSimEnablers()V
    .locals 3

    .prologue
    .line 554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 555
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .line 556
    .local v1, "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->update()V

    .line 554
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    .end local v1    # "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 318
    const-string v6, "sim_sms"

    invoke-virtual {p0, v6}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    .line 319
    .local v0, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->isSMSPromptEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v2, 0x0

    .line 321
    .local v2, "subId":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/sim/SimSettings;->findRecordBySubId(J)Landroid/telephony/SubInfoRecord;

    move-result-object v1

    .line 322
    .local v1, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0, v1, v5}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 325
    :cond_0
    iget v6, p0, Lcom/android/settings/sim/SimSettings;->mNumSims:I

    if-le v6, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    .line 326
    return-void

    .line 319
    .end local v1    # "sir":Landroid/telephony/SubInfoRecord;
    .end local v2    # "subId":J
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    goto :goto_0

    .restart local v1    # "sir":Landroid/telephony/SubInfoRecord;
    .restart local v2    # "subId":J
    :cond_2
    move v4, v5

    .line 325
    goto :goto_1
.end method


# virtual methods
.method public createDropDown(Lcom/android/settings/notification/DropDownPreference;)V
    .locals 11
    .param p1, "preference"    # Lcom/android/settings/notification/DropDownPreference;

    .prologue
    const/4 v9, 0x1

    .line 436
    move-object v5, p1

    .line 437
    .local v5, "simPref":Lcom/android/settings/notification/DropDownPreference;
    invoke-virtual {v5}, Lcom/android/settings/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "keyPref":Ljava/lang/String;
    const/4 v4, 0x0

    .line 439
    .local v4, "mActCount":I
    const-string v10, "sim_calls"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "sim_sms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move v0, v9

    .line 441
    .local v0, "askFirst":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->isAdded()Z

    move-result v10

    if-nez v10, :cond_2

    .line 442
    const-string v9, "SimSettings"

    const-string v10, "Fragment not yet attached to Activity, EXIT!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_1
    return-void

    .line 439
    .end local v0    # "askFirst":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 445
    .restart local v0    # "askFirst":Z
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/notification/DropDownPreference;->clearItems()V

    .line 448
    iget-object v10, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubInfoRecord;

    .line 449
    .local v8, "subInfo":Landroid/telephony/SubInfoRecord;
    if-eqz v8, :cond_3

    iget v10, v8, Landroid/telephony/SubInfoRecord;->mStatus:I

    if-ne v10, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 452
    .end local v8    # "subInfo":Landroid/telephony/SubInfoRecord;
    :cond_4
    if-eqz v0, :cond_5

    if-le v4, v9, :cond_5

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090c24

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    :cond_5
    iget-object v9, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 458
    .local v7, "subAvailableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v7, :cond_9

    .line 459
    iget-object v9, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubInfoRecord;

    .line 460
    .local v6, "sir":Landroid/telephony/SubInfoRecord;
    if-eqz v6, :cond_7

    .line 461
    if-lez v1, :cond_8

    const-string v9, "sim_calls"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "sim_sms"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_6
    iget-boolean v9, p0, Lcom/android/settings/sim/SimSettings;->mDisableAltAlwaysSmsCallSimPref:Z

    if-eqz v9, :cond_8

    .line 458
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 465
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v6}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 469
    .end local v6    # "sir":Landroid/telephony/SubInfoRecord;
    :cond_9
    new-instance v9, Lcom/android/settings/sim/SimSettings$4;

    invoke-direct {v9, p0, v5}, Lcom/android/settings/sim/SimSettings$4;-><init>(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/notification/DropDownPreference;)V

    invoke-virtual {v5, v9}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    goto/16 :goto_1
.end method

.method public getCurrentPrimarySlot()I
    .locals 3

    .prologue
    .line 404
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_2

    .line 405
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPreferredNetwork(I)I

    move-result v0

    .line 406
    .local v0, "current":I
    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 411
    .end local v0    # "current":I
    .end local v1    # "index":I
    :cond_0
    :goto_1
    return v1

    .line 404
    .restart local v0    # "current":I
    .restart local v1    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "current":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v1, "SimSettings"

    const-string v2, "on onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 105
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 106
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    sput v1, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->mDisableAltAlwaysSmsCallSimPref:Z

    .line 114
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->createPreferences()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 126
    const-string v0, "SimSettings"

    const-string v1, "on onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mDdsSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 354
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 355
    const-string v2, "SimSettings"

    const-string v3, "on Pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 357
    sget-object v2, Lcom/android/settings/sim/SimSettings;->mSimEnablers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .line 358
    .local v1, "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/sim/MultiSimEnablerPreference;->cleanUp()V

    .line 356
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "simEnabler":Lcom/android/settings/sim/MultiSimEnablerPreference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 427
    instance-of v0, p2, Lcom/android/settings/sim/MultiSimEnablerPreference;

    if-eqz v0, :cond_1

    .line 428
    check-cast p2, Lcom/android/settings/sim/MultiSimEnablerPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Lcom/android/settings/sim/MultiSimEnablerPreference;->createEditDialog()V

    .line 432
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 429
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPrimarySubSelect:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 365
    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on Resume, number of slots = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initLTEPreference()V

    .line 367
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    .line 368
    return-void
.end method
