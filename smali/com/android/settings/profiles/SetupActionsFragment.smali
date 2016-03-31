.class public Lcom/android/settings/profiles/SetupActionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final EXPANDED_DESKTOP_MAPPING:[I

.field private static final LOCKMODE_MAPPING:[I


# instance fields
.field mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/profiles/actions/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mNewProfileMode:Z

.field mProfile:Landroid/app/Profile;

.field mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/profiles/SetupActionsFragment;->EXPANDED_DESKTOP_MAPPING:[I

    return-void

    .line 115
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 118
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/profiles/SetupActionsFragment;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/profiles/SetupActionsFragment;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->updateProfile()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/profiles/SetupActionsFragment;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->rebuildItemList()V

    return-void
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private fillProfileFromCurrentSettings()V
    .locals 4

    .prologue
    .line 352
    new-instance v0, Lcom/android/settings/profiles/SetupActionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/profiles/SetupActionsFragment$2;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/Profile;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/profiles/SetupActionsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 462
    return-void
.end method

.method private generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, p1}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v0

    .line 288
    .local v0, "settings":Landroid/app/ConnectionSettings;
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Landroid/app/ConnectionSettings;

    .end local v0    # "settings":Landroid/app/ConnectionSettings;
    invoke-direct {v0, p1}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 290
    .restart local v0    # "settings":Landroid/app/ConnectionSettings;
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v0}, Landroid/app/Profile;->setConnectionSettings(Landroid/app/ConnectionSettings;)V

    .line 292
    :cond_0
    new-instance v1, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILandroid/app/ConnectionSettings;)V

    return-object v1
.end method

.method private generateTriggerItem(I)Lcom/android/settings/profiles/actions/item/TriggerItem;
    .locals 2
    .param p1, "whichTrigger"    # I

    .prologue
    .line 305
    new-instance v0, Lcom/android/settings/profiles/actions/item/TriggerItem;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/profiles/actions/item/TriggerItem;-><init>(Landroid/app/Profile;I)V

    return-object v0
.end method

.method private generateVolumeStreamItem(I)Lcom/android/settings/profiles/actions/item/VolumeStreamItem;
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, p1}, Landroid/app/Profile;->getSettingsForStream(I)Landroid/app/StreamSettings;

    move-result-object v0

    .line 297
    .local v0, "settings":Landroid/app/StreamSettings;
    if-nez v0, :cond_0

    .line 298
    new-instance v0, Landroid/app/StreamSettings;

    .end local v0    # "settings":Landroid/app/StreamSettings;
    invoke-direct {v0, p1}, Landroid/app/StreamSettings;-><init>(I)V

    .line 299
    .restart local v0    # "settings":Landroid/app/StreamSettings;
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1, v0}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 301
    :cond_0
    new-instance v1, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;-><init>(ILandroid/app/StreamSettings;)V

    return-object v1
.end method

.method private openTriggersFragment(I)V
    .locals 7
    .param p1, "openTo"    # I

    .prologue
    .line 970
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 971
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "Profile"

    iget-object v3, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 972
    const-string v1, "new_profile_mode"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 973
    const-string v1, "current_item"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 975
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SubSettings;

    .line 976
    .local v0, "pa":Lcom/android/settings/SubSettings;
    const-class v1, Lcom/android/settings/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090039

    const/4 v4, 0x0

    const/16 v6, 0x3e9

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 978
    return-void
.end method

.method private rebuildItemList()V
    .locals 12

    .prologue
    .line 159
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 161
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/Header;

    const v9, 0x7f090029

    invoke-virtual {p0, v9}, Lcom/android/settings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/ProfileNameItem;

    iget-object v9, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/ProfileNameItem;-><init>(Landroid/app/Profile;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-boolean v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v7, :cond_1

    .line 166
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/Header;

    const v9, 0x7f0901d3

    invoke-virtual {p0, v9}, Lcom/android/settings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/android/settings/profiles/actions/item/TriggerItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Lcom/android/settings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/android/settings/profiles/actions/item/TriggerItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/android/settings/profiles/actions/item/TriggerItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_1
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/Header;

    const v9, 0x7f09045c

    invoke-virtual {p0, v9}, Lcom/android/settings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/android/settings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 179
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Landroid/app/Profile;->getSettingsForConnection(I)Landroid/app/ConnectionSettings;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILandroid/app/ConnectionSettings;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/cyanogenmod/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 186
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 191
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 192
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v8, 0x9

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 199
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_5
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/Header;

    const v9, 0x7f090035

    invoke-virtual {p0, v9}, Lcom/android/settings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/settings/profiles/actions/item/VolumeStreamItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/settings/profiles/actions/item/VolumeStreamItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/settings/profiles/actions/item/VolumeStreamItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v8, 0x5

    invoke-direct {p0, v8}, Lcom/android/settings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/settings/profiles/actions/item/VolumeStreamItem;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/Header;

    const v9, 0x7f090040

    invoke-virtual {p0, v9}, Lcom/android/settings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/RingModeItem;

    iget-object v9, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v9}, Landroid/app/Profile;->getRingMode()Landroid/app/RingModeSettings;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/RingModeItem;-><init>(Landroid/app/RingModeSettings;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;

    iget-object v9, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v9}, Landroid/app/Profile;->getAirplaneMode()Landroid/app/AirplaneModeSettings;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;-><init>(Landroid/app/AirplaneModeSettings;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/LockModeItem;

    iget-object v9, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/LockModeItem;-><init>(Landroid/app/Profile;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/BrightnessItem;

    iget-object v9, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v9}, Landroid/app/Profile;->getBrightness()Landroid/app/BrightnessSettings;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/BrightnessItem;-><init>(Landroid/app/BrightnessSettings;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 218
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/Header;

    const v9, 0x7f090023

    invoke-virtual {p0, v9}, Lcom/android/settings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/settings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "groupsAdded":I
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v5

    .line 222
    .local v5, "profileGroups":[Landroid/app/ProfileGroup;
    if-eqz v5, :cond_8

    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_8

    .line 223
    move-object v0, v5

    .local v0, "arr$":[Landroid/app/ProfileGroup;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 226
    .local v4, "profileGroup":Landroid/app/ProfileGroup;
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v4}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v7}, Landroid/app/Profile;->getDefaultGroup()Landroid/app/ProfileGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 229
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/AppGroupItem;

    iget-object v9, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-direct {v8, v9, v4}, Lcom/android/settings/profiles/actions/item/AppGroupItem;-><init>(Landroid/app/Profile;Landroid/app/ProfileGroup;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 223
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v4    # "profileGroup":Landroid/app/ProfileGroup;
    :cond_7
    if-lez v1, :cond_8

    .line 235
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/AppGroupItem;

    iget-object v9, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    iget-object v10, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v10}, Landroid/app/Profile;->getDefaultGroup()Landroid/app/ProfileGroup;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/settings/profiles/actions/item/AppGroupItem;-><init>(Landroid/app/Profile;Landroid/app/ProfileGroup;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v0    # "arr$":[Landroid/app/ProfileGroup;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_8
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v7}, Landroid/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_a

    .line 240
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v8, Lcom/android/settings/profiles/actions/item/AppGroupItem;

    invoke-direct {v8}, Lcom/android/settings/profiles/actions/item/AppGroupItem;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v1    # "groupsAdded":I
    .end local v5    # "profileGroups":[Landroid/app/ProfileGroup;
    :cond_9
    :goto_1
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v7}, Lcom/android/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 248
    return-void

    .line 241
    .restart local v1    # "groupsAdded":I
    .restart local v5    # "profileGroups":[Landroid/app/ProfileGroup;
    :cond_a
    if-nez v1, :cond_9

    .line 243
    iget-object v7, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v8, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v9, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private requestActiveAppGroupsDialog()V
    .locals 9

    .prologue
    .line 860
    iget-object v6, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v6}, Landroid/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v5

    .line 862
    .local v5, "notificationGroups":[Landroid/app/NotificationGroup;
    array-length v6, v5

    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 863
    .local v3, "items":[Ljava/lang/CharSequence;
    array-length v6, v5

    new-array v1, v6, [Z

    .line 865
    .local v1, "checked":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 866
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 867
    iget-object v6, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    aput-boolean v6, v1, v2

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 869
    :cond_1
    new-instance v4, Lcom/android/settings/profiles/SetupActionsFragment$19;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/profiles/SetupActionsFragment$19;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;[Landroid/app/NotificationGroup;)V

    .line 883
    .local v4, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0901da

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0901c9

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 887
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 888
    return-void
.end method

.method private requestAirplaneModeDialog(Landroid/app/AirplaneModeSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/AirplaneModeSettings;

    .prologue
    .line 523
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 528
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/AirplaneModeSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    invoke-virtual {p1}, Landroid/app/AirplaneModeSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 530
    const/4 v2, 0x2

    .line 536
    :cond_0
    :goto_0
    const v3, 0x7f090044

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 537
    new-instance v3, Lcom/android/settings/profiles/SetupActionsFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/profiles/SetupActionsFragment$6;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/AirplaneModeSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 563
    return-void

    .line 532
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/ConnectionSettings;

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "connection setting cannot be null yo"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 638
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 639
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 643
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 645
    const/4 v2, 0x2

    .line 651
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 652
    new-instance v3, Lcom/android/settings/profiles/SetupActionsFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/profiles/SetupActionsFragment$8;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 676
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 678
    return-void

    .line 647
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestFillProfileFromSettingsDialog()V
    .locals 3

    .prologue
    .line 338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 340
    const v1, 0x7f09035d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    const v1, 0x7f09035c

    new-instance v2, Lcom/android/settings/profiles/SetupActionsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/SetupActionsFragment$1;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 349
    return-void
.end method

.method private requestLockscreenModeDialog()V
    .locals 6

    .prologue
    .line 494
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0072

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "lockEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 499
    .local v1, "defaultIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/settings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 500
    sget-object v4, Lcom/android/settings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getScreenLockMode()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 501
    move v1, v2

    .line 506
    :cond_0
    const v4, 0x7f090041

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 507
    new-instance v4, Lcom/android/settings/profiles/SetupActionsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/settings/profiles/SetupActionsFragment$5;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 520
    return-void

    .line 499
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestMobileConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V
    .locals 5
    .param p1, "setting"    # Landroid/app/ConnectionSettings;

    .prologue
    .line 681
    if-nez p1, :cond_0

    .line 682
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "connection setting cannot be null yo"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 684
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 685
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x5

    .line 689
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 690
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v2

    .line 693
    :cond_1
    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 694
    new-instance v3, Lcom/android/settings/profiles/SetupActionsFragment$9;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/profiles/SetupActionsFragment$9;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 713
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 714
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 715
    return-void
.end method

.method private requestProfileName()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 807
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 808
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400c1

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 810
    .local v1, "dialogView":Landroid/view/View;
    const v4, 0x7f10002c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 811
    .local v2, "entry":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 812
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 814
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09002b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/profiles/SetupActionsFragment$16;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment$16;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 829
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/settings/profiles/SetupActionsFragment$17;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/profiles/SetupActionsFragment$17;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 848
    new-instance v4, Lcom/android/settings/profiles/SetupActionsFragment$18;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment$18;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 856
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 857
    return-void
.end method

.method private requestRemoveProfileDialog()V
    .locals 6

    .prologue
    .line 465
    iget-object v2, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v1

    .line 466
    .local v1, "current":Landroid/app/Profile;
    iget-object v2, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v2}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 469
    const v2, 0x7f090450

    new-instance v3, Lcom/android/settings/profiles/SetupActionsFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/SetupActionsFragment$3;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 491
    :goto_0
    return-void

    .line 479
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09001f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/profiles/SetupActionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 481
    const v2, 0x7f09035c

    new-instance v3, Lcom/android/settings/profiles/SetupActionsFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/SetupActionsFragment$4;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    const v2, 0x7f09035d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 490
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private requestRingModeDialog(Landroid/app/RingModeSettings;)V
    .locals 6
    .param p1, "setting"    # Landroid/app/RingModeSettings;

    .prologue
    .line 584
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 585
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 589
    .local v1, "defaultIndex":I
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 590
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 591
    const/4 v1, 0x0

    .line 601
    :cond_0
    :goto_0
    const v4, 0x7f09000d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 602
    new-instance v4, Lcom/android/settings/profiles/SetupActionsFragment$7;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/settings/profiles/SetupActionsFragment$7;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/RingModeSettings;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 630
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 632
    return-void

    .line 592
    :cond_1
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 593
    const/4 v1, 0x1

    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {p1}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    const/4 v1, 0x2

    goto :goto_0

    .line 598
    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private startProfileGroupActivity(Lcom/android/settings/profiles/actions/item/AppGroupItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/settings/profiles/actions/item/AppGroupItem;

    .prologue
    const/4 v3, 0x0

    .line 962
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 963
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "ProfileGroup"

    invoke-virtual {p1}, Lcom/android/settings/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v0, "Profile"

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 966
    const-class v0, Lcom/android/settings/profiles/ProfileGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/profiles/SetupActionsFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 967
    return-void
.end method

.method private updateProfile()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->updateProfile(Landroid/app/Profile;)V

    .line 324
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    iget-boolean v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0901d6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 576
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 577
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProfileManager;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    .line 579
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 581
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    iput-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfile:Landroid/app/Profile;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_profile_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mProfileManager:Landroid/app/ProfileManager;

    .line 148
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/actions/ItemListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/settings/profiles/actions/ItemListAdapter;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/SetupActionsFragment;->setHasOptionsMenu(Z)V

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()V

    .line 156
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 258
    iget-boolean v0, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v0, :cond_0

    .line 259
    const v0, 0x7f0901ca

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020035

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 266
    const/4 v0, 0x2

    const v1, 0x7f090021

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 893
    const v1, 0x7f040060

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 895
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    .line 896
    iget-object v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 897
    iget-boolean v1, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v1, :cond_0

    .line 898
    const v1, 0x7f1000fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/profiles/SetupActionsFragment$20;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/SetupActionsFragment$20;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    const v1, 0x7f1000ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/profiles/SetupActionsFragment$21;

    invoke-direct {v2, p0}, Lcom/android/settings/profiles/SetupActionsFragment$21;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    :goto_0
    return-object v0

    .line 916
    :cond_0
    const v1, 0x7f1000fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/profiles/actions/item/Item;

    .line 925
    .local v1, "itemAtPosition":Lcom/android/settings/profiles/actions/item/Item;
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 926
    check-cast v0, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;

    .line 927
    .local v0, "item":Lcom/android/settings/profiles/actions/item/AirplaneModeItem;
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;->getSettings()Landroid/app/AirplaneModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Landroid/app/AirplaneModeSettings;)V

    .line 959
    .end local v0    # "item":Lcom/android/settings/profiles/actions/item/AirplaneModeItem;
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/BrightnessItem;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 929
    check-cast v0, Lcom/android/settings/profiles/actions/item/BrightnessItem;

    .line 930
    .local v0, "item":Lcom/android/settings/profiles/actions/item/BrightnessItem;
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/BrightnessItem;->getSettings()Landroid/app/BrightnessSettings;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment;->requestBrightnessDialog(Landroid/app/BrightnessSettings;)V

    goto :goto_0

    .line 931
    .end local v0    # "item":Lcom/android/settings/profiles/actions/item/BrightnessItem;
    :cond_2
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/LockModeItem;

    if-eqz v2, :cond_3

    .line 932
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->requestLockscreenModeDialog()V

    goto :goto_0

    .line 933
    :cond_3
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/RingModeItem;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 934
    check-cast v0, Lcom/android/settings/profiles/actions/item/RingModeItem;

    .line 935
    .local v0, "item":Lcom/android/settings/profiles/actions/item/RingModeItem;
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/RingModeItem;->getSettings()Landroid/app/RingModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment;->requestRingModeDialog(Landroid/app/RingModeSettings;)V

    goto :goto_0

    .line 936
    .end local v0    # "item":Lcom/android/settings/profiles/actions/item/RingModeItem;
    :cond_4
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 937
    check-cast v0, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;

    .line 938
    .local v0, "item":Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;->getConnectionType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    .line 939
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Landroid/app/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment;->requestMobileConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V

    goto :goto_0

    .line 941
    :cond_5
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Landroid/app/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Landroid/app/ConnectionSettings;)V

    goto :goto_0

    .line 943
    .end local v0    # "item":Lcom/android/settings/profiles/actions/item/ConnectionOverrideItem;
    :cond_6
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;

    if-eqz v2, :cond_7

    move-object v0, v1

    .line 944
    check-cast v0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;

    .line 945
    .local v0, "item":Lcom/android/settings/profiles/actions/item/VolumeStreamItem;
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->getStreamType()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->getSettings()Landroid/app/StreamSettings;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/profiles/SetupActionsFragment;->requestVolumeDialog(ILandroid/app/StreamSettings;)V

    goto :goto_0

    .line 946
    .end local v0    # "item":Lcom/android/settings/profiles/actions/item/VolumeStreamItem;
    :cond_7
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/ProfileNameItem;

    if-eqz v2, :cond_8

    .line 947
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->requestProfileName()V

    goto :goto_0

    .line 948
    :cond_8
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/TriggerItem;

    if-eqz v2, :cond_9

    move-object v0, v1

    .line 949
    check-cast v0, Lcom/android/settings/profiles/actions/item/TriggerItem;

    .line 950
    .local v0, "item":Lcom/android/settings/profiles/actions/item/TriggerItem;
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/TriggerItem;->getTriggerType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/profiles/SetupActionsFragment;->openTriggersFragment(I)V

    goto :goto_0

    .line 951
    .end local v0    # "item":Lcom/android/settings/profiles/actions/item/TriggerItem;
    :cond_9
    instance-of v2, v1, Lcom/android/settings/profiles/actions/item/AppGroupItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 952
    check-cast v0, Lcom/android/settings/profiles/actions/item/AppGroupItem;

    .line 953
    .local v0, "item":Lcom/android/settings/profiles/actions/item/AppGroupItem;
    invoke-virtual {v0}, Lcom/android/settings/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_a

    .line 954
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->requestActiveAppGroupsDialog()V

    goto :goto_0

    .line 956
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/settings/profiles/SetupActionsFragment;->startProfileGroupActivity(Lcom/android/settings/profiles/actions/item/AppGroupItem;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 283
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 277
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->requestRemoveProfileDialog()V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 253
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 312
    iget-boolean v2, p0, Lcom/android/settings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_0

    .line 313
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v0, "desc":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 316
    .local v1, "descPadding":I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 317
    const v2, 0x7f0901ee

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 320
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "descPadding":I
    :cond_0
    return-void
.end method

.method public requestBrightnessDialog(Landroid/app/BrightnessSettings;)V
    .locals 7
    .param p1, "brightnessSettings"    # Landroid/app/BrightnessSettings;

    .prologue
    .line 763
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 764
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090045

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 767
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04004b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 768
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f100041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 769
    .local v3, "seekBar":Landroid/widget/SeekBar;
    const v5, 0x7f1000c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 770
    .local v2, "override":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Landroid/app/BrightnessSettings;->isOverride()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 771
    new-instance v5, Lcom/android/settings/profiles/SetupActionsFragment$13;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/settings/profiles/SetupActionsFragment$13;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/app/BrightnessSettings;Landroid/widget/SeekBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 782
    invoke-virtual {p1}, Landroid/app/BrightnessSettings;->isOverride()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 783
    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 784
    invoke-virtual {p1}, Landroid/app/BrightnessSettings;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 785
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 786
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/profiles/SetupActionsFragment$14;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/settings/profiles/SetupActionsFragment$14;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Landroid/app/BrightnessSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 797
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/profiles/SetupActionsFragment$15;

    invoke-direct {v6, p0}, Lcom/android/settings/profiles/SetupActionsFragment$15;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 803
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 804
    return-void
.end method

.method public requestVolumeDialog(ILandroid/app/StreamSettings;)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "streamSettings"    # Landroid/app/StreamSettings;

    .prologue
    const/4 v9, 0x0

    .line 719
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 720
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 723
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 724
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04004c

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 725
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f100041

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 726
    .local v4, "seekBar":Landroid/widget/SeekBar;
    const v7, 0x7f1000c4

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 727
    .local v3, "override":Landroid/widget/CheckBox;
    invoke-virtual {p2}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 728
    new-instance v7, Lcom/android/settings/profiles/SetupActionsFragment$10;

    invoke-direct {v7, p0, v4}, Lcom/android/settings/profiles/SetupActionsFragment$10;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 734
    invoke-virtual {p2}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 735
    new-instance v6, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, p1, v9, v9}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    .line 737
    .local v6, "volumizer":Landroid/preference/SeekBarVolumizer;
    invoke-virtual {v6, v4}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 738
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 739
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/profiles/SetupActionsFragment$11;

    invoke-direct {v8, p0, v4, p2, v3}, Lcom/android/settings/profiles/SetupActionsFragment$11;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Landroid/app/StreamSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    const/high16 v7, 0x1040000

    invoke-virtual {v1, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 751
    new-instance v7, Lcom/android/settings/profiles/SetupActionsFragment$12;

    invoke-direct {v7, p0, v6}, Lcom/android/settings/profiles/SetupActionsFragment$12;-><init>(Lcom/android/settings/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 759
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 760
    return-void
.end method
